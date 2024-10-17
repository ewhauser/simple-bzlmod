package language

import (
	"github.com/bazelbuild/bazel-gazelle/language"
	"github.com/stackb/rules_proto/pkg/language/protobuf"

	_ "github.com/stackb/rules_proto/pkg/plugin/builtin"
	_ "github.com/stackb/rules_proto/pkg/plugin/gogo/protobuf"
	_ "github.com/stackb/rules_proto/pkg/plugin/golang/protobuf"
	_ "github.com/stackb/rules_proto/pkg/plugin/grpc/grpc"
	_ "github.com/stackb/rules_proto/pkg/plugin/grpc/grpcgo"
	_ "github.com/stackb/rules_proto/pkg/plugin/grpc/grpcjava"
	_ "github.com/stackb/rules_proto/pkg/plugin/grpc/grpcnode"
	_ "github.com/stackb/rules_proto/pkg/plugin/grpc/grpcweb"
	_ "github.com/stackb/rules_proto/pkg/plugin/scalapb/scalapb"
	_ "github.com/stackb/rules_proto/pkg/plugin/stackb/grpc_js"
	_ "github.com/stackb/rules_proto/pkg/plugin/stephenh/ts-proto"
	_ "github.com/stackb/rules_proto/pkg/rule/rules_cc"
	_ "github.com/stackb/rules_proto/pkg/rule/rules_closure"
	_ "github.com/stackb/rules_proto/pkg/rule/rules_go"
	_ "github.com/stackb/rules_proto/pkg/rule/rules_java"
	_ "github.com/stackb/rules_proto/pkg/rule/rules_nodejs"
	_ "github.com/stackb/rules_proto/pkg/rule/rules_python"
	_ "github.com/stackb/rules_proto/pkg/rule/rules_scala"
)

func NewLanguage() language.Language {
	return protobuf.NewProtobufLang("protobuf")
}
