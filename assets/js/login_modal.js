/*
 *
 * login-register modal
 * Autor: Creative Tim
 * Web-autor: creative.tim
 * Web script: http://creative-tim.com
 * 
 */
function showRegisterForm(){
    $('.loginBox').fadeOut('fast',function(){
        $('.registerBox').fadeIn('fast');
        $('.login-footer').fadeOut('fast',function(){
            $('.register-footer').fadeIn('fast');
        });
        $('.modal-title').html('Register with');
    }); 
    $('.error').removeClass('alert alert-danger').html('');
       
}
function showLoginForm(){
    $('#loginModal .registerBox').fadeOut('fast',function(){
        $('.loginBox').fadeIn('fast');
        $('.register-footer').fadeOut('fast',function(){
            $('.login-footer').fadeIn('fast');    
        });
        
        $('.modal-title').html('Login with');
    });       
     $('.error').removeClass('alert alert-danger').html(''); 
}

function openLoginModal(){
    showLoginForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}
function openRegisterModal(){
    showRegisterForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}

function loginAjax(){
    /*   Remove this comments when moving to server
    $.post( "/login", function( data ) {
            if(data == 1){
                window.location.replace("/home");            
            } else {
                 shakeModal(); 
            }
        });
    */

/*   Simulate error message from the server   */

    var emailId = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    
    var jsonLogin = {"email":emailId, "password" : password};
    
    $.ajax({
                        url:"https://goviddo.online/loginCrowdfund",
                        method:"POST",
                        data: jsonLogin,
                        success:function(data)
                        {
                            
                            if(data.status == "failed")
                            {
                                shakeModal();
                            }
                            else{
                                window.localStorage.setItem("mypitch_user_login_email", data.crowdfund_user_email);
    		                    window.localStorage.setItem("mypitch_user_login_userid", data.crowdfun_user_id);
    		                    
    		                    var currentLocation = window.location;
    		                    var pathname = new URL(currentLocation).pathname;
    		                    var arrPath = pathname.split('/');
    		                    
    		                    if(arrPath[2].indexOf("raise.html") !== -1)
    		                    {
    		                        window.location.href = "create_project.html";
    		                    }
    		                    else if((arrPath[2].indexOf("invest_details.html") !== -1) || (arrPath[2].indexOf("invest_details_team.html") !== -1) || (arrPath[2].indexOf("invest_details_documents.html") !== -1))
    		                    {
    		                        var arrPathProId = currentLocation.href.split('proid=');
    		                        console.log(arrPathProId[1])
    		                        window.location.href = "payment.html?proid="+arrPathProId[1];
    		                    }
    		                    else{
    		                        window.location.reload();
    		                    }
    		                    
    		                    $('#loginModal').modal('hide');
    		                    
    		                    
    		                    
                            }
                        }
    });
    
    
    

    // shakeModal();
}

function shakeModal(){
    $('#loginModal .modal-dialog').addClass('shake');
             $('.error').addClass('alert alert-danger').html("Invalid email/password combination");
             $('input[type="password"]').val('');
             setTimeout( function(){ 
                $('#loginModal .modal-dialog').removeClass('shake'); 
    }, 1000 ); 
}

   