<?php
/**
 * Berean Baptist Church functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Berean_Baptist_Church
 */

if ( ! function_exists( 'berean_baptist_church_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function berean_baptist_church_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on Berean Baptist Church, use a find and replace
		 * to change 'berean-baptist-church' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'berean-baptist-church', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'berean-baptist-church' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'berean_baptist_church_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'berean_baptist_church_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function berean_baptist_church_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'berean_baptist_church_content_width', 640 );
}
add_action( 'after_setup_theme', 'berean_baptist_church_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function berean_baptist_church_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'berean-baptist-church' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'berean-baptist-church' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'berean_baptist_church_widgets_init' );

//Add Open Graph Meta Info 

function meta_data() {
	
	echo '<!--og tags-->';
	echo '<meta property="og:type" content="business.business">';
	echo '<meta property="og:title" content="Berean Baptist Church London">';
	echo '<meta property="og:url" content="https://www.bereanbaptistlondon.org/">';
	echo '<meta property="og:image" content="http://berean.kingbeardreview.com/wp-content/uploads/2019/05/home-page.jpg">';
	echo '<meta property="business:contact_data:street_address" content="932 Leathorne Street">';
	echo '<meta property="business:contact_data:locality" content="London">';
	echo '<meta property="business:contact_data:region" content="Ontario">';
	echo '<meta property="business:contact_data:postal_code" content="N5Z 3M5">';
	echo '<meta property="business:contact_data:country_name" content="Canada">';

	echo '<link rel="apple-touch-icon" sizes="180x180" href="favicons/apple-touch-icon.png">';
	echo '<link rel="icon" type="image/png" sizes="32x32" href="favicons/favicon-32x32.png">';
	echo '<link rel="icon" type="image/png" sizes="16x16" href="favicons/favicon-16x16.png">';
	echo '<link rel="manifest" href="favicons/site.webmanifest">';
	echo '<link rel="mask-icon" href="favicons/safari-pinned-tab.svg" color="#0071bc">';
	echo '<link rel="shortcut icon" href="favicons/favicon.ico">';
	echo '<meta name="msapplication-TileColor" content="#0071bc">';
	echo '<meta name="msapplication-config" content="favicons/browserconfig.xml">';
	echo '<meta name="theme-color" content="#ffffff">';

	echo '<!-- Global site tag (gtag.js) - Google Analytics -->';
	echo '<script async src="https://www.googletagmanager.com/gtag/js?id=UA-30398424-23"></script>';
	echo '<script>';
	echo 'window.dataLayer = window.dataLayer || [];';
	echo 'function gtag(){dataLayer.push(arguments);}';
	echo "gtag('js', new Date());";

	echo "gtag('config', 'UA-30398424-23');";
	echo '</script>';
	echo " ";
}
add_action( 'wp_head', 'meta_data', 5 );


/**
 * Enqueue scripts and styles.
 */
wp_enqueue_style( 'wpb-google-fonts', 'https://fonts.googleapis.com/css?family=EB+Garamond:400,700|Work+Sans:300,400,700', false ); 
wp_enqueue_style( 'FontAwesome', get_template_directory_uri() . '/font-awesome/css/all.css', false );

function my_theme_scripts_function() {
	wp_enqueue_script('script', get_template_directory_uri() . '/js/script.js');
	wp_enqueue_script('my-script', get_template_directory_uri() . '/js/myscript.js', array('jquery'), '' , true );

}
add_action('wp_enqueue_scripts','my_theme_scripts_function');
  
  


function berean_baptist_church_scripts() {
	wp_enqueue_style( 'berean-baptist-church-style', get_stylesheet_uri() );

	wp_enqueue_script( 'berean-baptist-church-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'berean-baptist-church-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'berean_baptist_church_scripts' );

/**
 * Custom Footer ACF
 */
if( function_exists('acf_add_options_page') ) {
	
	acf_add_options_page(array(
		'page_title' 	=> 'Footer',
		'menu_title'	=> 'Footer Customization',
		'menu_slug' 	=> 'footer-customization',
		'redirect'		=> false
	));
}

/**
 * CUSTOM SUPPORTED MISSIONARIES POST TYPE
 */

function missionary_init() {
    // set up product labels
    $labels = array(
        'name' => 'Missionaries',
        'singular_name' => 'Missionaries',
        'add_new' => 'Add New Missionary',
        'add_new_item' => 'New Missionary',
        'edit_item' => 'Edit Missionary',
        'new_item' => 'New Missionary',
        'all_items' => 'All Missionaries',
        'view_item' => 'View Missionary',
        'search_items' => 'Search Missionaries',
        'not_found' =>  'No Missionary Found',
        'not_found_in_trash' => 'No Missionary found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Missionaries',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'missionary'),
        'query_var' => true,
        'menu_icon' => 'dashicons-randomize',
        'supports' => array(
			'title',
            'custom-fields'
        )
    );
    register_post_type( 'missionaries', $args );
    
}
add_action( 'init', 'missionary_init' );

/**
 * CUSTOM SCRIPTURES POST TYPE
 */
function scriptures_init() {
    $labels = array(
        'name' => 'Scriptures',
        'singular_name' => 'Scripture',
        'add_new' => 'Add New scriptures',
        'add_new_item' => 'Add New Scriptures',
        'edit_item' => 'Edit Scriptures',
        'new_item' => 'New Scriptures',
        'all_items' => 'All Scriptures',
        'view_item' => 'View Scriptures',
        'search_items' => 'Search Scriptures',
        'not_found' =>  'No Scriptures Found',
        'not_found_in_trash' => 'No Scriptures found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Scriptures',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'scriptures'),
        'query_var' => true,
        'menu_icon' => 'dashicons-randomize',
        'supports' => array(
            'title',
			'custom-fields'
		)
    );
    register_post_type( 'Scriptures', $args );
}
add_action( 'init', 'scriptures_init' );

/**
 * CUSTOM Sermons POST TYPE
 */
function sermons_init() {
    $labels = array(
        'name' => 'Sermons',
        'singular_name' => 'Sermon',
        'add_new' => 'Add New Sermons',
        'add_new_item' => 'Add New Sermons',
        'edit_item' => 'Edit Sermons',
        'new_item' => 'New Sermons',
        'all_items' => 'All Sermons',
        'view_item' => 'View Sermons',
        'search_items' => 'Search Sermons',
        'not_found' =>  'No Sermons Found',
        'not_found_in_trash' => 'No Sermons found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Sermons',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'sermons'),
        'query_var' => true,
        'menu_icon' => 'dashicons-randomize',
        'supports' => array(
            'title',
			'custom-fields'
		)
	);
	register_post_type( 'Sermons', $args );
	
	 // register taxonomy
	 register_taxonomy('sermons_by_year', 'Sermons', array('hierarchical' => true, 'label' => 'Sermons', 'query_var' => true, 'rewrite' => array( 'slug' => 'sermons-by-year' )));
	
}
add_action( 'init', 'sermons_init' );
/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

