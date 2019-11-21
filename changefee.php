<?php
 try { //exception thrown if something happens
                $dsn = "mysql:host=courses;dbname=z1853137";
                $pdo = new PDO($dsn, "z1853137", "1998Mar21");
        } catch (PDOexception $e) { //catch the exception
                echo "Connection to DB failed: " . $e->getMessage();
	}
echo $_POST['fee'];
$handlingEdit = "UPDATE handling SET fee=? WHERE feetype=1;";
$handlingResult = $pdo->prepare($handlingEdit);
$handlingexec = $handlingResult->execute(array($_POST['fee']));

//header("Refresh:0; url=/~z1853137/467admin.php");
?>
