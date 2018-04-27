/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function(){
    $("#commentButton").on("click", add); 
});
 



    function add(){
       var userCom = $("#comment").val();
        $("#userCom").append(userCom);
    }

 $.get("https://www.googleapis.com/books/v1/volumes?key=AIzaSyA7ECB-GNIZWJIc_LHsT9mqTXYqK9fntAk&q=Harry Potter").done(
          function(response){
           var books= response;  

                    var img=$("<img><img>");
                       img.attr("src",books.items[2].volumeInfo.imageLinks.thumbnail);
                        $("#reviewBook").append("<br/> <br/>" + books.items[2].volumeInfo.title + "<br/> <br/>");
                        $("#reviewBook").append(img);
                        $("#reviewBook").append("<br/> Authors: " + books.items[2].volumeInfo.authors + "<br/> <br/>");
                        $("#reviewBook").append( "Published by: " + books.items[2].volumeInfo.publisher + "<br/> <br/>");
                        $("#reviewBook").append( "Published Date: " + books.items[2].volumeInfo.publishedDate + "<br/> <br/>"); 
                        $("#reviewBook").append( "Description: <br/>" + books.items[2].volumeInfo.description+ "<br/> <br/>");
                        

          });
 

 