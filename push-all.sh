#!/bin/bash

VERSION=$1

if [ -z "$VERSION" ]
then
  echo "❌ Please provide version: ./push-all.sh 1.0.0"
  exit 1
fi

USER="alxivashchenko"

echo "🚀 Pushing version: $VERSION"

# Gateway
docker tag microservices-gateway-service:latest ghcr.io/$USER/microservices-gateway-service:$VERSION
docker push ghcr.io/$USER/microservices-gateway-service:$VERSION

# Auth
docker tag microservices-auth-service:latest ghcr.io/$USER/microservices-auth-service:$VERSION
docker push ghcr.io/$USER/microservices-auth-service:$VERSION

# User
docker tag microservices-user-service:latest ghcr.io/$USER/microservices-user-service:$VERSION
docker push ghcr.io/$USER/microservices-user-service:$VERSION

# Todo
docker tag microservices-todo-service:latest ghcr.io/$USER/microservices-todo-service:$VERSION
docker push ghcr.io/$USER/microservices-todo-service:$VERSION

# Frontend
docker tag microservices-todo-frontend:latest ghcr.io/$USER/microservices-todo-frontend:$VERSION
docker push ghcr.io/$USER/microservices-todo-frontend:$VERSION

echo "✅ DONE"
