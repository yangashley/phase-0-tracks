### What are some of the key design philosophies of the Linux operating system?
* Linux assumes that you (the user) knows what you're doing and will do anything you tell it to.

### In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
* A VPS is between shared web hosting and dedicated web hosting. A server is divided into chunks of memory that acts like a computer that a user can pay for. A VPS runs its own operating system so it can be customized according to what the user wants to do (like hosting your website online). 

	* Advantages of Using VPS
		* Inexpensive and relatively easy to set up
		* With shared hosting, others hosted on the server cannot see your data
		* You have control of the server as the root user so that you set up your system however you'd like (pay for only the services you need)
		* You can upgrade your VPS (like get more disc space) easily 

### Why is it considered a bad idea to run programs as the root user on a Linux system?
* The root user has privileges to modify the system without warning, meaning you can irreparably delete files or change the system. Running as root also exposes the entire system to vulnerabilities (versus just one user's profile). If your system is hacked while you're running a program as the root user then your data and control of the system is compromised.  