<body>
  <!-- Load Stripe.js on your website. -->
  <script src="https://js.stripe.com/v3"></script>

  <!-- Create a button that your customers click to complete their purchase. Customize the styling to suit your branding. -->
  <form action="" method="post">
    <?php 
    include('Views/components/billing-details.php')
    ?>
  </form>

  <div id="error-message"></div>

</body>