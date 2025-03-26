# NestJS Application with Kubernetes

This project demonstrates how to deploy a NestJS application to Kubernetes, providing a robust, scalable infrastructure for your Node.js applications.

## Technologies

- **NestJS**: A progressive Node.js framework for building efficient and scalable server-side applications
- **Docker**: Used for containerizing the application
- **Kubernetes**: For container orchestration, deployment management, and scaling

## Project Structure

The project structure is as follows:

```text
/nestjs-k8s
|-- src
|   |-- app.controller.ts
|   |-- app.module.ts
|   |-- main.ts
|-- Dockerfile
|-- kubernetes
|   |-- deployment.yaml
|   |-- service.yaml
|-- README.md
```

## Getting Started

### Prerequisites

- Docker installed on your local machine
- Kubernetes cluster set up (e.g., Minikube, GKE, EKS, AKS)
- kubectl command-line tool installed

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/nestjs-k8s.git
   cd nestjs-k8s
   ```

2. Install the dependencies:

   ```bash
   npm install
   ```

### Running the Application Locally

1. Build the Docker image:

   ```bash
   docker build -t nestjs-k8s .
   ```

2. Run the Docker container:

   ```bash
   docker run -p 3000:3000 nestjs-k8s
   ```

3. Open your browser and navigate to `http://localhost:3000`.

### Deploying to Kubernetes

1. Build the Docker image:

   ```bash
   docker build -t yourusername/nestjs-k8s .
   ```

2. Push the Docker image to a container registry:

   ```bash
   docker push modaa/nestjs-k8s
   ```

3. Apply the Kubernetes configurations:

   ```bash
   kubectl create -f kubernetes/deployment.yaml
   kubectl create -f kubernetes/service.yaml
   ```

4. Get the external IP of the service:

   ```bash
   kubectl get services
   ```

5. Open your browser and navigate to the external IP of the service.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
