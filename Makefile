LIBS=css/marquee.css
SRCS=less/marquee.less

all: $(LIBS)

$(LIBS): $(SRCS) ./node_modules/.bin/lessc ./node_modules/.bin/postcss
	mkdir -p css
	./node_modules/.bin/lessc less/marquee.less css/marquee.css
	./node_modules/.bin/postcss --use autoprefixer css/marquee.css > css/marquee-prefixed.css

./node_modules/.bin/lessc ./node_modules/.bin/postcss:
	npm install
