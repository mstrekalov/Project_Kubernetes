1.
1) Клонируем репозиторий
2) запускае из корневой папки docker-compose up
3) открываем браузер, вводим localhost:8080 (открыт этот порт)

2.
1)terraform init, terraform plan, terraform apply
2)не тестировал, учился с aws.

3. 
Через deploymet
1) minikube start
2) kubectl apply -f kefir_deploy.yaml
3) minikube service my-web-service --url 
4) Вводим в браузер URL

Через Helm
1) minikube start
2) helm install app kefir_charts/
3) minikube service web-service --url 
4) Вводим в браузер URL

4.
Команда Terraform публикует руководства по обновлению для каждой основной версии. Как вы упомянули, единственный документированный и поддерживаемый путь обновления - это одновременное перемещение одной основной версии: с v0.12 на v0.13, с v0.13 на v0.14, а затем с v0.14 на предстоящую v0.15 (которая в настоящее время находится в стадии бета-тестирования, когда я пишу это).

https://www.terraform.io/upgrade-guides/0-14.html

5.
https://github.com/mstrekalov/Project_Kubernetes.git

