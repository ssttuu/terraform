
get:
	docker-compose run terraform get

plan: get
	docker-compose run terraform plan

apply: get
	docker-compose run terraform apply
