LIBS=css/marquee.css
SRCS=less/marquee.less

all: $(LIBS)

$(LIBS): $(SRCS) ./node_modules/.bin/lessc ./node_modules/.bin/autoprefixer
	mkdir -p css
	./node_modules/.bin/lessc less/marquee.less css/marquee.css
	./node_modules/.bin/autoprefixer css/marquee.css

./node_modules/.bin/lessc ./node_modules/.bin/autoprefixer:
	npm install
