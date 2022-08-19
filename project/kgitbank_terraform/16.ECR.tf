
############################################################
#####                     Seoul                         ####
############################################################
resource "aws_ecr_repository" "seoul-ecr-repo" {
  name         = var.django_ecr
  force_delete = true
  tags = {
    "Name" = "${var.django_ecr}"
  }
}
############################################################
#####                     Tokyo                         ####
############################################################
resource "aws_ecr_repository" "tokyo-ecr-repo" {
  provider     = aws.tokyo
  name         = var.django_ecr
  force_delete = true
  tags = {
    "Name" = "${var.django_ecr}"
  }
}
