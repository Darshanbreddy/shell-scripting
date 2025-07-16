# shell-scripting

After running createec2.sh, you may get an "unable to locate credentials" error. To fix this, run aws configure, provide your AWS access key, secret key, and preferred region. Then, edit the createec2.sh script and fill in all the required EC2 parameters (like AMI ID, instance type, key pair, and security group) according to your needs.

Order I followed to understand bash is as-follows basic hello.sh -> variables.sh -> loops.sh -> function.sh -> dj.sh (for the deployment of django app using shell scripting) -> Create Ec2.sh  
