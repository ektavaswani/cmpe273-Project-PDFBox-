<%@ page contentType="text/html;charset=UTF-8" %>  
<html>  
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PDF Box</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/upload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/home.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/listFiles.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/amountSelect.js"></script>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
     <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

  </head>
  <body onload="fetchAccessToken(); listAllFiles()">  
<script>
$(document).ready(function(e){
    $('.search-panel .dropdown-menu').find('a').click(function(e) {
    e.preventDefault();
    var param = $(this).attr("href").replace("#","");
    var concept = $(this).text();
    $('.search-panel span#search_concept').text(concept);
    $('.input-group #search_param').val(param);
  });
});
</script>
<!--
<i>Uploading File With Ajax</i><br/>
<form id="form2" method="post" action="/cmpe273-Project-PDFBox-/rest/cont/upload" enctype="multipart/form-data">
  <input name="file2" id="file2" type="file"  /><br/>
</form>
 
<button value="Submit" onclick="uploadFormData()" >Upload</button>
 
<div id="result"></div>
<form class="form-horizontal" id="form2" method="post" enctype="multipart/form-data">
<fieldset>
-->
<!-- Form Name -->
<legend>PDF Box</legend>

<!-- Button Drop Down -->
<div class="container-fluid">
    <div class="row-fluid">
      <div id="divContainer" class="col-lg-4 "
        style="border: thick; border-style: solid; height: 500px;">
      </div>
      <div class="col-lg-4 "
        style="border: thick; border-style: solid; height: 500px;">
      </div>
      <div class="col-lg-4 "
        style="border: thick; border-style: solid; height: 500px;">
		<div class="form-group">
          <label class="col-md-5 control-label" for="buttondropdown"
            style="position: absolute; left: 0px; top: 0px;">Browse</label>
          <div class="col-md-6"
            style="position: relative; left: 50px; top: 0px; width: 550px; height: 50px">
            <div class="input-group"
              style="position: relative; left: 0px; top: 0px; width: 225px; height: 50px">
              <input id="file2" name="file2" class="form-control"
                placeholder="No file selected" type="file"
                style="position: absolute; left: 10px; top: 0px;">
              <div class="input-group-btn"
                style="position: relative; left: 50px; top: 0px; width: 150px; height: 50px">
                <button type="button" class="btn btn-info"
                  onclick="uploadFormData()"
                  style="position: absolute; left: 120px; top: 0px;">
                  <span class="glyphicon glyphicon-arrow-up"></span> Upload

                </button>

              </div>
            </div>
          </div>
          <div class="input-group-btn"
            style="position: relative; left: 0px; top:0px; width: 150px; height: 100px">
            <div class="input-group-btn search-panel" style="position: absolute; left: 0px; top: 0px; width: 250px; height: 100px">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"  
                  	onclick="selectAmount()" style="position: absolute; left: 0px; top: 0px; width:170px">
                  	<span id="search_concept">Filter By</span> <span class="caret"></span>
                 </button>
                   <ul class="dropdown-menu" role="menu" >
                      <li><a href="#its_equal">Equal</a></li>
                      <li><a href="#greater_than">Greater than ></a></li>
                      <li><a href="#less_than">Less than < </a></li>
                      <li><a href="#less_than_equal">Less than equal to <= </a></li>
                      <li><a href="#less_than_equal">Less than equal to >= </a></li>
                      <li class="divider"></li>
                     
                    </ul>
            </div>

            <input type="hidden" name="search_param" value="all" id="search_param"> </input>        
            <input type="text" class="form-control" name="x" placeholder="Search term..." style="position: absolute; left: 180px; top: 0px;"></input>
                
            <button class="btn btn-default" type="button" style="position: absolute; left: 335px; top: 0px; height 100px">
              <span class="glyphicon glyphicon-search" style="position: relative; left: 0px; top: 0px;"></span>
            </button>
          </div>
        </div>
        <div id="result"></div>

      </div>
    </div>
  </div>
</body>
  
    
</html>
