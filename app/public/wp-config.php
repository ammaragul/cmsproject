<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'site21' );

/** MySQL database username */
define( 'DB_USER', 'student21.site21' );

/** MySQL database password */
define( 'DB_PASSWORD', 'Ringring123#' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'SvMYo6jTfsuPjKcW6X8Ja//eO+dPJgZEdEXtOm1yJ2HUGuTWiquI//66jzRb67V7C0a05xDf5ZLWjyodLiLVvg==');
define('SECURE_AUTH_KEY',  'TYYzwIQpfGvW66VzdwwDXMwc4Y47n3OMD89Gy5ofBAG6AAFDQVAG5mvNpeZWJoJWY9Q36TgTCxtEOuqO6v20kA==');
define('LOGGED_IN_KEY',    '2oG2MqQgTkxhkkvKyZcQdvG6AuCAEQdaG8ZIl4atBuIHgZwOYU2+hb+Szq4GVEc8JBywT466/ZdodVF6ubZ8fg==');
define('NONCE_KEY',        'HYWndGkdFivZDNRDvH42pVjkrrribSBCbYmE0Ia6DyzZkoewWbrQLjx6kdd2ix8pjQuCz1y48/BmgkoxY0N/Mg==');
define('AUTH_SALT',        's6BfuXvHeEnTLvezSeykjYSLSHj9lZaJBKrtX4dKjKClpc68bBF68xRf0dNaAj0OXxeoItXheUacHoFRTi9gWg==');
define('SECURE_AUTH_SALT', 'KiNXYqIPJQubFUS6g4v3NEjmQ9YrcPRoaf6YTPCVkaJUn/miK3rN2QK4CRXuRZAZJyFBm+9OTLJGnioKiuM0NA==');
define('LOGGED_IN_SALT',   'fjdGaME0EAgJFsAI2+PTJyBYVVcaI9KOK/YyIQuoEw3tZuKsiwb1icMuLjZsOmXfUWWHaxbl19C+a/jTNkv2lw==');
define('NONCE_SALT',       'RocjVuM1wgQ1qzehOs/bQ0MFXuMzYbESRs6lmrNsoPrmMwXyFqYNkWgJJrFe6IfoqjVFxBsnBAToI6MykSSijw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
if ($_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https') $_SERVER['HTTPS']='on';
require_once ABSPATH . 'wp-settings.php';
