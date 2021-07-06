$(document).ready(function () {

    $("#register-contact").click(function () {
        const firstname = $("#first-name")
        const lastname = $("#last-name")
        const email = $("#email")
        const modal = $("#ModalToggle")
        const error = $(".error-form")
        const  form= $("form")

        if( validateName(firstname) && validateName(lastname) && validateEmail(email) ){
            error.children("div").text("")
            error.removeClass("d-flex")
                $.post( "./send.php",
                    {
                        fname: firstname.val(),
                        lname: lastname.val(),
                        email:email.val()
                    },
                    function (response) {

                        if(response === "successful"){
                            modal.modal("hide");


                            swal({
                                title: "Good job!",
                                text: "Your Email: " + email.val() + "Successfully",
                                icon: "success",
                            })


                        }else if(response === "failed") {
                            error.children("div").text("This mail already exists!")

                            error.addClass("d-flex").show()
                        }else{
                            error.children("div").text("try again!")
                            error.addClass("d-flex").show()
                        }
                        form.trigger("reset");
                })
        }


    })


})
function validateName(name){
    console.log(name.parent().children(".valid-feedback"))
    if(name.val().length){
        if (name.val().length >= 2 && name.val().length <= 30){
            name.removeClass("is-invalid").addClass("is-valid")
            return true;
        }
        else {
            name.removeClass("is-valid").addClass("is-invalid")
            name.parent().children(".invalid-feedback").text("This field should be 2 to 30 characters")
            return false
        }
    }else {
        name.removeClass("is-valid").addClass("is-invalid")
        name.parent().children(".invalid-feedback").text("This field is required")
        return false
    }

}
function validateEmail(email){
    if(checkEmail(email.val())){
        email.removeClass("is-invalid").addClass("is-valid")
        return true
    }else {
        email.removeClass("is-valid").addClass("is-invalid")
        email.parent().children(".invalid-feedback").text("Your email is not valid!")
        return false
    }
}
function checkEmail(email) {
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}







