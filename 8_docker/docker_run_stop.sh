# Building the docker image:-----------------------------------------
image_name="my_nginx"
echo "  --> Building the docker image = ${image_name}"
sudo docker build -t ${image_name} ./ 1> 1_docker_build_result.log 2> 1_docker_build_result.log

# Running the docker container:--------------------------------------
local_port="8080"
echo "  --> Running the docker container = ${image_name} on the port ${local_port}"
sudo docker run -dp ${local_port}:80 ${image_name} 1> 2_docker_run_result.log 2> 2_docker_run_result.log

# Checking the docker container:-------------------------------------
url="http://localhost:${local_port}"
echo "  --> Checking by the http requesting to: ${url}"
curl ${url} 1> 3_docker_check_result.log 2> 3_docker_check_result.log
sudo docker ps > 4_docker_ps_result.log

# Stopping the docker container:-------------------------------------
nginx_hash="$(sudo docker ps -q)"
echo "  --> Stopping the docker container name=${image_name}" hash=${nginx_hash}
sudo docker stop ${nginx_hash}
sudo docker rmi ${image_name} -f
sudo docker rmi ubuntu -f
echo "  --> The end"

