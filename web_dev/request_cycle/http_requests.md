## What are some common HTTP status codes?

- 200 OK (The request has succeeded)

- 401 Unauthorized (Authentication is needed to get requested response.)

- 403 Forbidden (Client does not have access rights to the content so server is rejecting to give proper response)

- 408 Request Timeout (This response is sent on an idle connection by some servers, even without any previous request by the client)

- 500 Internal Server Error (The server has encountered a situation it doesn't know how to handle)

- 504 Gateway Timeout (This error response is given when the server is acting as a gateway and cannot get a response in time)

These are the most common I could think of (at least I rememeber seeing them at some point). A complete list can be found [here](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) and [here](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status).

## What is the difference between a GET request and a POST request? When might each be used?

- The GET method is in charge of requesting something to a specified server. A GET request only retrieves data. For example an image, stylesheet or HTML document can be recieved.

- The POST method is in charge of sending (posting) data to a server. For example you use a POST request when you send a username and password to the sever.

## What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

- A cookie is a piece of data (a text file actually) that a server sent over to the web browser. The web browser can access it, and modify it (if needed) and then send it back to the server. They are typically used to keep track of a user session on a particular server. Also, cookies were used to keep track of user preferences like a language or region, for example.