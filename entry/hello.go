package main

import (
	"context"

	"github.com/tencentyun/scf-go-lib/cloudfunction"
)

type DefineEvent struct {
}

func hello(ctx context.Context, event DefineEvent) (string, error) {
	return "Hello 8877!", nil
}

func main() {
	// Make the handler available for Remote Procedure Call by Cloud Function
	cloudfunction.Start(hello)
}
