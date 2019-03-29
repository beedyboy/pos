<?php 
include('auth.php');

$conn = Database::getInstance();

$product = $conn->db->prepare("ALTER TABLE `products` ADD `created_on` VARCHAR(30) NULL AFTER `checks`, ADD `updated_on` VARCHAR(30) NULL AFTER `created_on`");

 $product->execute();


$select = $conn->db->prepare("ALTER TABLE `sales` ADD `created_on` VARCHAR(30) NULL AFTER `kitchen`");
if($select->execute()): 

	echo "Data Updated Successfully";
else:
	echo "Not updated";


endif;

?>