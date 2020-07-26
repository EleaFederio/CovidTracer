<div class="container">

    <br>
    <h3 class="h3 text-center">Scan Visitor's QR</h3>

    <div class="embed-responsive embed-responsive-1by1">
<!--        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/zpOULjyy-n8?rel=0" allowfullscreen></iframe>-->
        <video class="embed-responsive-item" id="preview"></video>
    </div>

<!--    <video id="preview"></video>-->

    <script>
        let scanner = new Instascan.Scanner(
            {
                video: document.getElementById('preview'),
                mirror: false,
            }
        );
        scanner.addListener('scan', function(content) {
            // alert('Account ID: ' + content);



            $.ajax({
                url:'<?php echo base_url('record/this'); ?>',
                type: 'post',
                dataType:'json',
                data:{
                    'establishment': '<?= session()->get('id')  ?>',
                    'traveler_code': content
                },
                success:function(data){
                    swal({
                        title: data.traveler_code,
                        text: 'record added',
                        icon: "success",
                });
                },
                error:function (data) {
                    console.log(data)
                }
            });

            //window.open('<?php //echo base_url('record/this'); ?>//', "_blank");
        });
        Instascan.Camera.getCameras().then(cameras =>
        {
            if (cameras.length > 0) {
                var selectedCam = cameras[0];
                $.each(cameras, (i, c) => {
                    if (c.name.indexOf('back') != -1) {
                        selectedCam = c;
                        return false;
                    }
                });

                scanner.start(selectedCam);
            } else {
                console.error('No cameras found.');
            }
        });
    </script>

</div>