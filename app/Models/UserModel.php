<?php
namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model{

    protected $table = 'persons';
    protected $allowedFields = [ 'id', 'first_name', 'last_name', 'middle_name', 'traveler_id', 'phone_number', 'town', 'barangay', 'location_details', 'password'];
    protected $beforeInsert = ['beforeInsert'];
    protected $beforeUpdate= ['beforeUpdate'];

    protected function beforeInsert(array $data){
        $data = $this->passwordHash($data);
        return $data;
    }

    protected function beforeUpdate(array $data){
        $data = $this->passwordHash($data);
        return $data;
    }

    protected function passwordHash(array $data){
        if (isset($data['data']['password']))
            $data['data']['password'] = password_hash($data['data']['password'], PASSWORD_DEFAULT);
        return $data;
    }

}