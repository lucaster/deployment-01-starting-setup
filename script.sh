docker container prune -f
docker image prune -f
docker build -t udemy-academind-docker-module09 .
docker tag udemy-academind-docker-module09 lucaster/udemy-academind-docker-module09
docker push lucaster/udemy-academind-docker-module09

docker run -d --rm --name udemy-academind-docker-module09 -p 80:80 udemy-academind-docker-module09

chmod 400 udemy-academind-docker-module09.pem
ssh -i "udemy-academind-docker-module09.pem" ec2-user@3.236.19.101
sudo yum update -y
sudo amazon-linux-extras install docker
sudo service docker start
sudo docker run -d --rm -p 80:80 lucaster/udemy-academind-docker-module09