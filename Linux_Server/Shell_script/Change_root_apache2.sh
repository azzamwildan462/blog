while getopts 'd:t:s:hna:' flag; 
do
    case "${flag}" in
        h)
            echo "This shell script will help you to change the default document root of your Apache2 web server"
            echo "-d            will change the default document root (/var/www/html)"
            echo "-t            define target '-t [target]'"
            echo "-s            define source '-s [source]'"
            echo "-n            check your apache2 root that used now"
            echo "-a            auto, just insert target argument. ex: -a [target]"
            echo " "
            echo "Usage: "
            echo "sudo ./Change_root_apache2.sh -d /var/www/html/project2"
            echo "               or  "
            echo "sudo ./Change_root_apache2.sh -s /var/www/html/project1 -t /var/www/html/project2"
            echo "               or  "
            echo "sudo ./Change_root_apache2.sh -a /var/www/html/project90"
            exit 0
        ;;
	a)
	    source=$(cat /etc/apache2/sites-enabled/000-default.conf | grep -w DocumentRoot | awk '{print $2}')
	    target="${OPTARG}"
	;;
        n)
            cat /etc/apache2/sites-enabled/000-default.conf | grep -w DocumentRoot | awk '{print $2}'
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

if [ -z $source ] || [ -z $target ]
then
    echo "kosong"
    exit
else
    sudo sed -i "s#${source}#${target}#g" /etc/apache2/apache2.conf
    sudo sed -i "s#${source}#${target}#g" /etc/apache2/sites-enabled/000-default.conf

    sudo service apache2 restart
fi
