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

To select HTML elements, we simply include the `$('target_element') to select an element.
For example to select all the `<div>` in an HTML document we would write: `$('div')`, if we would want to target a class we would have to use the `.` and the class name: `$('.class_name'), and for ID's we use the `#`: $('#target_id')

### Adding methods to selected elements

jQuery allows us to attach actions or methods to our selection by adding a period right next to the selected element. Like this:
```
$('p').append('some extra text to append')
```

We could also add event listeners to perform certain actions. Like do something with a particular element is clicked. Like this:
```
$(document).ready(function() {
  $("p").click(function(event) {
  alert("Thanks for visiting!");
  });
});
```