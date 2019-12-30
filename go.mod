// naming the module without the TLD has the effect of:
// - disabling the `go get` method of installation
// - making it impossible to import (without some sort of vendoring hack)
module aws-okta

replace github.com/segmentio/aws-okta => ./

require (
	github.com/99designs/keyring v1.0.0
	github.com/alessio/shellescape v0.0.0-20190409004728-b115ca0f9053
	github.com/aws/aws-sdk-go v1.25.25
	github.com/marshallbrekka/go-u2fhost v0.0.0-20170128051651-72b0e7a3f583
	github.com/marshallbrekka/go.hid v0.0.0-20161227002717-2c1c4616a9e7 // indirect
	github.com/mitchellh/go-homedir v1.1.0
	github.com/segmentio/analytics-go v3.0.1+incompatible
	github.com/segmentio/aws-okta v0.0.0-00010101000000-000000000000
	github.com/sirupsen/logrus v1.4.1
	github.com/skratchdot/open-golang v0.0.0-20160302144031-75fb7ed4208c
	github.com/spf13/cobra v0.0.0-20170621173259-31694f19adee
	github.com/stretchr/testify v1.3.0
	github.com/vaughan0/go-ini v0.0.0-20130923145212-a98ad7ee00ec
	github.com/vitaminwater/cgo.wchar v0.0.0-20160320123332-5dd6f4be3f2a // indirect
	golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7
	golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7
	gopkg.in/ini.v1 v1.42.0
)

go 1.13
