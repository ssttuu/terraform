
get:
	docker-compose run terraform get

plan: get
	docker-compose run terraform plan

apply: get
	docker-compose run terraform apply

# deployments

plan_release:
	python infra.py plan release release

plan_staging:
	python infra.py plan staging staging

plan_branch:
	python infra.py plan ${BRANCH} test


apply_release:
	python infra.py apply release release

apply_staging:
	python infra.py apply staging staging

apply_branch:
	python infra.py apply ${BRANCH} staging
