terraform { 
  cloud { 
    
    organization = "Nornes" 

    workspaces { 
      name = "mon-lab-with-sg-Brandon" 
    } 
  } 
}

provider "aws" {
  region = "us-east-1"
}

module "admin_ssh_sg" {
  source = "./modules/aws_sg_admin_ssh"

}

resource "aws_instance" "challengevmad" {
  ami                    = "ami-085ad6ae776d8f09c"
  instance_type          = "t2.nano"
  vpc_security_group_ids = [module.admin_ssh_sg.sg_id]
  key_name               = "vockey"
  tags = {
    Name = "challengevmad"
  }
}