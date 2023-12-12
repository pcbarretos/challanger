## Cria um CA como Wildcard *.Domain
#module "acm" {
#  source  = "terraform-module/acm/aws"
#  version = "~> 2"
#
#  domain_name = aws_route53_zone.my_domain.name
#  zone_id     = aws_route53_zone.my_domain.id
#
#
#  validation_method    = "DNS"
#  validate_certificate = false # Para aguardar a validação do CA -> Demora mais de 30 minutos
#
#  subject_alternative_names = [
#    var.ca_wildcard_domain
#  ]
#
#  tags = {
#    managedBy = "terraform"
#    owner     = var.owner
#  }
#
#  depends_on = [
#    aws_route53_zone.my_domain
#  ]
#}
#
#resource "aws_route53_zone" "my_domain" {
#  name = var.my_domain
#
#  tags = {
#    managedBy = "terraform"
#    owner     = var.owner
#  }
#}
