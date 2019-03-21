import Timer from "easytimer";

const timerbis = () => {
  const minuteur = parseInt(document.getElementById("questiontiming").dataset.timer,10) * 60 ;
  var timer = new Timer();
  timer.start({countdown: true, precision: 'seconds', startValues: {seconds: minuteur}, target: {seconds: 0}});
  $('#startValuesAndTargetExample .values').html(timer.getTimeValues().toString());
  timer.addEventListener('secondsUpdated', function (e) {
      $('#startValuesAndTargetExample .values').html(timer.getTimeValues().toString());
  });
  timer.addEventListener('targetAchieved', function (e) {
    const buttonsend = document.getElementById('btn-send-timer');
    buttonsend.click();
  });

}


export { timerbis };
