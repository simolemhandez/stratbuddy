import Timer from "easytimer";

const timerbis = () => {
  const minuteur = parseInt(document.getElementById("questiontiming").dataset.timer,10) * 60 ;
  var timer = new Timer();
  timer.start({precision: 'seconds', startValues: {seconds: 0}, target: {seconds: minuteur}});
  $('#startValuesAndTargetExample .values').html(timer.getTimeValues().toString());
  timer.addEventListener('secondsUpdated', function (e) {
      $('#startValuesAndTargetExample .values').html(timer.getTimeValues().toString());
      $('#startValuesAndTargetExample .progress_bar').html($('#startValuesAndTargetExample .progress_bar').html() + '.');
  });
  timer.addEventListener('targetAchieved', function (e) {
      $('#startValuesAndTargetExample .progress_bar').html('Your time is off!');
  });

}


export { timerbis };
