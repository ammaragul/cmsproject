<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package WordPress
 * @subpackage First_Theme
 * @since 1.0.0
 * template name: 404
 */
get_header(); 
?>
				<div class="page-content text">
					<p>We couldn't find the page you were looking for.</p>
					<p>Maybe try a search?</p><br>
					<?php get_search_form(); ?><br>
				</div><!-- .page-content -->
				<div class="page-content image404 img-fluid">
					<img src="<?php echo get_stylesheet_directory_uri(); ?>/404.png" /><br><br>
				</div><!-- .page-content -->
			</div><!-- .error-404 -->
        <div class="error-404 not-found">
				<header class="page-header"><br><br>
					<h1 class="page-title"><?php _e( '', 'firsttheme' ); ?></h1>
          </header>
<?php
get_footer();
