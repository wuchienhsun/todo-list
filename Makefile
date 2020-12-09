default: echo

echo:
	@echo "todo-list"

commit:
	@git-cz

build-image:
	@docker build -t todo-list:latest .

lint:
	@golint ./...

install-mod:
	@go mod download

install-tools:
	@go get -v golang.org/x/lint/golint