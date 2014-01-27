"use strict"

var formjs = {
    
    focus: function () {

        //alert("hej");

        var sumtextbox = document.getElementById("SumTextBox");

        sumtextbox.focus();
        sumtextbox.select();

        formjs.enterfunction();

    },

    enterfunction: function () {

        var form = document.getElementById("form1");

        var recbutton = document.getElementById("ReceiptButton");

        form.onkeyup = function(e) {
        
            if (e.keyCode == 13) {

                recbutton.focus();
                
            }

        }

    }

}

window.onload = formjs.focus;