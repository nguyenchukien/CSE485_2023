<?php 
class StudentDAO 
{
    private $students = array();
    public function create($student) {
        array_push($this->students, $student);
    }
    public function read($id) {
        foreach ($this->students as $student) {
            if($student['id'] == $id){
                return $student;
            }
        }
        return null;
    }
    public function update($id, $newData){
        foreach ($this->students as $student) {
            if($student['id'] == $id){
                $student = array_merge($student, $newData);
                return True;
            }
        }
        return False;
    }
    public function delete($id) {
        foreach ($this->students as $student) {
            if($student['id'] == $id){
                unset($this->student[])
                return True;
            }
        }
        return False;
    }
}


?>