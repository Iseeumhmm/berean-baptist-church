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
			background-image: url('<?php the_field('top_banner'); ?>')
		}
		.banner-img-bottom {
			background-image: url('<?php the_field('bottom_banner'); ?>')
		}
		.pastor-img {
			background-image: url('<?php the_field('pastor_image'); ?>')
		}
	</style>
	 
		<!-- ***********************  MAIN AREA *********************** -->
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
		<div class="heading-bar heading-bar--about">
			<h1>About Us</h1>
		</div>
		<div class="main_content about-page">
			<div class="banner banner-img-top" title="Main Banner"></div>
			<div class="secondary-margin text-left">
				<h1>Get to Know the Pastor</h1>
				<div>
					<div class="pastor-img"></div>
					<p class="pb-5">The greatest privilege in all the world is to serve the Lord Jesus Christ as a pastor. I am thankful to the LORD that He has lead in the establishment of Berean Baptist Church and that He has seen fit to call me and put me into this work. I am also thankful that the LORD has brought my dad and mom (now retired from full time pastoral ministry) to London to be a part of this ministry. Dad serves as our honorary pastor, which means he gets to preach and teach and share his wisdom and expertise in ministry, but he doesn’t get paid!!!! We joke about that but we all know that he will receive a far greater reward for faithful service when he stands before the Judgment Seat of Christ than anything we could offer him here on earth.<p>
				</div>
				<button onclick="location.href = '<?php echo get_site_url() ?>/statement-faith';" class="btn rounded-button">READ OUR STATEMENT OF FAITH</button>
				<p class="main-padding-y about-bold">&nbsp &nbsp &nbsp It’s a real blessing to be the pastor of THIS local church. The Lord Jesus is gathering a great group of people here….people who love the LORD, the Word of God, one another, the world of men that God Himself loves….people who want to serve Jesus Christ with the gifts and abilities that He has given by His Holy Spirit.</p>
				<p class="pt-5">
				We began with a few families in September 1996 and the LORD has been pleased to increase our number little by little over the years. We understand that Jesus Christ is the Head of the church and He has promised to “build His church.” Therefore we trust Him to do what He’s promised to do and we will do what He has given us to do…. Glorify Him, preach His Word, edify the believer, evangelize the unsaved, fellowship with the saints, pray and praise Him in the congregation! We trust the LORD to bring along to us those He wants to be here. Those He has already brought are indeed precious saints and wonderful people. After a couple of years renting meeting space, we, today, are in our own beautiful little building by the miraculous provision of our Master. Glory to God!!!!
				</p>
			</div>
			<div class="banner banner-img-bottom" title="Main Banner"></div>
			<div class="secondary-margin text-left">
				<p>
				I received the Lord Jesus Christ as my personal Saviour and Lord on October 1, 1959. I remember the night and the occasion very clearly. I was baptized 2 years later by my dad at Kitchener Park Baptist Church in Scarborough. My teenage years were rather rebellious. But even though I didn’t walk very close to the Lord, I knew the truth deep down somewhere in my being. It was the truth that the Lord used to get a hold of my heart at 18 years of age and begin to change me around to follow Him more closely.
				</p>
				<p>
				God brought into my life at that time a girl named Janice who later became my wife. We celebrated 40 years of marriage in June 2014! My how time flies! We have two wonderful kids….Rob and Julie, now in their late thirties! They are both married to wonderful spouses. Amanda is a wonderful daughter-in-law and Jay Hunsberger a great son-in-law. Each of our kids have two kids of their own. Rob and Amanda have Noah (12 years old in 2016) and Clara (9 years old in 2016). Jay and Julie have Jacob (11 years old in 2016) and Abigail (8 years old in 2016). We have the greatest grandkids and delight to have them around.	
				</p>
				<p>
				I was working as a draftsman for a manufacturing firm when we sensed the call of the LORD to train for pastoral ministry. In 1981 we packed up our little family and moved from St. Catharines to London where I attended London Baptist Bible College. I managed to cram 4 years of study into 6 years and earn a Bachelor of Theology degree. The Lord Jesus provided a wonderful opportunity beginning in September 1983 to serve Him as an assistant/intern pastor at Westminster Hope Baptist Church in London during my Bible school days. Those wonderful people were so gracious and patient with me. I learned a lot about ministry in those days. I graduated from LBBC in 1987 and was called to be full time Associate Pastor at Westminster Hope. I was also ordained to the gospel ministry at Westminster Hope in May 1988. In 1991, after a few years as Pastor at WHBC, we deemed that the Lord Jesus was moving us on.
				</p>
				<p>
				I then served the Lord Jesus as Assistant Pastor at Central Baptist Church in London for the next 5 years.
				</p>
				<p>
				We left Central in July 1996 and because the Lord had been preparing some hearts in the White Oaks area of south London, we moved into a church planting ministry in September of that year. Berean Baptist Church is the fruit of that step of faith.
				</p>
				<p>
				We chose the name “Berean” because we wanted to be a group of people with the same qualities as the Bereans of Acts 17:11…..people who would evidence nobility by receiving the word with all readiness of mind and then search the Scriptures daily to see whether those things were so. Then, once recognizing the truth of God, embracing it and making it a part of the very fabric of our lives and church. We are also Baptist by conviction, believing that the historic distinctives of the people called Baptists reflect best what the Bible teaches. We are an independent, unaffiliated, autonomous local Baptist church with Jesus Christ as our Head.
				</p>
				<p>
				If you would like some more information concerning Berean Baptist, please feel free to email me or call me on the phone. I would love to share with you what else the LORD is doing in our midst.
				</p>
				<p>
				I am “Your Servant For Jesus’ Sake”
				</p>
				<p class="color-blue">
				Pastor R. Bruce Redding
				</p>
			</div>
		</div>
		
	
		</main><!-- #main -->
	</div><!-- #primary -->


<?php get_footer(); ?>

