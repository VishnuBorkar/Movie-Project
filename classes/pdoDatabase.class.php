<?php

class pdoDatabase{
	private $hostname = "localhost";
	private $username = "root";
	private $password = "";
	private $database = "moviedb";
	private $link = null;

	public $pdoConn;

		public function __construct() {

			try {
				$this->pdoConn  = new PDO("mysql:host=".$this->hostname.";dbname=".$this->database."", $this->username, $this->password);
				$this->pdoConn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			} catch (PDOException $e) {
				echo 'Connection failed: ' . $e->getMessage();
				//$errorlog1 = "[SFC-Agreement][db] = " . $e->getMessage() . " At line no " . __LINE__ . " in file ".__FILE__ . PHP_EOL;
				//error_log($errorlog1, 3, $logDir);
				exit;
			}
		}

		public function fetchRecords($properties) {

			if(!array_key_exists('table', $properties)) {
				return false;
			} else {
				$tablename = $properties['table'];
			}

			$columnStr = "*";
			if(array_key_exists('columns', $properties)) {
				$columnStr = $properties['columns'];
			}

			$joinStr = "";
			if(array_key_exists('joins', $properties)) {
				$joinStr = $properties['joins'];
			}

			$whereColStr = "";			
			if(array_key_exists('where', $properties)) {
				$whereColStr = $properties['where'];
			}

			$groupStr = "";
			if(array_key_exists('group', $properties)) {
				$groupStr = $properties['group'];
			}

			$orderStr = "";
			if(array_key_exists('order', $properties)) {
				$orderStr = $properties['order'];
			}

			$limitStr = "";
			if(array_key_exists('limit', $properties)) {
				$limitStr = $properties['limit'];
			}

			$selectQuery = "SELECT " . $columnStr . " FROM " . $tablename;

			if($joinStr != "") {
				$selectQuery .= " " . $joinStr;
			}

			if($whereColStr != "") {
				$selectQuery .= " WHERE " . $whereColStr;
			}

			if($groupStr != "") {
				$selectQuery .= " GROUP BY " . $groupStr;
			}

			if($orderStr != "") {
				$selectQuery .= " ORDER BY " . $orderStr;
			}

			if($limitStr != "") {
				$selectQuery .= " LIMIT " . $limitStr;
			}

			//echo "<br>".$selectQuery;
			$stmtSelectQuery = $this->pdoConn->prepare($selectQuery);
			$stmtExecute = false;

			if(!array_key_exists('whereData', $properties)) {
				$stmtExecute = $stmtSelectQuery->execute();
			} else {
				$stmtExecute = $stmtSelectQuery->execute($properties['whereData']);
			}
			/*if(empty($whereData)) {
				$stmtExecute = $stmtSelectQuery->execute();
			} else {
				$stmtExecute = $stmtSelectQuery->execute($whereData);
			}*/

			if($stmtExecute) {
				if(!array_key_exists('fetchAll', $properties)) {
					return $stmtSelectQuery->fetchAll(PDO::FETCH_ASSOC);
				} else {
					if($properties['fetchAll'] == 1) {
						return $stmtSelectQuery->fetchAll(PDO::FETCH_ASSOC);
					} else {
						return $stmtSelectQuery->fetch(PDO::FETCH_ASSOC);	
					}
				}
				/*if($fetchAll == 0 ){
					return $stmtSelectQuery->fetch(PDO::FETCH_ASSOC);
				} else 
					return $stmtSelectQuery->fetchAll(PDO::FETCH_ASSOC);
				}*/
			}
			echo $stmtExecute->errorInfo();
			return false;
		}

		public function insertData($tableName, $data){
			//Will contain SQL snippets.
			$rowsSQL = array();

			//Will contain the values that we need to bind.
			$toBind = array();

			//Get a list of column names to use in the SQL statement.
			$columnNames = array_keys($data[0]);

			//Loop through our $data array.		
			foreach($data as $arrayIndex => $row){
				$params = array();
				foreach($row as $columnName => $columnValue){
					$param = ":" . $columnName . $arrayIndex;
					$params[] = $param;
					$toBind[$param] = $columnValue; 
				}
				$rowsSQL[] = "(" . implode(", ", $params) . ")";
			}

			//Construct our SQL statement
			$sql = "INSERT INTO `$tableName` (" . implode(", ", $columnNames) . ") VALUES " . implode(", ", $rowsSQL);

			//Prepare our PDO statement.
			$pdoStatement = $this->pdoConn->prepare($sql);

			//Bind our values.
			foreach($toBind as $param => $val){
				$pdoStatement->bindValue($param, $val);
			}
			//Execute our statement (i.e. insert the data).
			if(!$pdoStatement->execute()) {
				//$pdoObject->rollBack();
				//$errorlog1 = "[SFC-Agreement][db][".date('Y-m-d')."] = " . $pdoStatement->errorInfo() . PHP_EOL;
				//error_log($errorlog1, 3, $logDir);
				//$systemError = 1;
				echo $pdoStatement->errorInfo();
				return false;
			}
			return true;
		}

		public function startTrans() {
			$this->pdoConn->beginTransaction();
		}

		public function rollbackTrans() {
			$this->pdoConn->rollBack();
		}

		public function commitTrans() {
			$this->pdoConn->commit();
		}

		public function lastAddedId() {
			return $this->pdoConn->lastInsertId();
		}

		public function logErr($data){
			$logFile = fopen(_SQLLOG_PATH.date('Y-m-d').'.txt', "a");
			$logLine = date('Y-m-d H:i:s').' | '.$data."\n\n";
			fwrite($logFile, $logLine);
			fclose($logFile);
		}
}
?>