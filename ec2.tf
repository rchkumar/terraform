provider "aws" {
  region = "us-east-1"
  profile = "default"

}


resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEo9RkHSCMIEg8e6Ogx1q0KatpxqkAUTI1mNpcL/j6j+akEDBe6ZjNidrvpnqF8YgzRYBN+bz1iGXYf4U8kGUgfa8bIj+vlNuxOz/PmvpI91V7PjolLhx0jtjT+3T06GvPbDegF/O/tH9wtqNMK863Yof1avdFRhQdA75qSZcqctGGGH2dyQMHo/6hGCnHJypEupLxmBzSownJvOyHydbYtDVD3gytd/jga5e75/xHg+Sm4uJHXcx2DjhuX4ZbOR7Z9w5v/7G53oLlXrJ/R772ZCNdbYJgBkWWYUtNdfv7rDxKe0J6bB/keSq/zasXe+GyHs25cohLHlKxXJzn+tG2bgD5nWOcWJqXClPdF6PFESeMQdRkseq4Ph/T4Pl9dby9jOGe0pG5p4nFO/EiMz3+ayQ6n6w1ecjKVMPeoMOdmgMbiENuGuwWqdM+s6A1QyDhwIYCxhNU3Wl4zzbYGeKsUT6qTkAe7SoHq+5VfzDt/UG9zr+mf2NsoSGp7gjMaPE= ram@ubuntu"
}


resource "aws_instance" "web" {
  ami                    = "ami-087c17d1fe0178315"
  instance_type          = "t2.micro"
  key_name = "deployer-key"
  tags = {
    Name = "Helloworld"
  }


}