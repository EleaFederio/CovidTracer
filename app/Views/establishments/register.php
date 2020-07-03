<link rel="stylesheet" href="<?= base_url('/public/assets/css/style.css') ?>">
<form class="form-signin" action="<?= base_url('/establishment/register')?>" method="POST">
    <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Covid Tracker</h1>
        <img class="mb-4" src="https://www.uokpl.rs/fpng/f/409-4098523_corona-virus-logo.png" alt="" width="72" height="72">
        <h3 class="h3">Establishment Register</h3>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputEstablishmentName" class="form-control" name="establishmentName" placeholder="Establishment Name" required autofocus>
        <label for="inputEstablishmentName">Establishment Name</label>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputDetails" class="form-control" name="establishmentDetails" placeholder="Establishment Details" required autofocus>
        <label for="inputDetails">Establishment Details</label>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputPhoneNumber" class="form-control" name="phoneNumber" placeholder="Phone Number" required autofocus>
        <label for="inputPhoneNumber">Phone Number</label>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputTown" class="form-control" name="town" placeholder="Town" autofocus>
        <label for="inputTown">Town</label>
    </div>

    <div class="form-label-group">
        <input type="tel" id="inputBarangay" class="form-control" name="barangay" placeholder="Barangay" required autofocus>
        <label for="inputBarangay">Barangay</label>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputLocationDetails" class="form-control" name="locationDetails" placeholder="Street/Purok/House No." required autofocus>
        <label for="inputLocationDetails">Street/Purok/House No.</label>
    </div>

    <div class="form-label-group">
        <input type="password" id="inputPassword" class="form-control" name="password"  placeholder="Password" required autofocus>
        <label for="inputPassword">Password</label>
    </div>

    <div class="form-label-group">
        <input type="password" id="inputConfirmPassword" class="form-control" name="passwordConfirmation" placeholder="Confirm Password" required>
        <label for="inputConfirmPassword">Confirm Password</label>
    </div>

    <?php if (isset($validation)): ?>
        <div class="col-12">
            <div class="alert alert-danger" role="alert">
                <?= $validation->listErrors() ?>
            </div>
        </div>
    <?php endif; ?>
    <!--    <div class="checkbox mb-3">-->
    <!--        <label>-->
    <!--            <input type="checkbox" value="remember-me"> Remember me-->
    <!--        </label>-->
    <!--    </div>-->
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button><br><br>
    <center><a class="mt-5 mb-3" href="<?= base_url('/establishment/login')?>" style="margin-top: 50%">I have account already</a></center>

    <p class="mt-5 mb-3 text-muted text-center">&copy; Gubat Devs</p>
</form>