
var id = "b73181a2b109457e89eafbcde65332a0";

$.ajax({
    type: "POST",
    data: { id: id },
    url: "https://goviddo.com/otp_generate.php",
    success: function (data) {
        var obj = JSON.parse(data);

        var otp = obj.otp;
        var playback_info = obj.playbackInfo;

        (function (v, i, d, e, o) {
        v[o] = v[o] || {}; v[o].add = v[o].add || function V(a) {
            (v[o].d = v[o].d || []).push(a);
        }; if (!v[o].l) {
            v[o].l = 1 * new Date();
            a = i.createElement(d); m = i.getElementsByTagName(d)[0]; a.async = 1; a.src = e;
            m.parentNode.insertBefore(a, m);
        }
        })(window, document, "script",
            "https://player.vdocipher.com/playerAssets/1.6.10/vdo.js", "vdo");
        vdo.add({
            otp: otp,
            playbackInfo: playback_info,
            theme: "9ae8bbe8dd964ddc9bdb932cca1cb59a",
            container: document.querySelector("#mypitch_video"),
        });



    }
});