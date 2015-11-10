SETUP = ocaml setup.ml
CONFIGUREFLAGS += --enable-tests

build: setup.data
	$(SETUP) -build $(BUILDFLAGS)

test: setup.data build
	$(SETUP) -test $(TESTFLAGS)

clean:
	$(SETUP) -clean $(CLEANFLAGS)

setup.data: setup.ml
	$(SETUP) -configure $(CONFIGUREFLAGS)

setup.ml: _oasis
	oasis setup

travis-coveralls.sh: ../travis-coveralls.sh
	cp $< $@

coverage: travis-coveralls.sh
	bash $<

.PHONY: build test clean coverage
