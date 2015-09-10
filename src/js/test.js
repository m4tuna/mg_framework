function exampleClass(){
    this.property1 = 5;
    this.property2 = "World";
    this.method1 = function method1(arg1){
	return arg1+" "+this.property2;
    }
}

var instance1 = new exampleClass();
var instance2 = new exampleClass();

alert(instance1.method1("Hello"));

instance1.property1 = 10;

alert(instance1.property1);
alert(instance2.property1);
