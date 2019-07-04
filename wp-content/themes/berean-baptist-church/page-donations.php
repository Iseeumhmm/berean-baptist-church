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
	<!-- ***********************  GET THE IMAGES *********************** -->
	<style>
		.banner-img-top {
			background-image: url('<?php the_field('main_banner'); ?>')
		}
	</style>
		<!-- ***********************  MAIN AREA *********************** -->
	<div id="primary" class="content-area">
		<main id="main" class="site-main donations-page">
			<div class="heading-bar heading-bar--about">
				<h1>Donations</h1>
			</div>
			<div class="main_content text-center">
				<div class="banner banner-img-top donations-div" title="Main Banner"></div>
				<div class="main_content-sub-container">
					<h2>The Gift of Giving</h2>
					<p class="secondary-margin pb-5">If the Lord should be leading you to help Berean Baptist Church financially, please use one of the following options...</p>
					<div class="main_content-sub-container grey-background">
						<div class="container-fluid">
							<div class="row d-flex justify-content-center">
								<div class="col-md-6 col-lg-5 donations-methods" title="">
									<i class="fal fa-3x fa-money-check-alt color-blue pb-5"></i>
									<h2>Cheque</h2>
									<p>You may mail your donation by cheque to the church address:</p>
									<p class="color-blue">932 Leathorn Street <br>London, ON, N5Z 3M5</p>
								</div>
								<div class="col-md-6 col-lg-5 donations-methods" title="">
									<i class="fal fa-3x fa-envelope-open-dollar color-blue pb-5"></i>
									<h2>E-Transfer</h2>
									<p>You may use e-transfer using the email address:</p>
									<a href="mailto: donations@bereanbaptistlondon.org" class="mailto-link">donations@bereanbaptistlondon.org</a>
								</div>
							</div>
						</div>
					</div>
					<p class="pt-5">In order for us to give you a tax receipt, you will need to provide us with your name and address. Thank you for considering Berean Baptist Church with your gift.  We appreciate the help.  God bless!</p>
				</div>
			</div>
	
		</main><!-- #main -->
	</div><!-- #primary -->



<?php get_footer(); ?>

