<link rel="stylesheet" href="<?= base_url('/public/assets/css/style.css') ?>">
<form class="form-signin" action="<?= base_url('/establishment/login')?>" method="post">
    <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Covid Tracker</h1>
        <img class="mb-4" src="https://www.uokpl.rs/fpng/f/409-4098523_corona-virus-logo.png" alt="" width="72" height="72">
        <h3 class="h3">Establishment Login</h3>
        <?php if (session()->get('success')): ?>
            <div class="alert alert-success" role="alert">
                <?= session()->get('success') ?>
            </div>
        <?php endif; ?>
    </div>

    <div class="form-label-group">
        <input type="tel" id="inputPhoneNumber" class="form-control" name="phoneNumber" placeholder="Phone Number" value="<?php set_value('phone_number') ?>" required autofocus>
        <label for="inputPhoneNumber">Phone Number</label>
    </div>

    <div class="form-label-group">
        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
        <label for="inputPassword">Password</label>
    </div>
    <?php if (isset($validation)): ?>
        <div class="col-12" style="list-style-type: none">
            <p>
                <small style="color: red; list-style-type: none"><?= $validation->listErrors() ?></small>
            </p>
        </div>
    <?php endif; ?>

    <!--    <div class="checkbox mb-3">-->
    <!--        <label>-->
    <!--            <input type="checkbox" value="remember-me"> Remember me-->
    <!--        </label>-->
    <!--    </div>-->
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button><br><br>
    <center><a class="mt-5 mb-3" href="<?= base_url('/establishment/register')?>" style="margin-top: 50%">Create Account</a></center><br>
    <center><a class="mt-5 mb-3" href="<?= base_url('/people/register')?>" style="margin-top: 50%">Travelers Account</a></center>

    <p class="mt-5 mb-3 text-muted text-center">&copy; Gubat Devs</p>
</form>