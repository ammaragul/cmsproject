<div class ="container-fluid">
<h1 class="comm">Comments</h1>
<ol class="comment-list">
            <?php
                wp_list_comments( array(
                    'style'       => 'ol',
                    'short_ping'  => true,
                    'avatar_size' => 74,
                   
                ) );
            ?>
        </ol><!-- .comment-list -->
<?php 
//Get only the approved comments
$args = array(
    'status' => 'approve'
);
// The comment Query
$comments_query = new WP_Comment_Query;
$comments = $comments_query->query( $args );
// Comment Loop
if ( $comments ) {    
 foreach ( $comments as $comment ) {
 echo '<p>' . $comment->comment_content . '</p>';
 }
} else {
 echo 'No comments found.';
}
?>
</div>