window.onload = function () {
    var Data1 = "";

    var j = 0;

    for (j = 0; j < 12; j++) {

        if (j == 0) {
            Data1 = Data1 + '<div class="row">'
                + '<div class="col-lg-4 col-sm-6 mb-5">'
                + '<div class="rounded shadow-sm py-5 px-4">'
                + '<img src="img/team1.png" alt="" width="175" class="img-fluid rounded-circle mb-3 img-thumbnail">'
                + '<h5 class="mb-0">Manuella Nevoresky</h5><span class="small text-uppercase text-muted">CEO - Founder</span>'
                + '</div>'
                + '</div>';
        }
        else {
            Data1 = Data1 + '<div class="col-lg-4 col-sm-6 mb-5">'
                + '<div class="rounded shadow-sm py-5 px-4">'
                + '<img src="img/team2.png" alt="" width="175" class="img-fluid rounded-circle mb-3 img-thumbnail">'
                + '<h5 class="mb-0">Manuella Nevoresky</h5><span class="small text-uppercase text-muted">CEO - Founder</span>'
                + '</div>'
                + '</div>';
        }




    }
    console.log(Data1);
    document.getElementById("team_list").innerHTML = "</div>" + Data1;



};

