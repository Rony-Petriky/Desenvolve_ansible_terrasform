resource "aws_security_group" "liberar_ssh" {
  name        = "liberar_ssh"
  description = "Permite acesso ao ssh"
  vpc_id      = aws_vpc.vpc_prd.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "liberar_http" {
  name        = "liberar_http"
  description = "Permite acesso ao http"
  vpc_id      = aws_vpc.vpc_prd.id

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
resource "aws_security_group" "liberar_https" {
  name        = "liberar_https"
  description = "Permite acesso ao https"
  vpc_id      = aws_vpc.vpc_prd.id
 

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}
resource "aws_security_group" "liberar_areaTrabalho_remota" {
  name        = "liberar_areaTrabalho_remota"
  description = "Permite acesso a area de trabalho"
  vpc_id      = aws_vpc.vpc_prd.id
 

  ingress {
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
resource "aws_security_group" "liberar_icmp" {
  name        = "liberar_icmp"
  description = "Permite acesso ao ping"
  vpc_id      = aws_vpc.vpc_prd.id

  ingress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "liberar_winrm" {
  name        = "liberar_winrm"
  description = "Permite acesso ao winrm"
  vpc_id      = aws_vpc.vpc_prd.id

  ingress {
    from_port        = 5985
    to_port          = 5986
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}
