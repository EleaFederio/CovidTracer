<?php namespace App\Controllers;

use App\Models\EstablishmentModel;
use App\Models\TravelHistoryModel;
use Carbon\Carbon;
use App\Models\UserModel;

class TracerController extends BaseController
{

    public function record(){

        $user = new UserModel();
        $traveler = $user->where('traveler_id', $this->request->getPost('traveler_code'))->first();
        $establishment_id = $this->request->getPost('establishment');
        $travelerId = $traveler['id'];
        $travelerHistory = new TravelHistoryModel();
        $data = [
            'person_id' => $travelerId,
            'establishment_id' => $establishment_id,
            'created_at' => date('Y-m-d H:i:s')
        ];
        $travelerHistory->save($data);

//        $arr = array('establishment' => $this->request->getPost('establishment'), 'traveler_code' => $this->request->getPost('traveler_code'));
        $arr = array('establishment' => $this->request->getPost('establishment'), 'traveler_code' => $traveler['first_name']." ".$traveler["last_name"] );

        //add the header here
        header('Content-Type: application/json');
        echo json_encode( $arr );
    }

    public function recordTravel(){

        $establishment = new EstablishmentModel();
        $establishmentArea = $establishment->where('establishment_id', $this->request->getPost('establishment_id'))->first();
        $person_id = $this->request->getPost('person');
        $establishmentId = $establishmentArea['id'];
        $travelerHistory = new TravelHistoryModel();
        $data = [
            'person_id' => $person_id,
            'establishment_id' => $establishmentId,
            'created_at' => date('Y-m-d H:i:s')
        ];
        $travelerHistory->save($data);

//        $arr = array('establishment' => $this->request->getPost('establishment'), 'traveler_code' => $this->request->getPost('traveler_code'));
        $arr = array('establishment' => $this->request->getPost('establishment'), 'traveler_code' => $establishmentArea['name'] );

        //add the header here
        header('Content-Type: application/json');
        echo json_encode( $arr );
    }

    public function showEstablishmentsRecord(){
        $travelHistory = new TravelHistoryModel();
        $travelHistory = new TravelHistoryModel();
        $aaa = $travelHistories['travelHistories'] = $travelHistory->join('establishments', 'travel_history.establishment_id = establishments.id')->where('person_id', 1)->findAll();
        echo '<pre>';
        print_r($aaa);
        echo '</pre>';
//        return $travelHistory->$db->table('travel_history');
    }

    public  function showPersonRecord(){
        $travelHistory = new TravelHistoryModel();
        $travelHistory = new TravelHistoryModel();
        $aaa = $travelHistories['travelHistories'] = $travelHistory->join('establishments', 'travel_history.establishment_id = establishments.id')->where('person_id', $travelHistory->id)->findAll();
    }

}
