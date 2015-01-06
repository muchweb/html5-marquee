all: bower_components

bower_components: ./node_modules/.bin/bower
	./node_modules/.bin/bower install html5-marquee

./node_modules/.bin/bower:
	npm install bower
