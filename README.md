# Minimal Vagrant VM for NodeJS Development #

Installs:

* [NodeJS](http://nodejs.org/) via [NVM](https://github.com/creationix/nvm)
* [Nodemon](http://nodemon.io/)

Fixes:
* The typical *Error: UNKNOWN, symlink* is fixed, you don't need to execute the  ```--no-bin-links``` command.
  * **WARNING for Windows users:** You have to run *vagrant up* in a command-line as a administrator.


* You don't need to execute the ```npm install``` command with *sudo*.


* Also, you can execute npm in sudo mode. You can need this for install some npm packages with the ```--save-dev``` option.

Configuration:
* You can use other node version changing the number in the file *bootstrap.sh*, lines 36-38. *(Using 4.2 version by default)*
* If you want to add node packages, you can add its to the file *bootstrap.sh*, line 45.


## Installation ##

1. Clone the git repo.

2. Start vagrant:

  ```
$ cd nodejs-vagrant
$ vagrant up
  ```

3. Login to the VM:

	```
$ vagrant ssh
  ```

4. Start your project:
  ```
$ cd /vagrant/myproject
$ nodemon app.js
  ```
