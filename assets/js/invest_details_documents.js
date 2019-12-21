window.onload = function () {
    var Data1 = "";

    var j = 0;

    for (j = 0; j < 6; j++) {

        if (j == 0) {
            Data1 = Data1 + '<div class="row">'
                + '<div class="col-lg-4 col-6 myspace">'
                + '<a href="#" target="_blank" class="btn btn-custome btn-block">pitch.pdf</a>'
                + '</div>';
        }
        else {
            Data1 = Data1 + '<div class="col-lg-4 col-6 myspace">'
                + '<a href="#" target="_blank" class="btn btn-custome btn-block">pitch.pdf</a>'
                + '</div>';
        }

        if ((j + 1) % 2 == 0) {
            Data1 = Data1 + '<hr class="clearfix w-100 d-lg-none"></hr>';
        }

        if ((j + 1) % 3 == 0) {
            Data1 = Data1 + '<hr class="clearfix w-100 hideonsmall"></hr>';
        }




    }
    console.log(Data1);
    document.getElementById("documents_list").innerHTML = "</div>" + Data1;



};

