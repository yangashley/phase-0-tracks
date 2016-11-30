### What are some common HTTP status codes?
* There are five different classes of HTTP status codes
	* Codes that start with 1 represent informational messages
	* Codes that start with 2 represent successful response to request
	* Codes that start with 3 represent redirection
		* Example: 301 means the resource has been permanently moved
	* Codes that start with 4 represent client error 
		* Example: 404 means the resource requested is not found
	* Codes that start with 5 represent server error
		* Example: 503 means the web server isn't available

### What is the difference between a GET request and a POST request? When might each be used?
* GET and POST requests are used to submit a form from your browser to the server. With a GET request, form parameters are attached to the end of the URL. With a POST request the form parameters are passed in the body of the request. GET requests are idempotent, meaning the method can be called many times without different outcomes.
* You might use a GET for a search request to retrieve the same information over and over again. A POST request might be used when dealing with sensitive data (you wouldn't want passwords to be displayed in a URL) or when something will change over time (shopping cart for a store).

### What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
* Cookies are small files that contain information that a server sends to our computer in the HTTP response from a server and tells our computer to save the information for future use. Cookies are passed in HTTP headers (response or request).