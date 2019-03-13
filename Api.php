<?php
 
require_once dirname(__FILE__) . '/DbHandler.php';

$db = new DbHandler();

$response = array();
$response['error'] = true;
$response['message'] = 'Required parameter(s) are missing';
 
if (isset($_GET['call'])) {
    switch ($_GET['call']) {
		case 'sync_contacts':
			if (isset($_POST['id']) && isset($_POST['contacts'])) {
				$userId = $_POST['id'];
				$contactJson = $_POST['contacts'];

				if($db->addContactJson($userId, $contactJson)) {
					$response['error'] = false;
					$response['message'] = 'Sync contact successfull';
				}
			}
			break;
    }
}
 
echo json_encode($response);