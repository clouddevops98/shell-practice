USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run thisb script with root privelege"
    exit 1 # failure is other than 0
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing MYSQL is failure"
    exit 1
else
    echo "Installing MYSQL is SUCCESS"
fi

dnf install Nginx -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing Nginx is failure"
    exit 1
else
    echo "Installing Nginx is SUCCESS"
fi

dnf install mongodb-mongosh -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing mongodb-mongosh is failure"
    exit 1
else
    echo "Installing mongodb-mongosh is SUCCESS"
fi