<div class="container">

    <br>
    <center><div id="example"></div></center>

    <script>
        $('#example').qrcode({
            render: "qrcode",
            text: "<?= session()->get('establishment_id')  ?>"
        });
    </script>
    <br><br>

    <h4 class="text-center"><small>Name: </small><br><?= session()->get('name')  ?></h4>

    <h4 class="text-center"><small>Address: </small><br><?= session()->get('barangay').', '.session()->get('town') ?>, Sorsogon</h4>
    <br>
    <center><a class="btn btn-primary" target="_blank" href="<?= base_url('public/assets/qr_poster.php?id='.session()->get('establishment_id').'&name='.session()->get('name').'') ?>" style="color: white">Print my QR Code</a></center>
</div>