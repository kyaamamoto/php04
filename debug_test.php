<?php
// エラーレポートを有効にする
error_reporting(E_ALL);
ini_set('display_errors', 1);

// デバッグメッセージを表示
echo "デバッグメッセージ: スクリプトが実行されています。<br>";

// POSTデータを表示
echo "POSTデータ: ";
print_r($_POST);
echo "<br>";

// POSTデータを取得
$name = $_POST["name"] ?? '';
$lid = $_POST["lid"] ?? '';
$lpw = $_POST["lpw"] ?? '';
$kanri_flg = $_POST["kanri_flg"] ?? '';

// データベース接続情報
$dbname = "zouuu_zouuu_db";
$host = "mysql635.db.sakura.ne.jp";
$username = "zouuu";
$password = "12345678qju";

echo "データベース接続を試みます...<br>";
try {
    // データベース接続
    $pdo = new PDO("mysql:dbname={$dbname};charset=utf8;host={$host}", $username, $password);
    echo "データベース接続成功<br>";
} catch (PDOException $e) {
    exit("DB接続エラー: " . $e->getMessage());
}

// データ登録SQL作成
$sql = "INSERT INTO user_table (name, lid, lpw, kanri_flg, life_flg) VALUES (:name, :lid, :lpw, :kanri_flg, 0)";
echo "SQLステートメント: " . $sql . "<br>";

echo "SQL実行を試みます...<br>";
$stmt = $pdo->prepare($sql);

$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':lid', $lid, PDO::PARAM_STR);
$stmt->bindValue(':lpw', password_hash($lpw, PASSWORD_DEFAULT), PDO::PARAM_STR);
$stmt->bindValue(':kanri_flg', $kanri_flg, PDO::PARAM_INT);

$status = $stmt->execute();

if ($status === false) {
    $error = $stmt->errorInfo();
    echo "SQLエラー: " . $error[2] . "<br>";
} else {
    echo "データ登録成功<br>";
    // 必要に応じて、以下のコメントを解除してリダイレクトを有効にする
    // header('Location: login.php');
    // exit;
}
echo "SQL実行完了<br>";
?>