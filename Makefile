.DEFAULT := build

build:
	swift package purge-cache
	swift package clean
	swift build -c release --arch arm64
	cp /Users/jettchen/dev/wechat-rev/WeChatTweak-CLI/.build/arm64-apple-macosx/release/wechattweak-cli ./release/arm64

clean:
	swift package purge-cache
	swift package clean
	rm -rf .build wechattweak-cli
