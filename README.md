# Bootcamp Final Project 🚀

## Pasos

1. **Construir imagen y subir a DockerHub**
bash
docker build -t TU_USUARIO_DOCKER/bootcamp-app:1.0 ./app
docker push TU_USUARIO_DOCKER/bootcamp-app:1.0

2. Infraestructura con Terraform
 cd terraform
terraform init
terraform apply

3. despliegue con kubernetes
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

4. Instalar Prometheus + Grafana
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install monitoring prometheus-community/kube-prometheus-stack

5. Acceder a Grafana
kubectl port-forward svc/monitoring-grafana 3000:80

Usuario: admin
Password: prom-operator
