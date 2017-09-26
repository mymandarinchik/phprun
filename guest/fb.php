<?include 'configFB.php';
if (!$_GET['code']) {
    exit ('error code');
}
    $token = json_decode(file_get_contents('https://graph.facebook.com/v2.10/oauth/access_token?client_id='.ID_FB.'&redirect_uri='.URL_FB.'&client_secret='.SECRET_FB.'&code='.$_GET['code']), true);
if (!$token) {
    exit ('error token');
} else {
    $data = json_decode(file_get_contents('https://graph.facebook.com/v2.10/me/?client_id='.ID_FB.'&redirect_uri='.URL_FB.'&client_secret='.SECRET_FB.'&code='.$_GET['code'].'&access_token='.$token[access_token].'&fields=id,name,first_name,last_name,email,location,birthday,picture'), true);
    $data['photo']= 'https://graph.facebook.com/v2.10/'.$data[id].'/picture?width=200&hight=200';
    if (!$data) {
        exit ('error data');
    } else {
    $data['uid_fb'] = $data['id'];
    unset($data['id']);
    /*echo "<pre>";
    var_dump($data);
    echo "</pre>";*/
    include 'gform.php';
    GoSingUp($data);
    }
}
?>