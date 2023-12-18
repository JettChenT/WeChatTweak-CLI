.DEFAULT := build

build:
	swift package purge-cache
	swift package clean
	swift build -c release
	cp ./.build/release/wechattweak-cli ./release/wechattweak-cli

clean:
	swift package purge-cache
	swift package clean
	rm -rf .build wechattweak-cli
