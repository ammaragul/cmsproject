
<?php
function mytheme_files() { 
   
    wp_enqueue_style( 'mytheme_font1', esc_url_raw( 'https://fonts.googleapis.com/css?family=Montserrat:400,700' ), array(), null );
    wp_enqueue_style( 'mytheme_font2', esc_url_raw( 'https://fonts.googleapis.com/css?family=Raleway:400,100,200,300,300italic,500,700,600,800' ), array(), null );
    wp_enqueue_style( 'mytheme_stylesheet', esc_url_raw( 'https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css' ), array(), null );

    wp_enqueue_style('grid', get_template_directory_uri() . '/css/grid.css'); 
    wp_enqueue_style('menu', get_template_directory_uri() . '/css/menu.css'); 
    wp_enqueue_style('style', get_template_directory_uri() . '/css/style.css'); 
    wp_enqueue_style('jquery.bxslider', get_template_directory_uri() . '/css/jquery.bxslider.css'); 
    wp_enqueue_style('responsive', get_template_directory_uri() . '/css/responsive.css'); 
    wp_enqueue_style('animate', get_template_directory_uri() . '/css/animate.css');   
      }
  add_action('wp_enqueue_scripts', 'mytheme_files');
  