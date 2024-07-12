<?php
// エラーレポートを有効にする
error_reporting(E_ALL);
ini_set('display_errors', 1);

// データベース接続情報
$dsn = 'mysql:dbname=zouuu_zouuu_db;host=mysql635.db.sakura.ne.jp;charset=utf8';
$user = 'zouuu';
$password = '12345678qju';

try {
    $pdo = new PDO($dsn, $user, $password);
    echo "データベース接続成功<br>";
} catch (PDOException $e) {
    echo "データベース接続失敗: " . $e->getMessage() . "<br>";
    error_log("データベース接続失敗: " . $e->getMessage());
    exit("データベース接続失敗: " . $e->getMessage());
}
?>