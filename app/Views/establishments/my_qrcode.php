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

    <h4 class="text-center"><b>Name: </b><br><?= session()->get('name')  ?></h4>

    <h4 class="text-center"><b>Address: </b><br><?= session()->get('barangay').', '.session()->get('town') ?>, Sorsogon</h4>
    <br>
    <center><a class="btn btn-primary" style="color: white">Print my QR Code</a></center>
</div>