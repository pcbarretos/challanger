 module "ecr" {
   source = "terraform-aws-modules/ecr/aws"

   repository_name = "docker"

   repository_lifecycle_policy = jsonencode({
     rules = [
       {
         rulePriority = 2,
         description  = "Images Docker",
         selection = {
           tagStatus     = "tagged",
           tagPrefixList = ["v"],
           countType     = "imageCountMoreThan",
           countNumber   = 30
         },
         action = {
           type = "expire"
         }
       }
     ]
   })

   tags = {
     managedBy = "terraform"
     owner = var.owner
   }

   depends_on = [ module.eks ]
 }