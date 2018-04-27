
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
                       var opened = window.open("");
                       var bookDiv = $("<div id=book2></div>")
                       var img=$("<img><img>");
                       var link2="See Comments";
                       var link3 = link2.link("Review.jsp");
                       img.attr("src",books.items[i].volumeInfo.imageLinks.thumbnail);
                        $("#book2").append("<br/> <br/>" + books.items[i].volumeInfo.title + "<br/> <br/>");
                        $("#book2").append(img);
                        $("#book2").append("<br/> Authors: " + books.items[i].volumeInfo.authors + "<br/> <br/>");
                        $("#book2").append( "Published by: " + books.items[i].volumeInfo.publisher + "<br/> <br/>");
                        $("#book2").append( "Published Date: " + books.items[i].volumeInfo.publishedDate + "<br/> <br/>");   
                        $("#book2").append(link3);
                        $("#Book").append(bookDiv);
                    }
                });
    };