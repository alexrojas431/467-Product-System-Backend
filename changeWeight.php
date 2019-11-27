<?php
 try { //exception thrown if something happens
                $dsn = "mysql:host=courses;dbname=z1853137";
                $pdo = new PDO($dsn, "z1853137", "1998Mar21");
        } catch (PDOexception $e) { //catch the exception
                echo "Connection to DB failed: " . $e->getMessage();
	}
echo $_POST['cost'], $_POST['wValue'];
switch ($_POST['WType']) {
	case "minW":
		echo "min";
		$weightEdit = "UPDATE weight SET cost=? WHERE minW=?;";
		$weightResult = $pdo->prepare($weightEdit);
		$weightResult->execute(array($_POST['cost'], $_POST['wValue']));
		break;
	case "maxW":
		echo "max";
		$weightEdit = "UPDATE weight SET cost =? WHERE maxW=?;";
		$weightResult = $pdo->prepare($weightEdit);
		$weightResult->execute(array($_POST['cost'], $_POST['wValue']));
		break;
	default:
		echo "somehing went wrong";
}
header("Refresh:1; url=/~z1853137/467admin.php");
?>
