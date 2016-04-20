<?php
/**
* 
*/
class Database
{
    public static function connect()
    {
        $dbHost = 'localhost';
        $dbUser = 'root';
        $dbPass = '';
        $dbName = 'distribuidora';
        return new mysqli($dbHost, $dbUser, $dbPass, $dbName, 3306);
    }
}
