function ShowImagePreview(imageUploader, previewImage){
    if(imageUploader.files && imageUploader.files[0] ){
        var reader = new FileReader();
        reader.onload=function(e){
            $(previewImage).attr('src', e.target.result);
        }
        reader.readAsDataURL(imageUploader.files[0]);
    }
}

function jQueryAjaxPost(form) {
    $.validator.unobtrusive.parse(form);
    if ($(form).valid()) {
        var AjaxConfig = {
            type: 'POST',
            url: form.action,
            data: new FormData(form),
            //contentType: false,
            //processData: false,
            success: function (response) {
                if (response.success) {
                    $("#firstTab").html(response.html);
                    refreshAddNewTab($(form).attr('data-restUrl'), true);
                    $.notify(response.message, "success");
                }
                else {
                    $.notify(response.message, "Error");


                }
               
            }

        }
        if ($(form).attr('enctype') == "multipart/form-data") {
            AjaxConfig["contentType"] = false;
            AjaxConfig["processData"] = false;
        }
        $.ajax(AjaxConfig);
    }
    return false;
}

function refreshAddNewTab(resetUrl, showViewTab) {
    $.ajax({
        type: 'GET',
        url: resetUrl,
        successs: function (response) {
            $("#secondTab").html(response);
            $('ul.nav.nav-tabs a:eq(1)').html('Add New');
            if (showViewTab)
                $('ul.nav.nav-tabs a:eq(0)').tab('show');

        }


    });

}
function Edit(url) {
    $.ajax({
        type: 'GET',
        url: url,
        successs: function (response) {
            $("#secondTab").html(response);
            $('ul.nav.nav-tabs a:eq(1)').html('Edit');
            //if (showViewTab)
                $('ul.nav.nav-tabs a:eq(1)').tab('show');

        }


    });

}
function Delete(url) {
    if (confirm('Are you sure to delete this record?') == true)
    {
        $.ajax({
            type: 'POST',
            url: url,
            successs: function (response) {
                if (response.success) {
                    $("#firstTab").html(response.html);
                    //refreshAddNewTab($(form).attr('data-restUrl'), true);
                    $.notify(response.message, "warn");
                }
                else {
                    $.notify(response.message, "Error");


                }
                $("#secondTab").html(response);
                $('ul.nav.nav-tabs a:eq(1)').html('Edit');
                //if (showViewTab)
                $('ul.nav.nav-tabs a:eq(1)').tab('show');

            }


        });

    }

}