# Invoicing Deploy

Manifiestos Kubernetes y `Application` de ArgoCD para `invoicing-api`.

## Configurar imagen

Edita `deployment.yaml` y cambia:

```yaml
image: CHANGE_ME.azurecr.io/invoicing-api:0.1.0
```

por la imagen publicada en tu ACR.

## Desplegar directamente

```bash
make apply
```

## Desplegar con ArgoCD

Antes de aplicar, cambia `repoURL` en `argocd-application.yaml`.

```bash
make argocd-apply
```

## Ver estado

```bash
make status
```
