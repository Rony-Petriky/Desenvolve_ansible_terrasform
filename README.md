# Desenvolve (Devops-2022)
_Trabalho proposto pela mentora do projeto Desenvolve do GB, feito com Terraform e ansible_
 
**[Terraform](https://github.com/Rony-Petriky/Desenvolve_ansible_terrasform/tree/master/terraform%20desenvolve)**: ec2, vpc, subnet e security groups
 
**[Ansible:](https://github.com/Rony-Petriky/Desenvolve_ansible_terrasform/tree/master/ansible%20desenvolve)**  instalação de dois pacotes na ec2 linux e vm windows; levar um arquivo hospedado
na vm que roda o ansible até a ec2 linux e vm windows na pasta tmp
 
### Terraform
  Decidir separar em cinco arquivos.
 
  **instancias.tf** Onde coloco minhas máquinas, nesse caso são duas uma windows e uma linux.
 
  **internetGateway.tf:** Onde específico que todos os meus hots terão um ip publico para acesar a internet
 
  **main.tf:** Onde específico meu provedor que nesse caso é o aws.
 
  **securityGroup.tf:** onde específico minhas regras para meu grupo de segurança.
 
  **vpc.tf:** onde específico minha vpc e minha subnet.
  
   ### Ansible
   separei em dois arquivos de invetarios um para linux e outro para o windows

   **iventario_linux.yml:** (1)  Instalando o Apache (2) Garantindo inicialização do Apache (3) Garantindo o site

   **iventario_windows.yml** (1) Download do Apache (2) Instalando Apache MSI (3) copiando arquivos do site jogo da velha
   ) copiando arquivos de configuraçao (5) instalando httpd (6) Start serice Apache
