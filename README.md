# otus_adv_terraform

____________________________________

В файле main.tf в поле ssh_keys указать отпечаток собственного публичного ключа. Этот же отпечаток должен быть добавлен в панели AH.

Аналогично указываем собственный access_token в файле main.tf.

Машинка создаётся командой 

terraform apply

Потом в файл staging/hosts/inventory в качестве ansible_host добавляем ip хоста, созданного на AH.

И накатываем сценарий Ansible:

ansible-playbook nginx.yml

После чего сайт становится доступен по адресу:

http://X.X.X.X:8080

где X.X.X.X - ip хоста, созданного на AH.


 
