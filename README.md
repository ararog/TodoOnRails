todo
====

A basic todo application built on top of rails 3

This application uses basic auth, in other to get 
it running properly you must first create the database
like below:

cd \path\to\todo
rake db:migrate

Now you must need create the users:

ruby script/rails runner 'User.create(:username => "master", :password => "123456")'

And now you can start the server:

rails server

That's all! You can now go to http://localhost:3000 and start creating your tasks!


Enjoy!
