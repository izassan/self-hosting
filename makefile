ps:
	@sudo docker context use selfhosted
	@sudo docker compose ps -a
	@sudo docker context use default

use_selfhost:
	@sudo docker context use selfhosted

use_default:
	@sudo docker context use default

deploy:
	@git switch release
	@sudo docker context use selfhosted
	@sudo docker compose up -d
	@sudo docker context use default
	@git switch main

deploy_rebuild:
	@git switch release
	@sudo docker context use selfhosted
	@sudo docker compose up -d --build
	@sudo docker context use default
	@git switch main

undeploy:
	@sudo docker context use selfhosted
	@sudo docker compose down
	@sudo docker context use default
