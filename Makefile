all: css/marquee.css css/open-sans.css css/style.css logo/logo.png

logo/logo.png: bower_components/html5-marquee
	cp bower_components/html5-marquee/logo/logo.png logo/logo.png

css/marquee.css: bower_components/html5-marquee
	mkdir -p css
	cp bower_components/html5-marquee/css/marquee.css css/marquee.css

bower_components/html5-marquee: ./node_modules/.bin/bower
	./node_modules/.bin/bower install git@github.com:muchweb/html5-marquee.git

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
	rm -f npm-debug.log
	rm -rf node_modules
	rm -rf bower_components
