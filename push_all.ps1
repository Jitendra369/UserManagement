# dockerhub username 
$DOCKER_USER = "jittu009"
$TAG = "1.0"

# list of microservices images
$IMAGES = (
    "micro_revisit-api-gateway",
  "micro_revisit-order-service",
  "micro_revisit-config-server",
  "micro_revisit-service-registry"
)

foreach ($IMAGE in $IMAGES) {
    $SERVICE_NAME = $IMAGE.Replace("micro_revisit-", "")
    $TARGET_IMAGE = "${DOCKER_USER}/${SERVICE_NAME}:${TAG}"

    Write-Host "Pushing $TARGET_IMAGE..."

    docker tag "${IMAGE}:latest" $TARGET_IMAGE
    docker push $TARGET_IMAGE
}
Write-Host "✅ All images pushed successfully!"