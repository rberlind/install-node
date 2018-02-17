resource "null_resource" "install_node" {
  provisioner "local-exec" {
    command = "curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -"
  }
  provisioner "local-exec" {
    command = "sudo apt-get install -y nodejs"
  }
  provisioner "local-exec" {
    command = "npm version"
  }
}
