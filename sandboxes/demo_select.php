<?php

$retries = 3;
while ($retries > 0)
{
    try 
    {

      // Execute Loop for 1000.

      for($i=0;$i<1000;$i++)
             {

      $dbh = new PDO('mysql:dbname=demodb;charset=utf8mb4;host=127.0.0.1;port=6447','router_user','password');
      $dbh->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);

             $sql = "select *,@@port from `t_demo`";
             $stmt = $dbh->query($sql);
             while ($row = $stmt->fetch()) 
                {
                  echo $row[1],"\t" ,$row[2] . "\n";
                }
                  sleep(1);
                }
      
      // End of SQL Loop.
      $retries = 0;
    } 
      catch (PDOException $e) 
    {
      echo ('データベース接続失敗。'.$e->getMessage());
      $retries--;
      usleep(1000);
    }
}

$dbh = null;
?>
