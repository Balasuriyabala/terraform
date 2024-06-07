#!/bin/bash
#sudo yum update -y
#sudo yum install -y httpd
#sudo systemctl enable httpd
#sudo service httpd start
#echo "<hi> hi this is from terraform <h1>" | sudo tee /var/www/html/index.html


#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd
echo "<h1>hi this is from terraform</h1>" | sudo tee /var/www/html/index.html
