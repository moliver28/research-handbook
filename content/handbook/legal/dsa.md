---
title: EU Illegal Content Report Form
description: "Use this form to report content that you believe is illegal in the European Union. This form is intended for individuals claiming legal rights in the EU, as well as individuals or entities designated as trusted flaggers pursuant to the EU Digital Services Act (DSA)"
---

<div class="row my-5 5align-items-start">
    <div class="col d-flex align-items-center rounded-3 p-4 shadow" style="background-color: #6e49cb; color: #ffffff;">
        <div id="dsaFormDiv">
            <p class="h4">DSA Reporting Form:</p>
            <form action="https://us-central1-glsec-trust-safety-dev.cloudfunctions.net/dsa-webhook" method="post" id="dsaForm" target="hidden-form">
                <div class="mb-3">
                    <label for="email" class="form-label">Your email address</label>
                    <input name="email" type="email" required class="form-control">
                </div>
                <div class="mb-3">
                    <label for="violation" class="form-label">Type of legal violation you are reporting?</label>
                    <select name="violation" required class="form-control" id="lang">
                        <option value="violence">Violence</option>
                        <option value="terrorist">Terrorist content</option>
                        <option value="hateful">Hateful content</option>
                        <option value="csam">Child sexual exploitation</option>
                        <option value="harrasment">Harrasment</option>
                        <option value="private">Private or personal information</option>
                        <option value="copyright">Copyright or trademark infringement</option>
                        <option value="other">Other legal issue</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Please provide a detailed description of why you believe this content is illegal</label>
                    <textarea name="description" type="text" required class="form-control"></textarea>
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-lg btn-light">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    $("#dsaForm").on("submit", function(event) {
        console.log("Triggering submit");
        $("#thankyou").show();
        $("#dsaFormDiv").hide();
</script>

<style>
    #thankyou {
        width: 100% !important;
        display: none;
    }
    #regiserFormDiv {
        display: block;
    }
    .modal.fade .modal-dialog {
      -webkit-transition: -webkit-transform 0.3s ease-out;
         -moz-transition: -moz-transform 0.3s ease-out;
           -o-transition: -o-transform 0.3s ease-out;
              transition: transform 0.3s ease-out;
    }
</style>
