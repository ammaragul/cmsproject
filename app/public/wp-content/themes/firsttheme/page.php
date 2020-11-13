<?php
/**
 * The template for displaying all  posts
 *
 * 
 *
 * template name:page.php
 * @subpackage First_Theme
 * @since First Theme 1.0
 */
get_header();
?>   
                   <?php get_template_part('includes/section', 'newheader');
                    get_template_part('includes/section', 'content'); ?>               
<?php get_footer();
