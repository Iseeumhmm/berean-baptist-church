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

    //response generation function
    $response = "";
    
    //function to generate response
    function my_contact_form_generate_response($type, $message){
    
        global $response;
    
        if($type == "success") $response = "<div class='success'>{$message}</div>";
        else $response = "<div class='error'>{$message}</div>";
    
    }
     //response messages
    $missing_content = "Please supply all information.";
    $email_invalid   = "Email Address Invalid.";
    $message_unsent  = "Message was not sent. Try Again.";
    $message_sent    = "Thanks! Your message has been sent.";

    //user posted variables
    $name = $_POST['message_name'];
    $email = $_POST['message_email'];
    $message = $_POST['message_text'];
    $messageSubject = $_POST['message_subject'];
    $submitted = $_POST['submitted'];

    //php mailer variables
	// $to = get_option('admin_email');
	$to = "rick@reddingdesigns.com";

    $subject = "Message about ".$messageSubject;
    $headers = 'From: '. $email . "\r\n" .
    'Reply-To: ' . $email . "\r\n";
 
    if($submitted == "1"){
        //validate email
        if(!filter_var($email, FILTER_VALIDATE_EMAIL))
        my_contact_form_generate_response("error", $email_invalid);
        else //email is valid
        {
            //validate presence of name and message
            if(empty($name) || empty($message)){
                my_contact_form_generate_response("error", $missing_content);
            }
            else //ready to go!
            {
                $sent = wp_mail($to, $subject, strip_tags($message), $headers);
                if($sent) {
                    my_contact_form_generate_response("success", $message_sent); //message sent!
                }
                else my_contact_form_generate_response("error", $message_unsent); //message wasn't sent
            }
        }
    // }
    }
    else if ($_POST['submitted']) my_contact_form_generate_response("error", $missing_content);

get_header();?>

	<!-- ***********************  GET IMAGES *********************** -->
	<style type="text/css">
		.banner-img-top {
			background-image: url('<?php the_field('main_banner'); ?>')
		}
		.three-block--2 {
		background-image: linear-gradient(rgba(0,0,0, .6),rgba(0,0,0, .6)),url('<?php the_field('service_sundays_img'); ?>')
		}
		.three-block--3 {
			background-image: linear-gradient(rgba(0,0,0, .6),rgba(0,0,0, .6)),url('<?php the_field('service_wednesdays_img'); ?>')
		}
	</style>
		<!-- ***********************  MAIN AREA *********************** -->
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="heading-bar heading-bar--about">
				<h1>Sermons Online</h1>
			</div>
			<div class="main_content text-center">
				<iframe class="main-margin-bottom" width="100%" height="675" id="gmap_canvas" src="https://maps.google.com/maps?q=932%20Leathorne%20&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
				<div class="main_content-sub-container grey-background">
					<h2>Berean Baptist Church</h2>
					<div class="container-fluid">
						<div class="row d-flex justify-content-center color-blue">
							<div class="col-md-3 home_interact" title="">
								<i class="fal fa-3x fa-map-marked-alt"></i>
								<p>932 Leathorne Street <br>London, ON, N5Z 3M5</p>
							</div>
							<div class="col-md-3 home_interact" title="">
								<i class="fal fa-3x fa-phone"></i>
								<p><a href="tel: 519-685-5414">519-685-5414</a></p>
							</div>
							<div class="col-md-3 home_interact" title="">
								<i class="fal fa-3x fa-envelope"></i>
								<a href="mailto: pastorbruce@bereanbaptistlondon.org"><p>pastorbruce@ bereanbaptistlondon.org</p></a>
							</div>
						</div>
					</div>
				</div>
				<!-- ********************************************* CONTACT FORM  *********************************************** -->

				<section class="contact-form">
                    <div class="center-text">
						<h2>Send us a Message</h2>
						<p class="px-0">All fields are required.</p>
                        <div class="message"><?php echo $response; ?></div>
                    </div>
                    <div id="respond">
                        <form action="#respond" method="post">
							<div class="container-fluid">
								<div class="row d-flex justify-content-center">
									<div class="col-lg-3">
										<label class="input_box" for="message_name"><input type="text" name="message_name" placeholder="Name" value="<?php echo esc_attr($_POST['message_name']); ?>"></label>
									</div>
									<div class="col-lg-3">
										<label class="input_box" for="message_email"><input type="text" name="message_email" placeholder="Email" value="<?php echo esc_attr($_POST['message_email']); ?>"></label>
									</div>
								</div>
								<div class="row d-flex justify-content-center">
									<div class="col-lg-3">
										<label class="input_box" for="message_phone"><input type="text" name="message_phone" placeholder="Phone" value="<?php echo esc_attr($_POST['message_phone']); ?>"></label>
									</div>
									<div class="col-lg-3">
										<label class="input_box" for="message_subject"><input type="text" name="message_subject" placeholder="Subject" value="<?php echo esc_attr($_POST['message_subject']); ?>"></label>
									</div>
								</div>
								<div class="row d-flex justify-content-center">
									<div class="col-lg-6">
										<label class="input_box" for="message_text"><textarea class="message" type="text" name="message_text" placeholder="Message"><?php echo esc_textarea($_POST['message_text']); ?></textarea></label>
									</div>
								</div>
								<input type="hidden" name="submitted" value="1">
								<button class="btn btn-white rounded-button" value="Send Message" type="submit">SEND MESSAGE</button>

							</div>
                            
                        </form>
                    </div>
				</section>
			<!-- ********************************************* CONTACT FORM  *********************************************** -->
				<div class="container-fluid">
					<div class="row d-flex justify-content-center">
						<div class="col-auto three-block three-block--1" title="Service Times">
							<h2>Berean Baptist <br> Service Times</h2>
						</div>
						<div class="col-auto three-block three-block--2" title="Sundays">
						<h2>Sundays</h2>
						<p><?php the_field('service_times_sundays'); ?></p>
						</div>
						<div class="col-auto three-block three-block--3" title="Wednesdays">
						<h2>Wednesdays</h2>
						<p><?php the_field('service_times_wednesdays'); ?></p>
						</div>
					</div>
				</div>
			</div>
		</main><!-- #main -->
	</div><!-- #primary -->


<?php get_footer(); ?>

