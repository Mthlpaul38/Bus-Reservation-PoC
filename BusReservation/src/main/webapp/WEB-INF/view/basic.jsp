<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello Bulma!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <style>
        #changeHoverColorNav:hover {
            background-color: hsl(0, 0%, 29%) !important;
            /* background-color: white !important; */
        }
        
        #changeHoverColorMenu:hover {
            background-color: hsl(0, 0%, 50%);
        }
        
        #burger-menu:hover {
            background-color: hsl(0, 0%, 50%);
        }
    </style>
</head>

<body>
    <nav class="navbar has-background-dark" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="https://bulma.io">
                <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
            </a>

            <a id="burger-menu" role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true">
                    
            </a>
        </div>

        <div id="navbarBasicExample" class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item has-text-white has-background-grey-darker" id="changeHoverColorNav">
                            Home
                    </a>
                <a class="navbar-item has-text-white has-background-grey-darker" id="changeHoverColorNav">
                            Contact Us
                          </a>


            </div>

            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                        <a class="button is-light">
                          Log Out
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <section class="section">
        <div class="container">
            <div class="columns">
                <div class="column is-one-quarter has-background-white-ter">
                    <aside class="menu ">
                        <p class="menu-label">
                            General
                        </p>
                        <ul class="menu-list">
                            <li><a id="changeHoverColorMenu">Dashboard</a></li>
                            <li><a id="changeHoverColorMenu">My Bookings</a></li>
                            <li><a id="changeHoverColorMenu">Profile</a></li>
                            <li><a id="changeHoverColorMenu">Change Password</a></li>
                        </ul>

                    </aside>

                </div>
                <div class="column">
                    
                </div>

            </div>
        </div>
    </section>

    <script>
        $(document).ready(function() {

            // Check for click events on the navbar burger icon
            $(".navbar-burger").click(function() {

                // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
                $(".navbar-burger").toggleClass("is-active");
                $(".navbar-menu").toggleClass("is-active");

            });
        });
    </script>
</body>

</html>