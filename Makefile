hello:
	CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' -o build/hello entry/hello.go