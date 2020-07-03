<link rel="stylesheet" href="<?= base_url('/public/assets/css/style.css') ?>">
<form class="form-signin" action="<?= base_url('/people/register')?>" method="POST">
    <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Covid Tracker</h1>
        <img class="mb-4" src="https://www.uokpl.rs/fpng/f/409-4098523_corona-virus-logo.png" alt="" width="72" height="72">
        <h3 class="h3">Register</h3>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputFirstName" class="form-control" name="firstName" placeholder="First Name" required autofocus>
        <label for="inputFirstName">First Name</label>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputLastName" class="form-control" name="lastName" placeholder="Last Name" required autofocus>
        <label for="inputLastName">Last Name</label>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputMiddleName" class="form-control" name="middleName" placeholder="Middle Name" autofocus>
        <label for="inputMiddleName">Middle Name</label>
    </div>

    <div class="form-label-group">
        <input type="tel" id="inputPhoneNumber" class="form-control" name="phoneNumber" placeholder="Phone Number" required autofocus>
        <label for="inputPhoneNumber">Phone Number</label>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputTown" class="form-control" name="town" placeholder="Town" required autofocus>
        <label for="inputTown">Town</label>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputBarangay" class="form-control" name="barangay" placeholder="Barangay" required autofocus>
        <label for="inputBarangay">Barangay</label>
    </div>

    <div class="form-label-group">
        <input type="text" id="inputStreet" class="form-control" name="location_details" placeholder="Street/Purok/House No." required autofocus>
        <label for="inputStreet">Street/Purok/House No.</label>
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
    <center><a class="mt-5 mb-3" href="<?= base_url(base_url('/people/login'))?>" style="margin-top: 50%">I have account already</a></center>

    <p class="mt-5 mb-3 text-muted text-center">&copy; Gubat Devs</p>
</form>