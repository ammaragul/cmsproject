<footer>
		<div class="container">			
			<div class="row">				
				<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
					<p class="footerp">2016 © Copyright - Quotes PSD Templates. All rights reserved.</p>
					<p class="footerp">Free Template by <a href="https://freetemplates.pro/">FreeTemplates.pro</a></p>
				</div>
				<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
					<div class="social">
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<?php wp_enqueue_script( 'mytheme_stylesheet', esc_url_raw( 'https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js' ), array(), null);
   
  wp_enqueue_script( 'fixed-responsive-nav', get_template_directory_uri() . '/js/fixed-responsive-nav.js' );
  wp_enqueue_script( 'jquery.bxslider', get_template_directory_uri() . '/js/jquery.bxslider.js' );
  wp_enqueue_script( 'script', get_template_directory_uri() . '/js/script.js');
  wp_enqueue_script( 'waypoints.min', get_template_directory_uri() . '/js/waypoints.min.js' );?>

   <?php wp_footer() ?>
   </body>
   </html>


