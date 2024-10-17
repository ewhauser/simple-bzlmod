package cmd

// These files are runtime dependencies used in our Bazel rules but aren't compiled anywhere. Adding them
// here as imports ensures that they are not removed when we run "go mod tidy".
import (
	_ "aspect.build/cli/gazelle/js"
	_ "github.com/dave/jennifer"
	_ "github.com/go-delve/delve/pkg/version"
	_ "github.com/gofiber/fiber/v2"
	_ "github.com/nishanths/exhaustive"
	_ "github.com/sorcererxw/protoc-gen-go-grpc-mock/example"
	_ "github.com/sqlc-dev/sqlc"
)
