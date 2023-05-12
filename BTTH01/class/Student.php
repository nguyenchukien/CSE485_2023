<?php
class Student 
{
    private String $id;
    private String $name;
    private String $age;
    public function getID(){
        return $this->id;
    }
    public function setID($id){
        $this->id = $id;
    }
    public function getName(){
        return $this->name;
    }
    public function setName($name){
        $this->name = $name;
    }
    public function getAge(){
        return $this->age;
    }
    public function setAge($age){
        $this->age = $age;
    }
}


?>