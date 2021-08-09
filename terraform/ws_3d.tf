resource "aws_instance" "ws_3d" {
  ami           = "ami-02b4e72b17337d6c1"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "Wherescape 3D"
  }
}