$(document).ready(function(){
  $(".checkbox_ptaki").iphoneStyle();
  $(".checkbox_kolka").iphoneStyle();
  $(".checkbox_samochod").iphoneStyle();
  $(".checkbox_szesciany").iphoneStyle();
  $(".checkbox_woda").iphoneStyle();
});

setInterval(function() {
	if($('.checkbox_ptaki').is(":checked")){
        $('.checkbox_ptaki').prop('checked', true).iphoneStyle("refresh");
	$('.ptaki_text_field').val('1');
	$('.checkbox_kolka').prop('checked', false).iphoneStyle("refresh");
	$('.kolka_text_field').val('0');
	$('.checkbox_samochod').prop('checked', false).iphoneStyle("refresh");
	$('.samochod_text_field').val('0');
	$('.checkbox_szesciany').prop('checked', false).iphoneStyle("refresh");
	$('.szesciany_text_field').val('0');
	$('.checkbox_woda').prop('checked', false).iphoneStyle("refresh");
	$('.woda_text_field').val('0');
	}
	else{
	$('.checkbox_ptaki').prop('checked', false).iphoneStyle("refresh");
	$('.ptaki_text_field').val('0');
	}
	if($('.checkbox_kolka').is(":checked")){
	$('.checkbox_kolka').prop('checked', true).iphoneStyle("refresh");
	$('.kolka_text_field').val('1');
        $('.checkbox_ptaki').prop('checked', false).iphoneStyle("refresh");
	$('.ptaki_text_field').val('0');
	$('.checkbox_samochod').prop('checked', false).iphoneStyle("refresh");
	$('.samochod_text_field').val('0');
	$('.checkbox_szesciany').prop('checked', false).iphoneStyle("refresh");
	$('.szesciany_text_field').val('0');
	$('.checkbox_woda').prop('checked', false).iphoneStyle("refresh");
	$('.woda_text_field').val('0');
	}
	else{
	$('.checkbox_kolka').prop('checked', false).iphoneStyle("refresh");
	$('.kolka_text_field').val('0');
	}
	if($('.checkbox_samochod').is(":checked")){
	$('.checkbox_samochod').prop('checked', true).iphoneStyle("refresh");
	$('.samochod_text_field').val('1');
	$('.checkbox_ptaki').prop('checked', false).iphoneStyle("refresh");
	$('.ptaki_text_field').val('0');
	$('.checkbox_kolka').prop('checked', false).iphoneStyle("refresh");
	$('.kolka_text_field').val('0');
	$('.checkbox_szesciany').prop('checked', false).iphoneStyle("refresh");
	$('.szesciany_text_field').val('0');
	$('.checkbox_woda').prop('checked', false).iphoneStyle("refresh");
	$('.woda_text_field').val('0');
	}
	else{
	$('.checkbox_samochod').prop('checked', false).iphoneStyle("refresh");
	$('.samochod_text_field').val('0');
	}
	if($('.checkbox_szesciany').is(":checked")){
	$('.checkbox_szesciany').prop('checked', true).iphoneStyle("refresh");
	$('.szesciany_text_field').val('1');
	$('.checkbox_ptaki').prop('checked', false).iphoneStyle("refresh");
	$('.ptaki_text_field').val('0');
	$('.checkbox_kolka').prop('checked', false).iphoneStyle("refresh");
	$('.kolka_text_field').val('0');
	$('.checkbox_samochod').prop('checked', false).iphoneStyle("refresh");
	$('.samochod_text_field').val('0');
	$('.checkbox_woda').prop('checked', false).iphoneStyle("refresh");
	$('.woda_text_field').val('0');
	}
	else{
	$('.checkbox_szesciany').prop('checked', false).iphoneStyle("refresh");
	$('.szesciany_text_field').val('0');
	}
	if($('.checkbox_woda').is(":checked")){
	$('.checkbox_woda').prop('checked', true).iphoneStyle("refresh");
	$('.woda_text_field').val('1');
	$('.checkbox_ptaki').prop('checked', false).iphoneStyle("refresh");
	$('.ptaki_text_field').val('0');
	$('.checkbox_kolka').prop('checked', false).iphoneStyle("refresh");
	$('.kolka_text_field').val('0');
	$('.checkbox_samochod').prop('checked', false).iphoneStyle("refresh");
	$('.samochod_text_field').val('0');
	$('.checkbox_szesciany').prop('checked', false).iphoneStyle("refresh");
	$('.szesciany_text_field').val('0');
	}
	else{
	$('.checkbox_woda').prop('checked', false).iphoneStyle("refresh");
	$('.woda_text_field').val('0');
	}
        return
      }, 1500);
