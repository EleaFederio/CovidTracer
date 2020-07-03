<div class="container">

    <br>
    <h3 class="h3 text-center">Scan Visitor's QR</h3>

    <div class="embed-responsive embed-responsive-16by9">
        <iframe id="preview" class="embed-responsive-item" ></iframe>
    </div>

<!--    <video id="preview"></video>-->
    <script>
        let scanner = new Instascan.Scanner(
            {
                video: document.getElementById('preview')
            }
        );
        scanner.addListener('scan', function(content) {
            alert('Escaneou o conteudo: ' + content);
            window.open(content, "_blank");
        });
        Instascan.Camera.getCameras().then(cameras =>
        {
            if(cameras.length > 0){
                scanner.start(cameras[2]);
            } else {
                console.error("Não existe câmera no dispositivo!");
            }
            // if (cameras.length > 0) {
            //     var selectedCam = cameras[0];
            //     $.each(cameras, (i, c) => {
            //         if (c.name.indexOf('back') != -1) {
            //             selectedCam = c;
            //             return false;
            //         }
            //     });
            //
            //     scanner.start(selectedCam);
            // } else {
            //     console.error('No cameras found.');
            // }
        });
    </script>

</div>