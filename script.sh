docker container prune -f
docker image prune -f
docker build -t lucaster/udemy-academind-docker-module09 .
docker push lucaster/udemy-academind-docker-module09

docker run -d --rm --name udemy-academind-docker-module09 -p 80:80 udemy-academind-docker-module09

chmod 400 udemy-academind-docker-module09.pem
ssh -i "udemy-academind-docker-module09.pem" ec2-user@44.192.43.250
sudo yum update -y
sudo amazon-linux-extras install docker
sudo service docker start
sudo docker stop udemy-academind-docker-module09
sudo docker pull lucaster/udemy-academind-docker-module09
sudo docker run -d --rm -p 80:80 --name udemy-academind-docker-module09 lucaster/udemy-academind-docker-module09


ECS resource creation
 Cluster default
 Task definition first-run-task-definition:1
 Service udemy-academind-docker-module09-service
Additional AWS service integrations
 Log group /ecs/first-run-task-definition
 CloudFormation stack EC2ContainerService-default
 VPC vpc-004d5cfb69a8f0212
 Subnet 1 subnet-03d0d5f20579dd531
 Subnet 2 subnet-0a9efd9cda232cb84
 Security group sg-058a4d54ab4558ca3 