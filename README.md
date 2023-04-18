# Woocommerce + MySQL + PhpMyAdmin 


<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/woocommerce"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Example application and CI/CD pipeline showing how to deploy WooCommerce to elestio.


# Once deployed ...

You can open Wordpress admin panel here:

    https://[CI_CD_DOMAIN]/wp-admin
    Login: [ADMIN_EMAIL] (set in env var)
    password: [ADMIN_PASSWORD] (set in env var)

Once logged in you can check the WooCommerce link on the left inside WP Admin


You can connect to your DB through PHPMyAdmin:

    https://[CI_CD_DOMAIN]:24580/
    Login: root (set in reverse proxy configuration)
    Password: [ADMIN_PASSWORD] (set in reverse proxy configuration)


To activate SMTP / Email sending please follow those instructions:
https://wordpress.org/plugins/wp-mail-smtp/

You can use our transactionnal smtp server with those settings:

    SMTP Host: 172.17.0.1
    SMTP Port: 25
    Encryption: No encryption
    Authentication: No
    Username: (leave empty)
    Password: (leave empty)
    From Email address: [DOMAIN]@vm.elestio.app

Of course you can also use any third party SMTP (AWS SESn Sendgrid, ...) and then use your own domain and from address

