//
//var heights = [["pt-1","pt-1","pt-1","pt-1"],
//               ["pt-3","pt-2","pt-1","pt-1"],
//               ["pt-2","pt-3","pt-2","pt-1"],
//               ["pt-1","pt-2","pt-3","pt-2"],
//               ["pt-1","pt-1","pt-2","pt-3"],
//               ["pt-1","pt-1","pt-1","pt-2"],
//               ["pt-1","pt-1","pt-1","pt-1"]]
//
//var px_heights = [["10px","10px","10px","10px"],
//              ["30px","20px","10px","10px"],
//              ["20px","30px","20px","10px"],
//              ["10px","20px","30px","20px"],
//              ["10px","10px","20px","30px"],
//              ["10px","10px","10px","20px"],
//              ["10px","10px","10px","10px"]]
//
//var cycle_time = 1000;
//var time_between_cycle = 2000;
//
//$(function() {
//    const wait = (ms) => new Promise(resolve => setTimeout(resolve, ms))
//    const move_btn1 = (ms, i) => new Promise(resolve => $( "#first-btn" ).animate({ 'marginTop': px_heights[i][0] }, ms))
//    const move_btn2 = (ms, i) => new Promise(resolve => $( "#second-btn" ).animate({ 'marginTop': px_heights[i][1] }, ms))
//    const move_btn3 = (ms, i) => new Promise(resolve => $( "#third-btn" ).animate({ 'marginTop': px_heights[i][2] }, ms))
//    const move_btn4 = (ms, i) => new Promise(resolve => $( "#fourth-btn" ).animate({ 'marginTop': px_heights[i][3] }, ms))
//
//    const inner_loop = async () => {
//        for (const i of [0, 1, 2, 3, 4, 5, 6]) {
////            $("#first-btn").removeClass("pt-1 pt-2 pt-3 pt-4").addClass(heights[i][0]);
////            $("#second-btn").removeClass("pt-1 pt-2 pt-3 pt-4").addClass(heights[i][1]);
////            $("#third-btn").removeClass("pt-1 pt-2 pt-3 pt-4").addClass(heights[i][2]);
////            $("#fourth-btn").removeClass("pt-1 pt-2 pt-3 pt-4").addClass(heights[i][3]);
//                move_btn1(cycle_time/heights.length, i)
//                move_btn2(cycle_time/heights.length, i)
//                move_btn3(cycle_time/heights.length, i)
//                move_btn4(cycle_time/heights.length, i)
//        }
//    }
//
//    const loop = async () => {
//        while(true) {
//            inner_loop()
//            await wait(time_between_cycle)
//        }
//    }
//    loop();
//
//})
////$(function() {
//
////    var between_cycle_pause = 2000;
////    setInterval(move_btns, between_cycle_pause)
////})
//
//
//
