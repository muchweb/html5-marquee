all: bower_components

bower_components: ./node_modules/.bin/bower
	./node_modules/.bin/bower install git@github.com:muchweb/html5-marquee.git

./node_modules/.bin/bower:
	npm install bower
