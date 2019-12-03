<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/css.css">
</head>

<body>
    <a class="button loginToggle">yoyo</a>

    <!-- LOGIN MODAL -->
    <div class="modal" id="loginModal">
        <div class="modal-background"></div>
        <div class="modal-card">

            <header class="modal-card-head">
                <p class="modal-card-title">Login</p>
                <button class="toggleModal delete" aria-label="close"></button>
            </header>

            <form action="login" method="post">
                <section class="modal-card-body">
                    <div class="field">
                        <label class="label">Username</label>
                        <p class="control has-icons-left has-icons-right">
                            <input class="input" name="username" type="text" placeholder="Username"> <span class="icon is-small is-left"> <i class="fas fa-envelope"></i>
						</span> <span class="icon is-small is-right"> <i
							class="fas fa-check"></i>
						</span>
                        </p>
                    </div>
                    <div class="field">
                        <label class="label">Password</label>
                        <p class="control has-icons-left">
                            <input class="input" name="password" type="password" placeholder="Password">
                            <span class="icon is-small is-left"> <i class="fas fa-lock"></i>
						</span>
                        </p>
                    </div>

                </section>
                <footer class="modal-card-foot">
                    <button class="button is-success" type="submit">Login</button>
                    <button type="button" class="signupToggle button is-success">Signup</button>
                </footer>
            </form>
        </div>
    </div>

    <!-- SIGNUP MODAL -->
    <div class="modal" id="signupModal">
        <div class="modal-background"></div>
        <div class="modal-card">
            <header class="modal-card-head">
                <p class="modal-card-title">Sign Up</p>
                <button class="toggleModal delete" aria-label="close"></button>
            </header>
            <section class="modal-card-body">
                <form action="register" method="post">
                    <!-- Content ... -->
                    <div class="field">
                        <label class="label">First Name</label>
                        <div class="control">
                            <input class="input" type="text" placeholder="First Name" name="first_name">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Last Name</label>
                        <div class="control">
                            <input class="input" type="text" placeholder="Last Name" name="last_name">
                        </div>
                    </div>

                    <div class="control">
                        <label class="label">Gender</label> <label class="radio"> <input
                            type="radio" name="gender" value="M"> Male
                        </label> <label class="radio"> <input type="radio" name="gender" value="F">
                            Female
                        </label>
                    </div>

                    <div class="field">
                        <label class="label">Telephone</label>
                        <div class="control has-icons-left has-icons-right">
                            <input class="input is-success" type="number" step="0.01" name="number" placeholder="Text input"> <span class="icon is-small is-left"> <i class="fas fa-phone"></i>
                            </span> <span class="icon is-small is-right"> <i
                                class="fas fa-check"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Email</label>
                        <div class="control has-icons-left has-icons-right">
                            <input class="input is-danger" id="email" type="email" placeholder="Email input" name="email" value="hello@">
                          
                            <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                              </span>
                            <span class="icon is-small is-right">
                                <i class="fas fa-exclamation-triangle"></i>
                              </span>
                        </div>
                        <p class="email-invalid-result help is-danger">This email is invalid</p>
                    </div>

                    <div class="field">
                        <label class="label">Password</label>
                        <p class="control has-icons-left">
                            <input class="input" type="password" placeholder="Password" name="password">
                            <span class="icon is-small is-left"> <i class="fas fa-lock"></i>
                            </span>
                        </p>
                    </div>

            </section>
            <footer class="modal-card-foot">
                <button class="button is-success" id="validate" value="submit">Sign Up</button>
                <button class="loginToggle button is-success">Login</button>
            </footer>
            </form>
        </div>
    </div>


    <script>
        // the following code deals with sign-up email validation.
        function validate(e) {
            var booking_email = $('#email').val();
            // alert(booking_email);
            if (/(.+)@(.+){2,}\.(.+){2,}/.test(booking_email)) {
                // alert("valid");

            } else {
                // alert("not valid");
                $('.email-invalid-result').show();
                e.preventDefault();
            }
        }
        $("#validate").on("click", validate);

        // the following code deals with modal toggling.
        $(document).ready(function() {
            $(".email-invalid-result").hide();
            $(".loginToggle").click(function() {
                $("#signupModal").removeClass("is-active");
                $("#loginModal").addClass("is-active");
            });
            $(".signupToggle").click(function(e) {
                // e.preventDefault;
                $("#loginModal").removeClass("is-active");
                $("#signupModal").addClass("is-active");
            });
            $(".toggleModal").click(function() {
                $("#loginModal").removeClass("is-active");
                $("#signupModal").removeClass("is-active");
            });
        });
    </script>


</body>

</html>