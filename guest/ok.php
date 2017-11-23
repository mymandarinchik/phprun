<?php top('Login OK') ?>

<?php include 'configOK.php';?>

<?php
if (!$_GET['code']) {
    exit ('error code');
}

     $params = array(
        'code' => $_GET['code'],
        'redirect_uri' => URL_OK,
        'grant_type' => 'authorization_code',
        'client_id' => ID_OK,
        'client_secret' => SECRET_OK
    );

    $url = 'http://api.odnoklassniki.ru/oauth/token.do';
    
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url); // url, куда будет отправлен запрос
    curl_setopt($curl, CURLOPT_POST, 1);

    // передаём параметры
    curl_setopt($curl, CURLOPT_POSTFIELDS, urldecode(http_build_query($params))); 

    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
    $result = curl_exec($curl);
    curl_close($curl);

    $token = json_decode($result, true);



if (!$token) {
    exit ('error token');
}
/*
echo "<pre>";
var_dump($token);
echo "</pre>";
*/
$secret_key = MD5($token['access_token'].SECRET_OK);
$sig = md5('application_key='.PUBLISH_OK.'format=jsonmethod=users.getCurrentUser'.$secret_key.'');
$data = json_decode(file_get_contents('https://api.ok.ru/fb.do?application_key='.PUBLISH_OK.'&format=json&method=users.getCurrentUser&sig='.$sig.'&access_token='.$token[access_token].''), true);
echo "<pre>";
var_dump($data);
echo "</pre>";

echo "Привет: ".$data['name'];
?>

<?php bottom() ?>