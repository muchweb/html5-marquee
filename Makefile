all: marquee.css open-sans.css

logo.png: bower_components/html5-marquee/logo.png
	cp bower_components/html5-marquee/logo.png logo.png

marquee.css: ./node_modules/.bin/bower
	./node_modules/.bin/bower install git@github.com:muchweb/html5-marquee.git
	cp bower_components/html5-marquee/css/marquee.css marquee.css

open-sans.css: ./node_modules/.bin/bower
	./node_modules/.bin/bower install open-sans
	cp bower_components/open-sans/css/open-sans.css .
	cp -r bower_components/open-sans/fonts .

./node_modules/.bin/bower:
	npm install bower

clean:
	rm -r node_modules bower_components
