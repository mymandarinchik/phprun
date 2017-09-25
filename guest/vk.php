<? top('Login Vk') ?>

<?include 'configVK.php';?>

<?
if (!$_GET['code']) {
    exit ('error code');
}
    $token = json_decode(file_get_contents('https://oauth.vk.com/access_token?client_id='.ID.'&redirect_uri='.URL.'&client_secret='.SECRET.'&code='.$_GET['code']), true);
if (!$token) {
    exit ('error token');
}
$data = json_decode(file_get_contents('https://api.vk.com/method/users.get?user_id='.$token[user_id].'&access_token='.$token[access_token].'&fields=uid,first_name,last_name,photo_big,sex,about'), true);
if (!$data) {
    exit ('error data');
}
$data_vk_auth = $data['response'][0];
echo "<pre>";
var_dump($data_vk_auth);
echo "</pre>";
echo "Привет: ".$data_vk_auth[first_name]."";
?>

<? bottom() ?>