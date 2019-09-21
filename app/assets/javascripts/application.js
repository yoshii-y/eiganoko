// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require bootstrap
//= require_tree .


//header
$(document).ready(function(){
    $('.show_comment_signed').click(function(){
        $('.show_comment_modal').fadeIn();
    });
});

//movie_show
$(document).ready(function(){
    $('.show_comment_signed').click(function(){
        $('.show_comment_modal').fadeIn();
    });
});

$(document).ready(function(){
    $('.close_comment_modal').click(function(){
        $('.show_comment_modal').fadeOut();
    });
});


//mypage
$(document).ready(function(){
    $('.profile_update').hover(function(){
        $(this).css('color','red');
        $('.profile_introduction').fadeIn();
    },
    function(){
        $(this).css('color','black');
        $('.profile_introduction').fadeOut();
    });
});

$(document).ready(function(){
    $('.profile_update').click(function(){
        $('.user_modal').fadeIn();
    });
});

$(document).ready(function(){
    $('.close_modal').click(function(){
        $('.user_modal').fadeOut();
    });
});

$(document).ready(function(){
    $('#nav_profile_comment').click(function(){
        $('.user_profile_comment').css('display','block');
        $('.user_profile_profile').css('display','none');
        $('.user_profile_like').css('display','none');
        $(this).css('color','#000011');
        $('#nav_profile_profile').css('color','rgba(0, 0, 0, 0.5)');
        $('#nav_profile_like').css('color','rgba(0, 0, 0, 0.5)');
    });
});

$(document).ready(function(){
    $('#nav_profile_profile').click(function(){
        $('.user_profile_comment').css('display','none');
        $('.user_profile_profile').css('display','block');
        $('.user_profile_like').css('display','none');
        $(this).css('color','#000011');
        $('#nav_profile_comment').css('color','rgba(0, 0, 0, 0.5)');
        $('#nav_profile_like').css('color','rgba(0, 0, 0, 0.5)');
    });
});

$(document).ready(function(){
    $('#nav_profile_like').click(function(){
        $('.user_profile_comment').css('display','none');
        $('.user_profile_profile').css('display','none');
        $('.user_profile_like').css('display','block');
        $(this).css('color','#000011');
        $('#nav_profile_comment').css('color','rgba(0, 0, 0, 0.5)');
        $('#nav_profile_profile').css('color','rgba(0, 0, 0, 0.5)');
    });
});

$(document).ready(function(){
    $('.user_follow_count').click(function(){
        $('.user_follow_parent_modal').fadeIn();
    });
});

$(document).ready(function(){
    $('.close_follow_modal').click(function(){
        $('.user_follow_parent_modal').fadeOut();
    });
});

$(document).ready(function(){
    $('.user_follower_count').click(function(){
        $('.user_follower_parent_modal').fadeIn();
    });
});

$(document).ready(function(){
    $('.close_follower_modal').click(function(){
        $('.user_follower_parent_modal').fadeOut();
    });
});