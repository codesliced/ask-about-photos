#PhotoOverflow
<http://ask-about-photos.herokuapp.com/>


Contributors:

- [Anna-Marie Panlilio](https://github.com/codesliced)
- [Bill Van der Laan](https://github.com/Vanderln)
- [Lukas Ingelheim](https://github.com/Ingelheim)
- [Jason Benn](https://github.com/JasonBenn)


##About

PhotoOverflow is a StackOverflow clone geared towards photographers who want to get helpful advice from other photographers. The web app was built using Ruby on Rails, CarrierWave, Amazon S3, Bootstrap, and memcache.

Started at Dev Bootcamp Chicago in June 2013 as a 3-day group project that I chose to continue working on independently. The original repo and commit history is at https://github.com/Vanderln/photo_overflow


##Development

To run this app you'll need:

Postgresql 9.2+ (it uses a number of DB specific features)
Ruby 1.9.3 


##Install

- Fork the repo and clone the files onto your local machine:

    	$ git clone https://github.com/codesliced/ask-about-photos.git

- Navigate to the application directory in terminal and run **bundle install** to gather the required gems:

    	$ bundle install

- Create an application.yml file to set your Amazon S3 and fog variables for uploading images with CarrierWave. There's a template you can copy across for the default settings:

			$ cp config/application.yml.example config/application.yml

- Create a database.yml file because this isn't checked into the repo. There's a template you can copy across for the default settings:

			$ cp config/database.yml.example config/database.yml

- You'll likely need to edit those settings for your local machine. Now you need to create and set up the database:

			$ rake db:setup.

- Launch the application server:

    	$ rails server

- Open a broswer and navigate to localhost:3000

- Enjoy


##Copyright

The photographs in the seed file are copyright Anna Marie Panlilio Photography, 2013. All rights reserved.

===

Last Updated: Summer 2013
