



var i = 0;

var endOfMyBar = 51;





function move() {
    if (i == 0) {
        i = 1;
        var elem = document.getElementById("myBar");
        var width = 1;
        var id = setInterval(frame, 10);
        function frame() {
            if (width >= endOfMyBar) {
                clearInterval(id);
                i = 0;
                document.getElementById("myBartextPercent").innerHTML = width + "%";
                if (width > 50 & width < 100) {
                    elem.style.background = "#DDB253";
                    $('.displayoverfunding').css('display', 'block');
                }
                else if (width == 100) {
                    elem.style.background = "#89BE89";
                }

            } else {
                width++;
                elem.style.width = width + "%";
                if (width > 50 & width < 100) {
                    elem.style.background = "#DDB253";
                }
                else if (width == 100) {
                    elem.style.background = "#89BE89";
                }
            }
        }
    }
}

move();



