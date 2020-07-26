<div class="container">

    <br>
    <h4 class="h4 text-center">My Travel History</h4><br>
    <ul class="list-group list-group-flush">

        <?php foreach ($travelHistories as $key => $value) :?>
        <li class="list-group-item"><?php echo $value['name'] ?> <small>(<?php echo $value['created_at'] ?>)</small></li>
        <?php endforeach; ?>
    </ul>


<!--    <table class="table">-->
<!--        <thead class="thead-dark">-->
<!--        <tr>-->
<!--            <th scope="col">Name</th>-->
<!--            <th scope="col">Address</th>-->
<!--        </tr>-->
<!--        </thead>-->
<!--        <tbody>-->
<!--        --><?php //foreach ($travelHistories as $key => $value) :?>
<!--            <tr>-->
<!--                <td>--><?php //echo $value['first_name'].' '.$value['last_name'] ?><!--</td>-->
<!--                <td>--><?php //echo $value['location_details'].', '.$value['barangay'].', '.$value['town']?><!--</td>-->
<!--            </tr>-->
<!--        --><?php //endforeach; ?>
<!--        </tbody>-->
<!--    </table>-->



</div>