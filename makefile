deploy:
	@sudo docker context use selfhosted
	@sudo docker compose up -d
	@sudo docker context use default
