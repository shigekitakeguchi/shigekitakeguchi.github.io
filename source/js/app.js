(function ($){
  $(function(){
    $('.itunes-link').each(function(){
      var id = $(this).data('itunes-id');
      var element =  $(this);
      var num = 'resultFunc' + Math.floor(Math.random()* 100);
      var URL = 'http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsLookup?id='+id+'&country=JP';
      $.ajax({
        type: 'GET',
        url: URL,
        dataType: 'jsonp',
        jsonpCallback: num,
        success: function(json){
          console.log(json['results'][0]);
          var htmlElement = '<a href="' + json['results'][0]['trackViewUrl'] + '&at=1010l55r' + '">' + '\n';
          htmlElement += '<p class="image"><img src="' + json['results'][0]['artworkUrl100'] + '"></p>' + '\n';
          htmlElement += '<div class="textWrap"><p class="trackName">' + json['results'][0]['trackName'] + '</p>' + '\n';
          htmlElement += '<div class="priceWrap">';
          if(json['results'][0]['trackHdPrice'] !== undefined){
            htmlElement += '<p class="price">￥' + json['results'][0]['trackHdPrice'] + ' HD購入</p>' + '\n';
          }
          if(json['results'][0]['trackHdRentalPrice'] !== undefined){
            htmlElement += '<p class="rentalPrice">￥' + json['results'][0]['trackHdRentalPrice'] + ' HDレンタル</p>' + '\n';
          }
          htmlElement += '</div>' + '\n';
          if(json['results'][0]['longDescription'] !== undefined){
            htmlElement += '<p class="longDescription">' + json['results'][0]['longDescription'] + '</p>' + '\n';
          }
          htmlElement += '<p><img src="/images/iTunes_Badge_Small_44x15.png"></p>';
          htmlElement += '</div></a>';
          element.append(htmlElement);
        }
      });
    });
  });
})(jQuery);
