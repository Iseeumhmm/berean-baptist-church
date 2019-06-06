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
		<main id="main" class="site-main ministries-page">
			<div class="heading-bar heading-bar--about">
				<h1>Ministries</h1>
			</div>
			<div class="main_content text-center">
				<div class="banner banner-img-top" title="Main Banner"></div>
				<div class="main_content-sub-container">
					<h1 class="pb-5">Come Join us in Growing Together</h1>
					<div class="container-fluid ministries_container_padding grey-background">
						<div class="row d-flex justify-content-center">
							<div class="col-md-6 col-lg-5 donations-methods" title="">
								<i class="fal fa-3x fa-cubes color-blue pb-5"></i>
								<h2>Sunday School</h2>
								<p><a href="#" data-toggle="modal" data-target="#bibleVerseModal"><span class="color-blue">Four Bible verses</span></a> give us our reason to have a Sunday Bible School. And the activities that we are involved in each week.</p>							
								<!-- Modal -->
								<div class="modal fade" id="bibleVerseModal" tabindex="-1" role="dialog" aria-labelledby="bibleVerseModalTitle" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content text-center">
									<div class="modal-header">
										<h2 class="modal-title w-100" id="bibleVerseModalTitle">Four Bible Verses</h2>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
									<div class="text-left px-3">
										<p>
										Romans 8 lets us know that God has a plan for each and every person. First, and most importantly, for the “not yet saved” it is their salvation that God is actively concerned with. After our salvation, though, He wants us all to be conformed to the image of His Son. For this to happen we must get to know Him.
										<p>
										Romans 12 shows us God wants His children to serve Him, but warns that it is very possible to be conformed to this present world rather than the image of His Son. We must get to know Him. In John 14 Jesus very clearly lets us know that He Himself is truth and no one can go to the Father except through Him. We must get to know Him – the Truth. Finally in 2 Timothy 2 we are commanded to: Study to shew thyself approved unto God, a workman that needeth not to be ashamed, rightly dividing the word of truth.	
										</p>
										<p>
										This is what we do here at Berean Baptist Church, Sunday Bible School. Every week our teachers study and prepare and then on Sunday morning they help all the students in their class to study, and learn the Truth, the Way, and the Life. They guide their students to be conformed to the image of Christ and not conformed to the image of this world. Our teachers lead their class by example as well as their teaching to be transformed by the renewing of their minds, So they may prove what is that good, and acceptable, and perfect, will of God, that is – that they will know Him.
										<p>
										In all of this we encourage our people to study the Scriptures for themselves and be “good Bereans” rightly dividing the word of truth.
										</p>
									</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
									</div>
									</div>
								</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-5 donations-methods" title="">
								<i class="fal fa-3x fa-bible color-blue pb-5"></i>
								<h2>Institute</h2>
								<p>Berean Baptist Bible Institute (3BI) – Mondays  7:00 – 9:00pm – From September to June</p>
							</div>
						</div>
						<div class="container-fluid">
							<div class="row d-flex justify-content-center pt-5">
								<div class="col-md-6 col-lg-5 donations-methods" title="">
									<i class="fal fa-3x fa-user color-blue pb-5"></i>
									<h2>55+ Seniors Fellowship</h2>
									<p>Seniors Fellowship is for men and women aged 55+. They meet on the last Friday of each month at 10:30am.</p>
									<a href="" class="mailto-link"><u>Learn More</u></a>
								</div>
								<div class="col-md-6 col-lg-5 donations-methods" title="">
									<i class="fal fa-3x fa-users color-blue pb-5"></i>
									<h2>Men’s Fellowship</h2>
									<p>Men’s Fellowship is open to young men (teenagers) all the way to senior men.</p>
									<a href="" class="mailto-link"><u>Learn More</u></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<p class="secondary-margin pt-5">In all of this we encourage our people to study the Scriptures for themselves and be “good Bereans” rightly dividing the word of truth.</p>
			</div>
			
		</main><!-- #main -->
	</div><!-- #primary -->


<?php get_footer(); ?>

