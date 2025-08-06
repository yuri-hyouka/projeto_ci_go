lint:
    docker run --rm -itv $(CURDIR):/app -w /app golangci/golangci-lint golangci-lint run controllers/ database/ models/ routes/

test:
	docker compose exec app go test -v ./...

start: 
	docker compose up -d

ci: start lint test
