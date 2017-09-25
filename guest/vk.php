<?include 'configVK.php';
if (!$_GET['code']) {
    exit ('error code');
}
    $token = json_decode(file_get_contents('https://oauth.vk.com/access_token?client_id='.ID.'&redirect_uri='.URL.'&client_secret='.SECRET.'&code='.$_GET['code']), true);
if (!$token) {
    exit ('error token');
} else {
    $data = json_decode(file_get_contents('https://api.vk.com/method/users.get?user_id='.$token[user_id].'&access_token='.$token[access_token].'&fields=uid,first_name,last_name,photo,sex,bdate,city'), true);
    if (!$data) {
        exit ('error data');
    } else {
    $data = $data['response'][0];
    $data['uid_vk'] = $data['uid'];
    include 'gform.php';
    GoSingUp($data);
    }
}
?>