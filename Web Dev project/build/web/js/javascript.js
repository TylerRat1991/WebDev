$(function(){       
	$("#btn").on("click", search); 
});
function search(){
    $("#Book").empty();
    var keyword = $("#text").val();
    $.get("https://www.googleapis.com/books/v1/volumes?key=AIzaSyA7ECB-GNIZWJIc_LHsT9mqTXYqK9fntAk&q="+ keyword).done(
        function(response){
            var books= response;                   
            var link= "https://google.com/books/content?id=n0h9CAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api";
            for (var i = 0; i<books.items.length; i++)
            {
                var bookDiv = $("<div class=book2 id=debook" +i+"></div>");
                var img=$("<img class=img2></img>");
                var link2="See Comments";
                var link3 = link2.link("Review.jsp");
                img.attr("src",books.items[i].volumeInfo.imageLinks.thumbnail);
                $("#Book").append(bookDiv);
                $("#debook"+i).append(books.items[i].volumeInfo.title + "<br/> <br/>");
                $("#debook"+i).append(img);
                $("#debook"+i).append("<br/> Authors: " + books.items[i].volumeInfo.authors + "<br/> <br/>");
                $("#debook"+i).append( "Published by: " + books.items[i].volumeInfo.publisher + "<br/> <br/>");
                $("#debook"+i).append( "Published Date: " + books.items[i].volumeInfo.publishedDate + "<br/> <br/>");   
                $("#debook"+i).append(link3 + "</br>");
            }
    });
};