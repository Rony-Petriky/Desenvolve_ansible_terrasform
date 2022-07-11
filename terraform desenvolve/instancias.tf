resource "aws_instance" "amb_desenvolve_linux" {
    
    ami           = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = ""
    subnet_id = aws_subnet.subnet_publica.id
    associate_public_ip_address = true

    tags = {
        name = "amb_desenvolve-linux"
    }

    vpc_security_group_ids = [aws_security_group.liberar_ssh.id,
                                aws_security_group.liberar_icmp.id,
                                aws_security_group.liberar_http.id,
                                aws_security_group.liberar_https.id]
}

resource "aws_instance" "amb_desenvolve_windwos" {
    ami           = "ami-09e13647920b2ba1d"
    instance_type = "t2.micro"
    key_name = "trabalhoDesenvolve"
    subnet_id = aws_subnet.subnet_publica.id
    associate_public_ip_address = true

    tags = {
        name = "amb_desenvolve-windwos}"
    }
    vpc_security_group_ids = [aws_security_group.liberar_areaTrabalho_remota.id,
                                aws_security_group.liberar_winrm.id,
                                aws_security_group.liberar_icmp.id,
                                aws_security_group.liberar_http.id,
                                aws_security_group.liberar_https.id]
}