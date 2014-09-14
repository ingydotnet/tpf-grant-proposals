ALL_POD := \
    ReadMe.pod \
    grant/Inline-for-Modules.pod \
    grant/IO-All-Redux.pod \
    grant/Pegex-YAML.pod \
    grant/Swim-Pod-Tools.pod \

all: $(ALL_POD)

./%.pod grant/%.pod: src/%.swim
	swim --to=pod --complete=1 --wrap=1 $< > $@
