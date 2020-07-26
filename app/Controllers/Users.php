<?php namespace App\Controllers;

use App\Models\TravelHistoryModel;
use Carbon\Carbon;
use App\Models\UserModel;
use http\Url;

class Users extends BaseController
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
                $userModel = new UserModel();

                $userModel = $userModel->where('phone_number', $this->request->getVar('phoneNumber'))->first();

                $this->setUserMethod($userModel);
                return redirect()->to(base_url(base_url('people/dashboard')));
            }
        }

		echo view('templates/header', $data);
        echo view('people/login', $data);
        echo view('templates/footer', $data);
	}

    public function showDashboard(){
        $data = [];
        helper(['form']);
        if (session()->get('isLoggedIn') == null){
            return redirect()->to('/login');
        }

        $travelHistory = new TravelHistoryModel();
        $travelHistories['travelHistories'] = $travelHistory->join('establishments', 'travel_history.establishment_id = establishments.id')->where('person_id', $travelHistory->id)->findAll();


        echo view('templates/dashboard_header', $data);
        echo view('people/dashboard', $travelHistories);
        echo view('templates/footer', $data);
    }

    public function showTravelHistory(){
        $data = [];
        helper(['form']);
        if (session()->get('isLoggedIn') == null){
            return redirect()->to('/login');
        }

        $travelHistory = new TravelHistoryModel();
        $travelHistories['travelHistories'] = $travelHistory->join('establishments', 'travel_history.establishment_id = establishments.id')->where('person_id', session()->get('id'))->findAll();


        echo view('templates/dashboard_header', $data);
        echo view('people/travel_history', $travelHistories);
        echo view('templates/footer', $data);
    }

    public function showScanner(){
        $data = [];
        helper(['form']);
        if (session()->get('isLoggedIn') == null){
            return redirect()->to('/login');
        }
        echo view('templates/dashboard_header', $data);
        echo view('people/scanner', $data);
        echo view('templates/footer', $data);
    }

    public function logout(){
	    session()->destroy();
	    return redirect()->to('people/login');
    }

	public function setUserMethod($user){
        $data = [
            'id' => $user['id'],
            'first_name' => $user['first_name'],
            'last_name' => $user['last_name'],
            'middle_name' => $user['middle_name'],
            'traveler_id' => $user['traveler_id'],
            'phone_number' => $user['phone_number'],
            'town' => $user['town'],
            'barangay' => $user['barangay'],
            'location_details' => $user['location_details'],
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
                'firstName' => 'required',
                'lastName' => 'required',
                'middleName' => 'required',
                'phoneNumber' => 'required|is_unique[persons.phone_number]',
                'town' => 'required',
                'barangay' => 'required',
                'location_details' => 'required',
                'password' => 'required|min_length[8]',
                'passwordConfirmation' => 'matches[password]',
            ];

            if (! $this->validate($rules)) {
                $data['validation'] = $this->validator;
            }else{
                $userModel = new UserModel();

                $newData = [
                    'first_name' => $this->request->getVar('firstName'),
                    'last_name' => $this->request->getVar('lastName'),
                    'middle_name' => $this->request->getVar('middleName'),
                    'traveler_id' => date('Y-m-d-H-i-s'). '-'.rand(000000000000, 999999999999),
                    'phone_number' => $this->request->getVar('phoneNumber'),
                    'town' => $this->request->getVar('town'),
                    'barangay' => $this->request->getVar('barangay'),
                    'location_details' => $this->request->getVar('location_details'),
                    'password' => $this->request->getVar('password'),
                ];

                $userModel->save($newData);
                $session = session();
                $session->setFlashdata('success', 'Successful Registration');
                return redirect()->to(base_url('people/login'));
            }
        }

        echo view('templates/header', $data);
        echo view('people/register', $data);
        echo view('templates/footer', $data);
    }

	//--------------------------------------------------------------------

}
