echo "Before Install: 배포 환경 준비"

source /opt/codedeploy-agent/deployment-root/deployment-config.env

echo "ECR 로그인"
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $(echo $IMAGE_URI | cut -d'/' -f1)

echo "새 Docker 이미지 pull"
docker pull $IMAGE_URI