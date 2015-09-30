<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Lets Spin</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form method="post" action="<?php echo site_url('login'); ?>">
            <label>Username: <input type="text" name="username" placehoder="Your Email Address"></label><br/>
            <label>Password: <input type="password" name="passswor" placehoder="Your Password"></label><br/>
            <?php if (isset($error_message)) { ?>
                <?php echo $error_message . "<br/>"; ?>
            <?php } ?>
            <input type="submit" value="login">
        </form>
        <div class="container">
            <div class="row">

            </div>
        </div>
        <script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>
