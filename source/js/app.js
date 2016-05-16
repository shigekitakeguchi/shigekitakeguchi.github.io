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
          var image170 = json['results'][0]['artworkUrl100'].replace("100x100bb.jpg", "170x170bb-85.jpg", "gi");
          console.log(image170);
          var htmlElement = '<a href="' + json['results'][0]['trackViewUrl'] + '&at=1010l55r' + '">' + '\n';
          htmlElement += '<p class="image"><img src="' + image170 + '"></p>' + '\n';
          htmlElement += '<div class="textWrap"><p class="trackName">' + json['results'][0]['trackName'] + '</p>' + '\n';
          htmlElement += '<div class="priceWrap">';
          if(json['results'][0]['trackHdPrice'] !== undefined){
            htmlElement += '<p class="price">￥' + json['results'][0]['trackHdPrice'] + ' <span>HD購入</span></p>' + '\n';
          }
          if(json['results'][0]['trackPrice'] !== undefined){
            htmlElement += '<p class="price">￥' + json['results'][0]['trackPrice'] + ' <span>標準画質購入</span></p>' + '\n';
          }
          htmlElement += '</div>' + '\n';
          htmlElement += '<div class="priceWrap mb15">';
          if(json['results'][0]['trackHdRentalPrice'] !== undefined){
            htmlElement += '<p class="rentalPrice">￥' + json['results'][0]['trackHdRentalPrice'] + ' <span>HDレンタル</span></p>' + '\n';
          }
          if(json['results'][0]['trackRentalPrice'] !== undefined){
            htmlElement += '<p class="rentalPrice">￥' + json['results'][0]['trackRentalPrice'] + ' <span>標準画質レンタル</span></p>' + '\n';
          }
          htmlElement += '</div>' + '\n';

          htmlElement += '<p><img src="/images/Get_it_on_iTunes_Badge_US_1114.svg"></p>';
          htmlElement += '</div></a>';
          element.append(htmlElement);
        }
      });
    });
  });
})(jQuery);
