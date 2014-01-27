"use strict"

var formjs = {
    
  

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

window.onload = formjs.enterfunction;