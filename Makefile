LIBS=css/marquee.css
SRCS=less/marquee.less

all: $(LIBS)

$(LIBS): $(SRCS) ./node_modules/.bin/lessc
	mkdir -p css
	./node_modules/.bin/lessc less/marquee.less css/marquee.css

./node_modules/.bin/lessc:
	npm install
