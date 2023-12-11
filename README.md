# Challanger
<p align="center">  
	<img
	  alt="Devops Aws"
	  src="https://www.betasofttechnology.com/wp-content/uploads/2022/03/aws-banner.png"
	  width="400"
	/>
</p>


Sumário:

- Arquitetura de Infra Proposta
- Arquitetura da Pipeline Infra
- Arquitura da Pipeline da Aplicação
- Pré Requisitos para funcionamento
- Documentação dos Recursos Utilizados

## Arquitetura de Infra Proposta.

<p align="center">  
	<img
	  alt="Arquitetura Aws Eks"
	  src="https://www.betasofttechnology.com/wp-content/uploads/2022/03/aws-banner.png"
	  width="300"
	/>
</p>



## Arquitetura da Pipeline Infra

## Arquitura da Pipeline da Aplicação

## Pré Requisitos para funcionamento
- Create IAM User
  - Uduário com permissões minimas/API
- Bucket S3
  - Bucket com Versionamento Ativado
- DynamoDB Table
  - Minimas configs KeyID type HASH


## Documentação dos Recursos Utilizados

- *https://github.com/marketplace/actions/hashicorp-setup-terraform/*
- *https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release/*
- *https://registry.terraform.io/providers/hashicorp/aws/5.29.0*
- *https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/19.0.0*
- *https://registry.terraform.io/modules/terraform-module/acm/aws/2.2.0*
- *https://registry.terraform.io/modules/terraform-aws-modules/ecr/aws/1.6.0*