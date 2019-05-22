<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Berean_Baptist_Church
 */
get_header();?>
	<!-- ***********************  GET IMAGES *********************** -->
	<style>
		.banner-img-top {
			background-image: url('<?php the_field('main_banner'); ?>')
		}
	</style>
		<!-- ***********************  MAIN AREA *********************** -->
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="heading-bar heading-bar--about">
				<h1>Sermons Online</h1>
			</div>
			<div class="main_content text-center">
				<div class="banner banner-img-top" title="Main Banner"></div>
					<div id="exTab1" class="container d-flex justify-content-center">	
						<ul class="nav nav-pills justify-content-center main-padding-y w-100 pb-5">
							<!-- ***********************  GET SERMONS & CREATE TABS  *********************** -->
							<?php 
							$yearly = new WP_Query(array('post_type'=>'Sermons', 'posts_per_page' => -1));
							$prev_year = null;
							$i = 1;
							if( $yearly->have_posts() ) : while( $yearly->have_posts() ) : $yearly->the_post();
								$this_year = get_the_date('Y');
								if (is_null($prev_year) || $prev_year != $this_year) {
									if ($prev_year != $this_year && !is_null($prev_year)) {
										echo '</li>';
									}
									if (is_null($prev_year)) {
										echo '<li class="active">';
									} else {
										echo '<li>';
									}
									echo '<a  href="#' . $i . 'a" data-toggle="tab"><button class="btn sermon-button">' . $this_year . '</button></a>';
									$prev_year = $this_year;
									$i++;
								}
								$prev_year = $this_year;
								endwhile;  
								echo '</div>';
							endif;
							?>
						</ul>
						<div class="tab-content secondary-margin d-block text-left">
							<?php
							$prev_year = null;
							$i = 1;
							if( $yearly->have_posts() ) : while( $yearly->have_posts() ) : $yearly->the_post();
								$this_year = get_the_date('Y');
								if (is_null($prev_year) || $prev_year != $this_year) {
									if ($prev_year != $this_year && !is_null($prev_year)) {
										echo '</div>';
									}
									if (is_null($prev_year)) {
										echo '<div class="tab-pane active" id="' . $i . 'a">';
									} else {
										echo '<div class="tab-pane" id="' . $i . 'a">';
									}
									$prev_year = $this_year;
									$i++;
								}
								if ($prev_year == $this_year) {
									echo '<a href="';
									the_field('audio_file');
									echo '"><i class="fas fa-volume sermon-audio color-blue pr-3"></i></a>';
									echo '<span class="sermon-title">';
									the_title();
									echo '</span><span class="sermon-date">' . get_the_date() . '</span>';
									echo '<p class="sermon-pastor">';
									the_field('pastors_name');
									echo '</p>';
									echo '<hr class="sermon-line"></hr>';
								}
								$prev_year = $this_year;
								endwhile;  
								echo '</div>';
							endif;
							?>
						</div>
					</div>
				</div>
			</div>
		</main><!-- #main -->
	</div><!-- #primary -->

<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<?php get_footer(); ?>

