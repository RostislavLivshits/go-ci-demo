.PHONY: help format vet test lint ci

help:
	@echo "Available commands:"
	@echo ""
	@echo "make format    - Format Go code"
	@echo "make vet       - Run go vet"
	@echo "make test      - Run tests with coverage"
	@echo "make lint      - Run formatting and vet"
	@echo "make ci        - Run full CI checks"

format:
	gofmt -w .

vet:
	go vet ./...

test:
	go test -cover ./...

lint: format vet

ci: lint test