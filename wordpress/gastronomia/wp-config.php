<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'wordpress_test');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'wordpress');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '123456');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'BnS+1A%TZwey?l@$?,5_,2-w!?F=2)6L,RR)d3(UZP+!d!hMfolqj40Z$.L/#gr{');
define('SECURE_AUTH_KEY',  '8t::w|_|iK5YM <TrH_HRBXl(w9Y3_{a2_|!+h*v`|g_y94.IDZDcn{_[+D# qzo');
define('LOGGED_IN_KEY',    'PAK.FgMh=0M3]^+%[,1w(`J3>9j$]|.WyFcc-m&M_mYE#SkU4|aL]9Xu7]6X+9%_');
define('NONCE_KEY',        'TbUgD&i)R`Kp+g8&alB&nt!HKn3tij;TVyz[u4-g|4X(iw:IDr +W-FkQ6;7MOt&');
define('AUTH_SALT',        'b6%Pk,=;YHuHJ%hsyR:-}~cuY(} (._;$v)s /a6<aGdVu7kCuh= Lu^cMj>Ipyh');
define('SECURE_AUTH_SALT', 'm_c&F0/b%loBw!U6y.T/]rJ_jjPc/Z4pD8mOMI@+Nw?6!`5w1G||AJ5A`OY TIjP');
define('LOGGED_IN_SALT',   '-3 E|<{eytJ.IJi4C+vmWhdV2}-})-]GYvVS&NJQLU[? c-*9VC^9-KoIW|Ur4N(');
define('NONCE_SALT',       '}#(mL%(X+f2d-IcRo3=XCRti3|HAdD+y||w;&xz A-Vv,OS*9%/To<{OQ_2k+J+<');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d'information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');