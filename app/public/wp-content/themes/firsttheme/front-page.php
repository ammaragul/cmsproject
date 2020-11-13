<?php
/**
 * The template for displaying all  posts
 *
 * 
 *
 * template name:front-page.php
 * @subpackage First_Theme
 * @since First Theme 1.0
 */
get_header();
?>            
                   <?php get_template_part('includes/section', 'header');
                   get_template_part('includes/section', 'about');
                   get_template_part('includes/section', 'slidenew');
                   get_template_part('includes/section', 'category');
                   get_template_part('includes/section', 'event');
                   get_template_part('includes/section', 'gallery');
                   get_template_part('includes/section', 'contact');
                   ?>
  
<?php get_footer();