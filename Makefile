all: build

build:
	@docker build --tag=rsyuzyov/postgresql .

release: build
	@docker build --tag=rsyuzyov/postgresql:$(shell cat VERSION) .
