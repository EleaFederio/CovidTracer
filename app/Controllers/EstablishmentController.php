<?php namespace App\Controllers;

use App\Models\EstablishmentModel;
use Carbon\Carbon;
use App\Models\UserModel;

class EstablishmentController extends BaseController
{
    public function index()
    {
        $data = [];
        helper(['form']);

        if ($this->request->getMethod() == 'post'){
            $rules = [
                'phoneNumber' => 'required',
                'password' => 'required|min_length[8]|validateUser[phoneNumber, password]',
            ];

            $errors = [
                'password' => [
                    'validateUser' => 'Phone Number or Password don\'t match'
                ]
            ];

            if (! $this->validate($rules, $errors)) {
                $data['validation'] = $this->validator;
            }else{
                $establishmentModel = new EstablishmentModel();

                $establishmentModel = $establishmentModel->where('phone_number', $this->request->getVar('phoneNumber'))->first();

                $this->setUserMethod($establishmentModel);
                return redirect()->to(base_url('establishment/dashboard'));
            }
        }

        echo view('templates/header', $data);
        echo view('establishments/login', $data);
        echo view('templates/footer', $data);
    }

    public function showDashboard(){
        $data = [];
        helper(['form']);
        if (session()->get('isLoggedIn') == null){
            return redirect()->to('/login');
        }
        echo view('templates/establishment_dashboard_header', $data);
        echo view('establishments/dashboard', $data);
        echo view('templates/footer', $data);
    }

    public function myQrCode(){
        $data = [];
        helper(['form']);
        if (session()->get('isLoggedIn') == null){
            return redirect()->to('/login');
        }
        echo view('templates/establishment_dashboard_header', $data);
        echo view('establishments/my_qrcode', $data);
        echo view('templates/footer', $data);
    }

    public function showScanner(){
        $data = [];
        helper(['form']);
        if (session()->get('isLoggedIn') == null){
            return redirect()->to('/login');
        }
        echo view('templates/establishment_dashboard_header', $data);
        echo view('establishments/scanner', $data);
        echo view('templates/footer', $data);
    }

    public function logout(){
        session()->destroy();
        return redirect()->to(base_url('/establishment/login'));
    }

    public function setUserMethod($user){
        $data = [
            'id' => $user['id'],
            'name' => $user['name'],
            'phone_number' => $user['phone_number'],
            'town' => $user['town'],
            'barangay' => $user['barangay'],
            'location_details' => $user['location_details'],
            'establishment_id' => $user['establishment_id'],
            'isLoggedIn' => true,
        ];

        session()->set($data);
        return true;
    }

    public function login(){

    }

    public function register(){
        $data = [];
        helper(['form']);

        if ($this->request->getMethod() == 'post'){
            $rules = [
                'establishmentName' => 'required',
                'establishmentDetails' => 'required',
                'phoneNumber' => 'required|is_unique[establishments.phone_number]',
                'town' => 'required',
                'barangay' => 'required',
                'locationDetails' => 'required',
                'password' => 'required|min_length[8]',
                'passwordConfirmation' => 'matches[password]',
            ];

            if (! $this->validate($rules)) {
                $data['validation'] = $this->validator;
            }else{
                $establishmentModel = new EstablishmentModel();

                $newData = [
                    'name' => $this->request->getVar('establishmentName'),
                    'phone_number' => $this->request->getVar('phoneNumber'),
                    'town' => $this->request->getVar('town'),
                    'barangay' => $this->request->getVar('barangay'),
                    'location_details' => $this->request->getVar('locationDetails'),
                    'establishment_id' => date('Y-m-d-H-i-s'). '-'.rand(000000000000, 999999999999),
                    'details' => $this->request->getVar('establishmentDetails'),
                    'password' => $this->request->getVar('password'),
                ];

                $establishmentModel->save($newData);
                $session = session();
                $session->setFlashdata('success', 'Successful Registration');
                return redirect()->to('establishment/login');
            }
        }

        echo view('templates/header', $data);
        echo view('establishments/register', $data);
        echo view('templates/footer', $data);
    }

    //--------------------------------------------------------------------

}
