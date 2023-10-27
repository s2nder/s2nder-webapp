##################################################################################
# DATA SOURCES
##################################################################################

data "aws_ssm_parameter" "amzn2_linux" {
  #name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-kernel-5.10-hvm-x86_64-gp2"
}

data "tfe_outputs" "networkin" {
  organization = var.tfe_oraganization
  workspace    = var.tfe_workspace_name
}