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
				<h1>Statement of Faith</h1>
			</div>
			<div class="main_content text-center statement">
				<div class="banner banner-img-top" title="Main Banner"></div>
					<h1 class="main-padding-y">Berean Baptist Church Statement of Faith</h1>
					<p class="px-0">Adopted January 25, 1997</p>
					<div class="secondary-margin text-left">
						<h1>Preamble</h1>
						<p class="px-0">In John 17:17, Jesus prayed to His Father concerning His Apostles that He would “sanctify them according to Thy truth; Thy word is TRUTH.” There is a no more fundamental basis for fellowship with God and with one another and other local churches than God’s holy, revealed, eternal truth. Jude exhorted his readers to “earnestly contend for the faith once delivered unto the saints” (Jude 3) as something more important than revelling in the joys
						and blessings of the salvation they held in common.
						The Apostle Paul constantly pressed for truth and sound doctrine to be believed, preached and held as the standard for all conduct and associations (1 Tim. 1:3-5; 4:1, 16; 6:3-6, 20-21; 2 Tim. 1:13; 2:15; 3:14-17; 4:3-4). The witness of the Scriptures is to the fundamental importance of knowing and acting on the truth.
						We believe that our understanding of the faith once delivered is essential for our ministry, fellowship and associations. This document is our statement about what we believe is THE FAITH. By mutual agreement to this statement of doctrinal beliefs, we find true unity of the Spirit and of the faith and God’s blessing (Eph. 4:1-16).<p>
						<div class="collapsible-container">
							<div class="heading-bar heading-bar--statement"></div>
							<button class="collapsible collapsible-top px-5"><span class="color-white">The Scriptures</span></button>
							<div class="content">
								<ul>
									<li>
										We believe that the Bible is the true and eternal Word of the true and living God and that it consists of the 66 books historically recognized by Bible-believers as the Scriptures (39 in the Old Testament and 27 in the New Testament).
									</li>
									<li>
										We believe that the Scriptures are verbally and plenarily inspired (that is “Godbreathed”) by God. We also believe that inspiration extends to the purposeful divine selection of the individual words in the original languages. As such then, the Scriptures are inerrant, infallible and effective unto that which God desires of them.
									</li>
									<li>
										We believe that the Scriptures constitute the completed revelation of God to mankind and that He is therefore no longer giving direct divine revelation to any person today.
									</li>
									<li>
										We further acknowledge that the Scriptures are our only and final rule and authority for faith and practice as Christians and as a Christian church and the true basis for Christian unity.
									</li>
									<li>
										We acknowledge the importance of having God’s Word in our own language and believe that the translation of the Scriptures must be in direct correspondence to the original languages as found in the Masoretic Text of the Old Testament and the Textus Receptus of the New Testament in order to be authoritative. We believe therefore, that the best and most accurate translation in the English language is the King James Version and therefore is the version that will be used for all public reading and preaching from the pulpit of Berean Baptist Church.
									</li>
								</ul>
								<p class="px-0 color-blue">[Deut. 4:2; 29:29; Isa. 40:8; 55:11; Jer. 26:2; John 17:17; Heb. 4:12; 2 Pt. 1:19-21; 2 Tim. 3:15-17; Rev. 22:19]</p>
								<?php 
								// the query
								$wpb_all_query = new WP_Query(array('post_type'=>'Scriptures', 'post_status'=>'publish', 'posts_per_page'=>-1)); ?>
								<?php if ( $wpb_all_query->have_posts() ) : ?>
								<!-- the loop -->
								<?php while ( $wpb_all_query->have_posts() ) : $wpb_all_query->the_post(); ?>
								<button class="collapsible px-5"><?php the_title(); ?> <span class="sub-title"><?php the_field( "sub_title" ); ?></span></button>
								<div class="content text-left">
									<p class="px-3 py-0"><?php the_field( "content" ); ?></p>
								</div>
								<?php endwhile; ?>
								<!-- end of the loop -->
								<?php wp_reset_postdata(); ?>
								<?php else : ?>
									<p class="px-0 py-0"><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
								<?php endif; ?>
							</div>
						</div>
					</div>	
				</div>
			</div>
		</main><!-- #main -->
	</div><!-- #primary -->


<?php get_footer(); ?>

