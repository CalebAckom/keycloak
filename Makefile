NAMESPACE=iam-thesis

.PHONY = create_postgres_pv create_postgres_pvc get_pv get_pvc apply_postgres_secret create_postgres_ss create_postgres_svc

create_postgres_pv:
	kubectl apply -f ./postgres/postgres-pv.yml

create_postgres_pvc:
	kubectl apply -f ./postgres/postgres-pvc.yml

get_pv:
	kubectl get pv -n $(NAMESPACE)

get_pvc:
	kubectl get pvc -n $(NAMESPACE)

apply_postgres_secret:
	kubectl apply -f ./postgres/postgres-secret.yml

create_postgres_ss:
	kubectl apply -f ./postgres/postgres-ss.yml

create_postgres_svc:
	kubectl apply -f ./postgres/postgres-svc.yml