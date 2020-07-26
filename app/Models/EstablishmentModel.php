<?php
namespace App\Models;

use CodeIgniter\Model;

class EstablishmentModel extends Model{

    protected $table = 'establishments';
    protected $allowedFields = [ 'id', 'name', 'phone_number', 'town', 'barangay', 'location_details', 'establishment_id', 'details', 'password'];
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