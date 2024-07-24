# Configuração do Terraform para o cluster AWS EKS

## Visão geral
- Essa configuração do Terraform define um cluster do AWS EKS (Elastic Kubernetes Service).
- Ela inclui configurações para provedores, variáveis, configurações principais, um VPC, um cluster EKS e saídas.

## Requisitos
- Terraform v 1.9.3 ou superior.
- Versão do provedor AWS ~> 5.0.
- Provedores adicionais: `random` (~> 3.5.1), `tls` (~> 4.0.4), `time` (~> 0.10.0), `cloudinit` (~> 2.3.2), `kubernetes` (>= 2.23.2).

## Configuração
- Backend: AWS S3 para gerenciamento de estado.
  - Bucket: Especificado na configuração (substitua `<bucket-name>` pelo nome real do bucket).
  - Chave: `terraform.tfstate`.
  - Região: `us-east-1`.

## Arquivos de configuração
1. `variables.tf`: Define variáveis como a região da AWS e o nome do cluster.
   - Região padrão: `us-east-1`.
   - Nome padrão do cluster: `quizapp-eks`.
2. `main.tf`: Configura os provedores Kubernetes e AWS.
   - Configura a conexão com o cluster EKS.
3. `vpc.tf`: Configura o VPC para o cluster EKS.
   - Bloco CIDR: `10.20.0.0/16`.
   - Configura as sub-redes privadas e públicas.
4. `eks-cluster.tf`: Configura o cluster EKS.
   - Versão do cluster: `1.29`.
   - Grupos de nós: master e worker com tipos e tamanhos de instância especificados.
5. `outputs.tf`: Exibe o nome do cluster, endpoint, região e ID do grupo de segurança.

## Utilização
- Inicializar o Terraform: `terraform init`.
- Validar o código do Terraform: `terraform validate`.
- Planejar o Terraform: `terraform plan`.
- Aplicar a configuração: `terraform apply`.
- Validar os resultados após a aplicação bem sucedida.

## Notas
- Substitua os valores de espaço reservado (como `<bucket-name>`) por valores reais.
- Certifique-se de ter as permissões AWS apropriadas.

## Informações adicionais 

# Instalação do Terraform e do AWS CLI

## A) Pré-requisitos
- Instalar o Terraform CLI
- Instalar o AWS CLI
- Instalar o VS Code Editor - recomendado para este curso
- Instalar o plug-in do HashiCorp Terraform para VS Code - recomendado
