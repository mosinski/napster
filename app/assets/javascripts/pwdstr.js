(function($){ 
     $.fn.extend({  
         pwdstr: function(el) {			
			return this.each(function() {
					
					
					
					$(this).keyup(function(){
						$(el).html("Hasło zostanie złamane w "+ getTime($(this).val()));
					});
					
					function getTime(str){
					
					var chars = 0;
					var rate = 2800000000;
					
					if((/[a-z]/).test(str)) chars +=  26;
					if((/[A-Z]/).test(str)) chars +=  26;
					if((/[0-9]/).test(str)) chars +=  10;
					if((/[^a-zA-Z0-9]/).test(str)) chars +=  32;

					var pos = Math.pow(chars,str.length);
					var s = pos/rate;
					
					var decimalYears = s/(3600*24*365);
					var years = Math.floor(decimalYears);
					
					var decimalMonths =(decimalYears-years)*12;
					var months = Math.floor(decimalMonths);
					
					var decimalDays = (decimalMonths-months)*30;
					var days = Math.floor(decimalDays);
					
					var decimalHours = (decimalDays-days)*24;
					var hours = Math.floor(decimalHours);
					
					var decimalMinutes = (decimalHours-hours)*60;
					var minutes = Math.floor(decimalMinutes);
					
					var decimalSeconds = (decimalMinutes-minutes)*60;
					var seconds = Math.floor(decimalSeconds);
					
					var time = [];
					
					if(years > 0){
						if(years == 1)
							time.push("1 rok, ");
						else
							time.push(years + " lata, ");
					}
					if(months > 0){
						if(months == 1)
							time.push("1 miesiąc, ");
						else
							time.push(months + " miesiący, ");
					}
					if(days > 0){
						if(days == 1)
							time.push("1 dzień, ");
				 		else
							time.push(days + " dni, ");
					}
					if(hours > 0){
						if(hours == 1)
							time.push("1 godzinę, ");
						else
							time.push(hours + " godzin, ");
					}
					if(minutes > 0){
						if(minutes == 1)
							time.push("1 minute, ");
						else
							time.push(minutes + " minuty, ");
					}
					if(seconds > 0){
						if(seconds == 1)
							time.push("1 sekunde, ");
						else
							time.push(seconds + " sekund, ");
					}
					
					if(time.length <= 0)
						time = "mniej niż sekunde, ";
					else if(time.length == 1)
						time = time[0];
					else
						time = time[0] + time[1];

					 return time.substring(0,time.length-2);
					}
					
			 });
        } 
    }); 
})(jQuery); 
