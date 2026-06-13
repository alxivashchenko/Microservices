param (
    [string]$Version
)

if (-not $Version) {
    Write-Host "❌ Please provide version: .\push-all.ps1 1.0.0"
    exit 1
}

$USER = "alxivashchenko"

Write-Host "🚀 Pushing version: $Version"

docker tag microservices-gateway-service:latest ghcr.io/$USER/microservices-gateway-service:$Version
docker push ghcr.io/$USER/microservices-gateway-service:$Version

docker tag microservices-auth-service:latest ghcr.io/$USER/microservices-auth-service:$Version
docker push ghcr.io/$USER/microservices-auth-service:$Version

docker tag microservices-user-service:latest ghcr.io/$USER/microservices-user-service:$Version
docker push ghcr.io/$USER/microservices-user-service:$Version

docker tag microservices-todo-service:latest ghcr.io/$USER/microservices-todo-service:$Version
docker push ghcr.io/$USER/microservices-todo-service:$Version

docker tag microservices-todo-frontend:latest ghcr.io/$USER/microservices-todo-frontend:$Version
docker push ghcr.io/$USER/microservices-todo-frontend:$Version

Write-Host "✅ DONE"