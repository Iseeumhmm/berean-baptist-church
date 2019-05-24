<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Berean_Baptist_Church
 */

?>


	</div><!-- #content -->
	    <footer>
			<style>
				.helpful-img {
					background-image: url('<?php the_field('icr', 'option'); ?>')
				}
			</style>
			<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
            <div class="container-fluid">
                <div class="row justify-content-around">
                    <div class="col-md-3 col-lg-2 footer-col">
					<ul>
						<li><h2>Berean Baptist Church</h2></li>
						<li>932 Leathorne Street</li>
						<li>London, ON, N5Z 3M5</li>
						<li>519 685 5414</li>
						<li><a href="mailto: ">Send us an email</a></li>
					</ul> 
                    </div>
                    <div class="col-md-3 col-lg-2 footer-col">
						<ul>
							<li><h2>Additional Info</h2></li>
							<li><a href="">Make a Donation</a></li>
							<li><a href="">Events</a></li>
							<li><a href="">Sitemap</a></li>
							<li><a href="">Privacy Policy</a></li>
						</ul> 
                    </div>
                    <div class="col-md-3 col-lg-2 footer-col footer-col--last">
                        <div>
							<h2>Helpful Links</h2>
							<a href="">
								<div class="helpful-img"></div>
							</a>
                        </div>      
                    </div>
                </div>
            </div>
        </footer>
        
</div><!-- #page -->


</body>
</html>