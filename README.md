# Woocommerce + MySQL + PhpMyAdmin 


<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/woocommerce"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Example application and CI/CD pipeline showing how to deploy WooCommerce to elestio.


# Once deployed ...

You can can open Wordpress admin panel here:

    https://[CI_CD_DOMAIN]/wp-admin
    Login: [ADMIN_EMAIL] (set in env var)
    password: [ADMIN_PASSWORD] (set in env var)

Once logged in you can check the WooCommerce link on the left inside WP Admin


You can connect to your DB through PHPMyAdmin:

    https://[CI_CD_DOMAIN]:24580/
    Login: root (set in reverse proxy configuration)
    Password: [ADMIN_PASSWORD] (set in reverse proxy configuration)
