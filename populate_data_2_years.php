#!/usr/bin/php
<?php 
echo 'start ';
flush();

try {
  $baza = new PDO("sqlite:/home/insofter/projects/data/data.db");
} catch (PDOException $e) {
  print $e->getMessage();
}

$poc=mktime( 0, 0, 0, 1, 1, 2012 );
$kon=mktime( 0, 0, 0, 1, 1, 2014 );

$baza->query("BEGIN TRANSACTION");

$k=0;


for( $i=$poc; $i<$kon; $i+=3600 ) {
  $cnt=date( 'ymdH', $i );

  for( $j=0; $j<4; ++$j ) {
    $sql="INSERT INTO flow (`counter_id`, `dtm`, `cnt`, `test`) VALUES( ".($j+1).", $i, $cnt$j, ".($j%2)." )";
    $baza->query($sql);
    /*    echo $sql;
     *        die();*/
  }

  if( ++$k>1000 ) {
    echo( '.' );
    $baza->query("COMMIT");
    $baza->query("BEGIN TRANSACTION");
    flush();
    $k=0;
  }
}

$baza->query("COMMIT");

echo "DONE\n"

?>

