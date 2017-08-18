sys=`uname`;
if [ $sys == 'Darwin' ];

then
    #Mac OS
  sudo sed -i '' s/'return json_encode($json, JSON_PRETTY_PRINT)'/'return json_encode($json, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)'/g plugins/advanced-custom-fields-pro/api/api-helpers.php

else
  #не Mac OS
  sudo sed -i s/'return json_encode($json, JSON_PRETTY_PRINT)'/'return json_encode($json, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)'/g plugins/advanced-custom-fields-pro/api/api-helpers.php

fi

sudo mkdir themes/template/acf-json
sudo chmod 777 themes/template/acf-json
sudo echo '<? echo "Silence is golden";?>'>>themes/template/acf-json/index.php
