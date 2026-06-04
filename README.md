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

## Autoscaling

Incluye un `HorizontalPodAutoscaler` con `minReplicas: 1` y `maxReplicas: 1`.

Kubernetes HPA con métricas de CPU no permite `minReplicas: 0`. Para scale-to-zero real de pods habría que añadir KEDA/Knative o un scaler basado en eventos.
