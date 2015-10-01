---
title: За контакти | BezKaries.com
layout: contact
---

<script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>

<script>
  // When the browser is ready...
  $(function() {
  
    // Setup form validation on the #new_contact_request element
    $("#new_contact_request").validate({
    
        // Specify the validation rules
        rules: {
            name: "required",
            email: {
                required: true,
                email: true
            },
            phone: "required",
            comments: "required"
        },
        
        // Specify the validation error messages
        messages: {
            name: "Задължително поле",
            email: "Невалиден email адрес",
            phone: "Задължително поле",
            comments: "Задължително поле"
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });

  $(document).ready(function(){
    $("button#toogle_consult_fields").click(function(){
        $("div#consult_fields").show(500);
    });
  });
</script>

# Форма за контакт

<form accept-charset="UTF-8" action="http://45.32.236.95:2333" class="new_contact_request" id="new_contact_request" method="post">

    <fieldset id="signup-form" class="ga-signup-form azure-enabled">

    <p class="input" id="name">
    <label for="contact_request_user_attributes_name">Име</label>
    <input id="contact_request_user_attributes_name" name="name" type="text">
    </p>

    <p class="input" id="email">
    <label for="contact_request_user_attributes_email">
    Email</label>
    <input id="contact_request_user_attributes_email" name="email" type="email">
    </p>

    <p class="input" id="phone">
    <label for="contact_request_user_attributes_phone">Телефон</label>
    <input id="contact_request_user_attributes_phone" name="phone" type="text">
    </p>

    <div id="comments-textarea">
        <label for="contact_request_comments">С какво можем да сме ви полезни?</label>
        <textarea cols="50" id="contact_request_comments" name="comments" rows="7" style="resize: vertical;"></textarea>
    </div>

    <div id="consult_fields" style="display: none">
    <p class="input" id="hour1">
    <label for="contact_request_user_attributes_hour1">Предпочитана дата и час за консултация</label>
    <input id="contact_request_user_attributes_hour1" name="hour1" type="datetime">
    </p>
    <p class="input" id="hour2">
    <label for="contact_request_user_attributes_hour2">Предпочитана дата и час за консултация (в случай, че първият е зает)</label>
    <input id="contact_request_user_attributes_hour2" name="hour2" type="datetime">
    </p>
    </div>

    <button class="btn-success js-trial-submit ga-button-trial-form-send" type="submit">
            Изпрати запитване
    </button>
    <button id="toogle_consult_fields" class="btn-default js-trial-submit ga-button-trial-form-send" type="button">
            За виртуална консултация
    </button>
      </fieldset>
</form><!-- /form -->
