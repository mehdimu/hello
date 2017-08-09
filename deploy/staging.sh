cd ./deploy

# ENV Variables that are used the the platform-service-deploy.sh script
export ECS_CLUSTER=services-ecs-stg
export ECS_SERVICE=hello
export SERVICE_CONTAINER_NAME=hello
export CONTAINER_IMAGE=280159221453.dkr.ecr.us-east-1.amazonaws.com/hello:staging-3
export SERVICE_TOKEN=42816376-62C7-4F60-BF66-CB525401C500
export AWS_REGION=us-east-1

#download latest deploy script
aws s3 cp "s3://flipp-platform-"$WISHABI_ENVIRONMENT"/deploy/platform-service-deploy.sh" platform-service-deploy.sh
chmod +x platform-service-deploy.sh
#Execute the deployment Scripts
./platform-service-deploy.sh
