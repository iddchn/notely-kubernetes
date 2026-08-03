# Kubernetes Project

This project contains Kubernetes configurations and Helm charts for deploying and managing infrastructure applications and the Notely application.

## Project Structure

### Directories
- **infra-apps**: Contains configurations and charts for infrastructure-level services.
  - `cert-manager.yaml`: Configuration for certificate management.
  - `monitoring-app.yaml`: Deployment for monitoring tools (e.g., Prometheus, Grafana).
  - `ingress-controler.yaml`: Configuration for an ingress controller (e.g., NGINX).
  - `external-charts`: Includes external Helm charts or dependencies.
- **notely**: Contains the Notely application and its Helm chart.
  - `notely-chart`: Helm chart for deploying the Notely application.
  - `apps`: Additional application-specific configurations.

## Prerequisites

Ensure the following are installed on your system:

- Kubernetes cluster (e.g., Minikube, EKS, GKE, AKS).
- kubectl CLI tool.
- Helm (for managing charts).

## Installation and Deployment

### Step 1: Deploy Infrastructure Applications
1. Apply the ingress controller:
   ```bash
   kubectl apply -f infra-apps/ingress-controler.yaml
   ```

2. Set up certificate management:
   ```bash
   kubectl apply -f infra-apps/cert-manager.yaml
   ```

3. Deploy monitoring tools:
   ```bash
   kubectl apply -f infra-apps/monitoring-app.yaml
   ```

### Step 2: Deploy Notely Application
1. Navigate to the Notely Helm chart directory:
   ```bash
   cd notely/notely-chart
   ```

2. Install the Notely Helm chart:
   ```bash
   helm install notely ./
   ```

3. Verify the deployment:
   ```bash
   kubectl get all -n <namespace>
   ```

## Configuration
- Modify values in the `values.yaml` file of each Helm chart to customize the deployments.
- Update Kubernetes manifests as needed to match your cluster setup.

## Contributing
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Create a new branch for your changes:
   ```bash
   git checkout -b feature/your-feature
   ```
3. Commit and push your changes:
   ```bash
   git commit -m "Description of changes"
   git push origin feature/your-feature
   ```
4. Open a pull request.

## Acknowledgments
- Kubernetes community
- Helm developers
- Contributors to external charts used in this project

