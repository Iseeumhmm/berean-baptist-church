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
	<!-- ***********************  GET  THE IMAGES *********************** -->
	<style>
		.banner-img-top {
			background-image: url('<?php the_field('main_banner'); ?>')
		}
	</style>
		<!-- ***********************  MAIN AREA *********************** -->
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="heading-bar heading-bar--about">
				<h1>The New Testament in 60 Days</h1>
			</div>
			<div class="main_content text-center banner-27nt60">
				<div class="banner banner-img-top" title="Main Banner"></div>
				<div class="main_content-sub-container">
					<h2>Start Reading Today</h2>
					<p class="secondary-margin px-0 pb-5">"For the word of God is quick, and powerful, and sharper than any twoedged sword, piercing even to the dividing asunder of soul and spirit, and of the joints and marrow, and is a discerner of the thoughts and intents of the heart"</p>
					<p class="px-0">(Hebrews 4:12 - KJV)</p>
					<div class="container-fluid">
						<?php
						$table = get_field( 'start_reading_today' );
						if ( ! empty ( $table ) ) {
							foreach ( $table['body'] as $tr ) {
								echo '<div class="row week">';
								$i = 0;
								$a = 0;
								foreach ( $tr as $td ) {
									if ( $i == 0 ) {
										echo '<div class="col-lg-3">';
										echo '<h2>' . $td['c'] . '</h2>';
										echo '</div>';
										$i = 1;
										$a = 0;
									} else {
										if ( $a == 0 ) {
											echo '<div class="col-lg-3 grey-box color-blue">';
											echo '<a href="' . $td['c'] . '"><div class="grey-box--text">';
											$a = 1;
										} else {
											echo $td['c'];
											echo '</div></a>';
											echo '</div>';
											$a = 0;
										}
									}
								}
								echo '<hr>';
								echo '</div>';
							}
						} ?>
						</div>
					</div>
					<button onclick="" class="btn btn-white rounded-button">DOWNLOAD CHECKLIST</button>
				</div>
			</div>
	
		</main><!-- #main -->
	</div><!-- #primary -->


<?php get_footer(); ?>

