<?php
namespace App\Validation;
use App\Models\EstablishmentModel;
use App\Models\UserModel;

class UserRoles{

    public function validateUser(string $str, string $field, array $data){
        $model = new UserModel();
        $user = $model->where('phone_number', $data['phoneNumber'])
            ->first();
        if (!$user)
            return false;

        return password_verify($data['password'], $user['password']);
    }

    public function validateEstablishment(string $str, string $field, array $data){
        $model = new EstablishmentModel();
        $user = $model->where('phone_number', $data['phoneNumber'])
            ->first();
        if (!$user)
            return false;

        return password_verify($data['password'], $user['password']);
    }

}