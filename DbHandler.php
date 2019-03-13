<?php

class DbHandler
{
    private $con;
 
    public function __construct()
    {
        require_once dirname(__FILE__) . '/DbConnect.php';
 
        $db = new DbConnect();
        $this->con = $db->connect();
    }

    public function addContactJson($userId, $contactJson) {
        $sql = "INSERT INTO `sync_data` (user_id, contact_json) 
        VALUES ('$userId', '$contactJson')";

        $stmt = $this->con->prepare($sql);

        if ($stmt->execute()) {
            $stmt->close();

            return true;
        }
		
        return false;
    }

}