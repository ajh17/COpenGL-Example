.PHONY: all compile compile_verbosely clean

all: compile

compile:
	swift build -Xlinker -lglut

compile_verbosely:
	swift build -v -Xlinker -lglut

clean:
	${RM} -rf ./.build
	${RM} -f Package.pins Package.resolved
