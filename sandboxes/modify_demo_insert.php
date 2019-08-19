<?php

$retries = 3;
while ($retries > 0)
 {
      try 
      {
      $dbh = new PDO('mysql:dbname=demodb;charset=utf8mb4;host=127.0.0.1;port=6446','router_user','password');
      $sql = "set names 'utf8mb4' collate 'utf8mb4_general_ci'";
      $stmt = $dbh->prepare($sql);
      $stmt->execute();

      for($i=0;$i<1000;$i++){
      $sql = "insert into t_demo(memo) values('MySQL InnoDB Clusterデモ')";
      $sql2 = "select *,@@port from t_demo";
      $stmt = $dbh->query($sql);
      $stmt = $dbh->query($sql2);
      while ($row = $stmt->fetch())
      {
      echo $row[1],"\t" ,$row[2] . "\n";
      }
      sleep(1);
      $retries = 0;
      }
      } 
      catch(PDOException $e) 
      {
      echo "データベース接続エラー"; 
      $retries;
      usleep(500);
      } 

 }
$dbh = null;
?>
