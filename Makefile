TOOL_TAG=2.2.5
TOOL_IMAGE=amitar/espa-bulk-downloader:${TOOL_TAG}

build:
	docker build . -t $(TOOL_IMAGE)
