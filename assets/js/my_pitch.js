window.onload = function () {
    var Data1 = "";

    var j = 0;

    for (j = 0; j < 5; j++) {

        if (j == 0) {
            var Data1 = Data1 + '<div id="catlist_recommndation1" class="scrolling-wrapper">'
                + '<div class="card">'
                + '<a href="my_pitch_details.html">'
                + '<img src="img/slide1.png" class="card-img-top img-fluid" alt="...">'
                + '<img src="img/logo_header_invest.png" class= "img-fluid img_overlay">'
                + '</a>'
                + '<div class="card-body margintop_50">'
                + '<a href="my_pitch_details.html">'
                + '<h5 class="card-title">Lorem dolor sit amet consectetur</h5>'
                + '<p class="card-text"><small>Lean Lunch is an online food delivery business that aims to'
                + 'improve wellbeing for people and the planet. It delivers'
                + 'delicious, nutritious, chef-prepared, sustainably-packaged'
                + 'food to city centre offices by cargo bike. With 40,000+ meals'
                + 'sold since launch in 2017, it is ready to scale with your'
                + 'investment.</small></p>'
                + '<h6 class="card-title margintop_25">Target</h6>'
                + '</a>'
                + '<div id="myProgress">'
                + '<div id="myBar">'
                + '</div>'
                + '<p id="myBartextPercent" class="textsameline text-center">30%</p>'
                + '</div>'
                + '<p class="displayoverfunding"><small>Overfunding</small></p>'
                + '<div class="row margintop_50">'
                + '<div class="col-4 rightborder">'
                + '<p>Raised</p>'
                + '<p id="totalraised">100,00</p>'
                + '</div>'
                + '<div class="col-4 leftborder rightborder">'
                + '<p>Equity</p>'
                + '<p id="totalraised">13.01 %</p>'
                + '</div>'
                + '<div class="col-4 leftborder">'
                + '<p>Investors</p>'
                + '<p id="totalraised">38</p>'
                + '</div>'
                + '</div>'
                + '</div>'
                + '</div>';
        }
        else {
            var Data1 = Data1 + ' <div class="card">'
                + '<a href="my_pitch_details.html">'
                + '<img src="img/slide1.png" class="card-img-top img-fluid" alt="...">'
                + '<img src="img/logo_header_invest.png" class= "img-fluid img_overlay">'
                + '</a>'
                + '<div class="card-body margintop_50">'
                + '<a href="my_pitch_details.html">'
                + '<h5 class="card-title">Lorem dolor sit amet consectetur</h5>'
                + '<p class="card-text"><small>Lean Lunch is an online food delivery business that aims to'
                + 'improve wellbeing for people and the planet. It delivers'
                + 'delicious, nutritious, chef-prepared, sustainably-packaged'
                + 'food to city centre offices by cargo bike. With 40,000+ meals'
                + 'sold since launch in 2017, it is ready to scale with your'
                + 'investment.</small></p>'
                + '</a>'
                + '<h6 class="card-title margintop_25">Target</h6>'
                + '<div id="myProgress">'
                + '<div id="myBar">'
                + '</div>'
                + '<p id="myBartextPercent" class="textsameline text-center">30%</p>'
                + '</div>'
                + '<p class="displayoverfunding"><small>Overfunding</small></p>'
                + '<div class="row margintop_50">'
                + '<div class="col-4 rightborder">'
                + '<p>Raised</p>'
                + '<p id="totalraised">100,00</p>'
                + '</div>'
                + '<div class="col-4 leftborder rightborder">'
                + '<p>Equity</p>'
                + '<p id="totalraised">13.01 %</p>'
                + '</div>'
                + '<div class="col-4 leftborder">'
                + '<p>Investors</p>'
                + '<p id="totalraised">38</p>'
                + '</div>'
                + '</div>'
                + '</div>'
                + '</div>';


        }

        console.log(Data1);

    }
    document.getElementById('data1').innerHTML = "</div>" + Data1;

};


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



