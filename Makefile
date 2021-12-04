.PHONY: clean upload

FUNC = helloworld-1638496454240

build/hello: entry/hello.go
	CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' -o $@ $<

build/main: build/hello
	cp $< $@

build/hello.zip: build/main
	zip -j $@ $<

build/hello64: build/hello.zip
	base64 $< > $@

upload: build/hello64
	tccli scf UpdateFunctionCode --FunctionName ${FUNC} --ZipFile $<

clean:
	rm build/*