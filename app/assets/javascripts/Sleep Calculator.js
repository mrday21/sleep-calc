//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

const getSleepHours = day => {
  switch(day) {
    case 'monday':
      return 8;
      break;
    case 'tuesday':
      return 7;
      break;
    case 'wednesday':
      return 8;
      break;
    case 'thursday':
      return 5;
      break;
    case 'friday':
      return 5;
      break;
    case 'saturday':
      return 12;
      break;
    case 'sunday':
      return 10;
      break;
    default:
      return "Error!";
  
  }
};

const getActualSleepHours = () => {
return getSleepHours('monday')+
    getSleepHours('tuesday')+
    getSleepHours('wednesday')+
    getSleepHours('thursday')+
    getSleepHours('friday')+
    getSleepHours('saturday')+
    getSleepHours('sunday');    
};
  
  const getIdealSleepHours = () => {
    let idealHours = 8;
    return idealHours * 7;
  };
  
const calculateSleepDebt = () => {
  const actualSleepHours = getActualSleepHours();
  const idealSleepHours = getIdealSleepHours();
  
  if(actualSleepHours === idealSleepHours) {
    console.log("You got the perfect amount of sleep!");
  }
  else if(actualSleepHours > idealSleepHours) {
    console.log("You got too much sleep! You slept " + (actualSleepHours - idealSleepHours) + " hours too many this week.");
  }
  else if(actualSleepHours < idealSleepHours) {
    console.log("You got less sleep than you should have! You slept " + (idealSleepHours - actualSleepHours) + " hours less than you should have this week.");
  }
  else {
    console.log("Error. Something went wrong please try again");
  }
};

calculateSleepDebt();