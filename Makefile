LIBS=lib/cli.js lib/cli.js.map
SRCS=src/cli.coffee

all: lib/cli

lib/cli: $(LIBS)
	echo '#!/usr/bin/env node' | cat - lib/cli.js > lib/cli
	chmod +x lib/cli

$(LIBS): ./node_modules/.bin/coffee $(SRCS)
	./node_modules/.bin/coffee --map --compile --output lib src

./node_modules/.bin/bower ./node_modules/.bin/lessc:
	npm install
