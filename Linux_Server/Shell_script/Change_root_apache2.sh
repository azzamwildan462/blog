while getopts 'd:t:s:h' flag; 
do
    case "${flag}" in
        h)
            echo "This shell script will help you to change the default document root of your Apache2 web server"
            echo "-d            will change the default document root (/var/www/html)"
            echo "-t            define target '-t [target]'"
            echo "-s            define source '-s [source]'"
            echo " "
            echo "Usage: "
            echo "sudo ./Change_root_apache2.sh -d /var/www/html/project2"
            echo "               or  "
            echo "sudo ./Change_root_apache2.sh -s /var/www/html/project1 -t /var/www/html/project2"
            exit 0
        ;;
        d) 
            source="/var/www/html"
            target="${OPTARG}"
        ;;
        t) 
            target="${OPTARG}" 
        ;;
        s) 
            source="${OPTARG}" 
        ;;
        *)
            echo "Error flag"
            exit 0
        ;;
    esac
done

sudo sed -i "s#${source}#${target}#g" /etc/apache2/apache2.conf
sudo sed -i "s#${source}#${target}#g" /etc/apache2/sites-enabled/000-default.conf

sudo service apache2 restart