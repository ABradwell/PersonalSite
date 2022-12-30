
function flip_card_transition() {


}




function wire_work_cubes() {
    $(".work_cube").click(function () {

        var job_id = $(this).find(".job_id").text()

//        var work_info_panel = new XMLHttpRequest();
//        work_info_panel.open("GET", "/getEmploymentPopup?id=" + job_id, true);
//
//        work_info_panel.onload = function() {
//            flip_card_transition(this, work_info_panel.responseText)
//        }
//
//        work_info_panel.send();
    })
}
