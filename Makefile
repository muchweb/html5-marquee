all: css/marquee.css css/open-sans.css css/style.css

logo.png: bower_components/html5-marquee/logo.png
	cp bower_components/html5-marquee/logo.png logo.png

css/marquee.css: ./node_modules/.bin/bower
	mkdir -p css
	./node_modules/.bin/bower install git@github.com:muchweb/html5-marquee.git
	cp bower_components/html5-marquee/css/marquee.css css/marquee.css

css/open-sans.css: ./node_modules/.bin/bower
	mkdir -p css
	./node_modules/.bin/bower install open-sans
	cp bower_components/open-sans/css/open-sans.css css
	cp -r bower_components/open-sans/fonts .

css/style.css: ./node_modules/.bin/lessc
	./node_modules/.bin/lessc less/style.less > css/style.css

./node_modules/.bin/bower ./node_modules/.bin/lessc:
	npm install bower less

clean:
	rm -r node_modules bower_components
