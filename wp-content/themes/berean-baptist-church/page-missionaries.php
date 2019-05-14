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
				<h1>Missionaries</h1>
			</div>
			<div class="main_content text-center">
				<div class="banner banner-img-top" title="Main Banner"></div>
				<?php 
				// the query
				$wpb_all_query = new WP_Query(array('post_type'=>'missionaries', 'post_status'=>'publish', 'posts_per_page'=>-1)); ?>
				<?php if ( $wpb_all_query->have_posts() ) : ?>
				<div class="container-fluid grey-background">
					<h1 class="py-5">Supported Missionaries</h1>
					<div class="row justify-content-center">
						<!-- the loop -->
						<?php while ( $wpb_all_query->have_posts() ) : $wpb_all_query->the_post(); ?>
							<div class="col-lg-6 col-xl-5">
								<img src="<?php the_field( "photo" ); ?>">
								<p class="px-0"><?php the_field( "description" ); ?></p>
							</div>
						<?php endwhile; ?>
						<!-- end of the loop -->
						<?php wp_reset_postdata(); ?>
						<?php else : ?>
							<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
						<?php endif; ?>
					</div>
				</div>
			</div>
		</main><!-- #main -->
	</div><!-- #primary -->



<?php get_footer(); ?>

