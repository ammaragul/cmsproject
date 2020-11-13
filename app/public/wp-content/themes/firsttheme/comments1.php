<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage First_Theme
 * @since First Theme 1.0
 * template name: comments1.php
 */ 
get_header(); ?> 
    <?php get_template_part('includes/section', 'newheader');
     get_template_part('includes/section', 'comments');?> 
<?php get_footer(); ?>