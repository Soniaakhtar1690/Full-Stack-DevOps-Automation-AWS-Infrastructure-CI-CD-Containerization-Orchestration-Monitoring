# Optionally create key pair from local public key
resource "aws_key_pair" "deployer" {
  count    = var.create_keypair ? 1 : 0
  key_name = var.key_name
  public_key = file(var.public_key_path)
}

# If not creating, user should create the key pair manually and set variable key_name
