SHELL := /bin/sh

NAMESPACE := invoicing

.PHONY: help render apply delete status argocd-apply argocd-delete

help:
	@printf '%s\n' \
		'Targets:' \
		'  make render        Renderiza Kustomize' \
		'  make apply         Aplica manifiestos directamente' \
		'  make delete        Elimina manifiestos directos' \
		'  make status        Muestra recursos del namespace' \
		'  make argocd-apply  Crea la Application en ArgoCD' \
		'  make argocd-delete Elimina la Application de ArgoCD'

render:
	kubectl kustomize .

apply:
	kubectl apply -k .

delete:
	kubectl delete -k .

status:
	kubectl get all -n $(NAMESPACE)

argocd-apply:
	kubectl apply -f argocd-application.yaml

argocd-delete:
	kubectl delete -f argocd-application.yaml
