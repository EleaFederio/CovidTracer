<div class="container">

    <br>
    <center><div id="example"></div></center>

    <script>
        $('#example').qrcode({
            render: "qrcode",
            text: "<?= session()->get('traveler_id')  ?>"
        });
    </script>
    <br><br>

    <h4 class="text-center"><b>Name: </b><br><?= session()->get('first_name').' '.substr(session()->get('middle_name'), 0, 1).' '.session()->get('last_name')  ?></h4>
    <h4 class="text-center"><b>Phone Number: </b><br><?= '+63'.session()->get('phone_number')  ?></h4>
    <h4 class="text-center"><b>Address: </b><br><?= session()->get('barangay').', '.session()->get('town') ?>, Sorsogon</h4>
    <br>
    <center><a class="btn btn-primary" style="color: white">Scan Establishment Barcode</a></center>
</div>