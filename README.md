# mg_framework version 0.9

### basic setup

A structured SASS framework allowing simple modification of theme settings to toggle various styles of the mg-core modules and HTML5 elements. This repository automatically pulls in the latest version of mg-core (https://github.com/m4tuna/mg-core).
  
`git clone git@github.com:m4tuna/mg_framework.git`


Use scss/app.scss to compile your project settings with mg-core, you can add or remove the various modules depending on what you need for the current project. 

## mg-theme

mg-theme is where you will find the primary project-level configuration for the mg_framework.

### config

Within mg-theme you will find the config folder. This is where you can define options for `animations` `colors` `dimensions` `fonts` `images` `settings` and `var`. More granular documentation to describe these files is in progress.

### custom

The mg-theme/custom folder is where you can add custom modules. Be sure to include them in your main `app.scss` before compiling.

### responsive

The mg-theme/responsive folder contains media queries for `mobile` `tablet` `desktop` and `ie`. These breakpoints are defined in the `var` file in config.

## mg-music

mg-music is a collection of modules for use with various music clients. Includes modules like buy buttons, tour date widget styling and media wall styles.

## mg-ionic

mg-ionic is a collection of modules for use with ionic to build mobile applications. For more on ionic: https://github.com/driftyco/ionic

## mg-core

Documentation in progress for the following: 

### mixins
### animations

### classes

**class**

**description**

**example usage**


**hide-[device]**

hide on this device, show everywhere else.
ex:

`<div class="hide-desktop">Shows on mobile and tablet only.</div>`

**only-[device]**

show only on this device. hide everywhere else.
ex:

`<div class="only-desktop">Shows only on desktop.</div>`


Devices include mobile, tablet, desktop. Also, add -inline if the element needs to have display: inline-block; where it is showed, otherwise it’s given display:block;
### helper classes

**class**

**description**

**example usage**


**%clearfix**

Extends the micro clearfix hack. http://nicolasgallagher.com/micro-clearfix-hack/

ex:

```
.my-class {
  @extend %clearfix;
}
```


**%center**
**%left**
**%right**


Extends text align and float directions.

ex:

```
.my-class {
  @extend %left;
  @extend %float-right;
}
```


**%list-inline**
**%list-block**
**%list-reset**

Extends list reset, inline and block to lists inside of the given element.

```
.my-class {
  @extend %list-inline;
  @extend %list-reset;
}
```


**%reset**

Extends simple reset, applying 0 margin and padding to the given element.

```
.my-class {
  @extend %reset;
}
```

**%font-smoothing**

Extends font smoothing settings for iPhones. This is by default applied to the body in mg_core.

```
.my-class {
  @extend %font-smoothing;
}
```

