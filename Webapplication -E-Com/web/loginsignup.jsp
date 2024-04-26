
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login & Registration Form</title>

  <link rel="stylesheet" href="css/loginsignup.css">
</head>
<body>
  <div class="container">
    <input type="checkbox" id="check">
    <div class="login form">
      <header>Login</header>
      <form action="#">
        <input type="text" placeholder="Enter your email">
        <input type="password" placeholder="Enter your password">
        <a href="#">Forgot password?</a>
        <input type="button" class="button" value="Login">
      </form>
      <div class="signup">
        <span class="signup">Don't have an account?
         <label for="check">Signup</label>
        </span>
      </div>
    </div>
    <div class="registration form">
      <header>Signup</header>
      <form action="#">
        <input type="text" placeholder="Enter your email">
        <input type="password" placeholder="Create a password">
        <input type="password" placeholder="Confirm your password">
        <input type="button" class="button" value="Signup">
      </form>
      <div class="signup">
        <span class="signup">Already have an account?
         <label for="check">Login</label>
        </span>
      </div>
    </div>
  </div>
    
      <script>
    document.getElementById('check').addEventListener('change', function() {
      var loginForm = document.querySelector('.form.login');
      var registrationForm = document.querySelector('.form.registration');
      if(this.checked) {
        loginForm.style.display = 'none';
        registrationForm.style.display = 'block';
      } else {
        loginForm.style.display = 'block';
        registrationForm.style.display = 'none';
      }
    });

    function submitLoginForm() {
      // Implement your login form submission logic here
      console.log('Login form submitted');
      // Validate inputs or send data to server
    }

    function submitSignupForm() {
      // Implement your signup form submission logic here
      console.log('Signup form submitted');
      // Validate inputs or send data to server
    }
  </script>
</body>
</html>