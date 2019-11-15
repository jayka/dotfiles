# Defined in /var/folders/9y/x35rhzc96qgf_g2xgg0lkvkw392mtl/T//fish.ub60Zf/dwdamqcommon.fish @ line 2
function dwdamqcommon
	while read -l var
      echo $var
      curl -s -o ./$var "http://stage2ud1013.qa.paypal.com:10194/get?path=/x/web/STAGE2UD1013/amqcommon/$var"
    end <dwdfilelist
end
