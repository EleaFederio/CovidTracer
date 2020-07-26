<div class="container">

    <br>
    <h3 class="h3 text-center"><?= session()->get('name')  ?></h3>

    <br>
    <h4 class="h4 text-center">Today's Visitors</h4><br>


    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Address</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($travelHistories as $key => $value) :?>
        <tr>
            <td><?php echo $value['first_name'].' '.$value['last_name'] ?></td>
            <td><?php echo $value['location_details'].', '.$value['barangay'].', '.$value['town']?></td>
        </tr>
        <?php endforeach; ?>
        </tbody>
    </table>



</div>