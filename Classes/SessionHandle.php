
<?php
class SessionHandle
{
    public function __construct()
    {
        session_start();
    }

    public function logged_in() {
        return isset($_SESSION['customerID']);
    }

    public function confirm_logged_in() {
        if (!$this->logged_in()) {
            $redirect = new Redirector("login.php");
        }
    }
}