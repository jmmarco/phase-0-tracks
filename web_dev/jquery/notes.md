# What I learned about jQuery

## Description
jQuery is a fast JavaScript library designed to make HTML traversal, manipulation, event handling, animation and AJAX much easier.

Since jQuery is an external library it needs to be included in the HTML so it can load before attempting to use it. A page can be manipulated once the document (web page) has loaded or is ready. jQuery can detect this for you by placing any jQuery code inside the `$(document).ready()`. Like this:
```
$( document ).ready(function() {
    console.log( "Document is ready and jQuery commands can be run immediately!" );
});
```

Spend 10 minutes looking at the jQuery documentation to figure out how to achieve the same results as using JavaScript by writing less code.

### Selecting Elements
