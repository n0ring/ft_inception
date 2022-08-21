<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db' );

/** Database username */
define( 'DB_USER', 'wordpress_user' );

/** Database password */
define( 'DB_PASSWORD', 'password' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'W=:c7c?es,(:v5*|I 4h7QhP_.s/.vc:o_1qkB|WSnoC^;:X& a<thBY u3m(_D_' );
define( 'SECURE_AUTH_KEY',  ')P3/M_| Nb(_0/e|FH/w*WqYiJNf< 2#/Z?7l-^E.SUzLdjO)voXErXetq%IG>Yg' );
define( 'LOGGED_IN_KEY',    'HE:;tKMy4YQ#+;[CQ!X0B@7K#rlO]TOI2/^F|Q!BIXFg%<5.XsWkc7^{hA*Vq0lq' );
define( 'NONCE_KEY',        '*dy$=Mq5m-)+RHBQ;{4~S!PmE&u`>KOIRDCiKnR=.UC(5e~D+M[~+96Koc}35!Pd' );
define( 'AUTH_SALT',        'sfJD2Kg~HVI@Us97??PgbE>B2;_4.4{x5,d;i(Wm60j$~ta.iJ7:=:#]y<oav=rM' );
define( 'SECURE_AUTH_SALT', '-9yG51KK_a&>oJE^k~YG(9rK9Dm>eq!;JV[Sv`6@%jOo4vq39 fG~qNzj@DMdfOK' );
define( 'LOGGED_IN_SALT',   '[9+3w_AzO8|J1GTt3j%y;pVJ^%t>%P|@1}|E~;oWZ@T^nX_l(r_$~2nt{4<zB |r' );
define( 'NONCE_SALT',       ';+W t;=V,].T(>%r)pk?r}4qbHW#=iT9CK#BJ^s>YGeO^{*+7P/=^C^mdY/qdNzy' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
