all: marquee.css

marquee.css: bower_components/html5-marquee/css/marquee.css
	cp bower_components/html5-marquee/css/marquee.css marquee.css

bower_components/html5-marquee/css/marquee.css: ./node_modules/.bin/bower
	./node_modules/.bin/bower install git@github.com:muchweb/html5-marquee.git

./node_modules/.bin/bower:
	npm install bower

clean:
	rm -r node_modules bower_components/html5-marquee/css/marquee.css
