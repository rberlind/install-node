resource "null_resource" "install_node" {
  provisioner "local-exec" {
    command = "curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -"
  }
  provisioner "local-exec" {
    command = "sudo yum -y install nodejs"
  }
  provisioner "local-exec" {
    command = "npm version"
  }
}
