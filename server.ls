require! {
  express
  'express-session': session
  # mongoose
  # 'connect-mongo': connectMongo
  'body-parser': bodyParser
  'cookie-parser': cookieParser
  passport
  morgan
  errorhandler: errorHandler
  'serve-static': serveStatic
  'basic-auth': basicAuth
  'async'
  cfenv
  nconf
  cson: CSON
}


h = require('http')

h.ServerResponse.prototype.ok = (data) ->
  @json data

h.ServerResponse.prototype.error = (status, message, meta) ->
  @status(status).json {message, meta}

nconf
  .env!
  .argv!

if process.env.NODE_ENV == 'production'
  development = false
  nconf.file do
    file: './production.cson'
    format:
      parse: (str) -> CSON.parse(str)
      stringify: CSON.stringify
else
  development = true
  nconf.file do
    file: './development.cson'
    format:
      parse: (str) -> CSON.parse(str)
      stringify: CSON.stringify
# connect to mongodb
# mongoose.connect nconf.get('MONGO_URI')
app = express!
# MongoStore = connectMongo session

port = null
host = null

if development
  app
    ..use morgan('dev')
    ..use errorHandler!
  port = 3000
  host = 'localhost'
else
  port = nconf.get('PORT')


app
  ..set 'view engine', 'ejs'
  ..use serveStatic 'public'
  ..use '/dist', serveStatic 'dist', index: false
  # ..use cookieParser!
  # ..use bodyParser.urlencoded extended: true
  # ..use bodyParser.json!
  # ..use session do
  #   resave: true
  #   saveUninitialized: true
  #   secret: 'SOME SECRET'
  #   store: new MongoStore mongooseConnection: mongoose.connection

  server = ..listen port, !->
    server.address()
      host = ..address
      port = ..port
    console.log "Server listening at http://%s:%s", if host=='0.0.0.0' then 'localhost' else host, port
