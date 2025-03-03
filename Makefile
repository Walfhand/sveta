deploy-prod: down prune landing_page

landing_page:
	docker compose --profile landing_page up -d

landing_page_dev:
	docker compose --profile landing_page up --build

down:
	docker compose --profile landing_page down
prune:
	docker image prune -a -f