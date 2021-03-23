<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시글</title>
</head>
<body>
<h3>게시글 상세보기</h3>
${board.seq }
제목	: ${board.title } <br>
내용	: ${board.content}
<hr>
<h3>댓글</h3>
댓글목록
<div id="reply"></div> <br>

댓글등록
<form name="replyFrm">
	<input name="content">
	<button type="button" id="btnAdd">댓글등록</button>
</form>


<script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>
  
<script type="text/javascript">
	//댓글 목록조회
	$.ajax({
		url:"getReplyList",			//댓글조회하는
		data: {board_seq:${board.seq}},      //=="board_seq=${board.seq}",			
								//--여기까지getReplyList?board_seq=${board.seq}
		datatype:"json",
		success: function(response){
			for(i=0; i<response.length; i++){
			$("#reply").append(response[i].content + "<br>");			//id가 reply
			
			
			}
			
		}			//response 변수에 결과가 들어옴
		
				
	});
	//댓글 등록
	$("#btnAdd").on("click", function(){
		//등록 ajax 호출하고 등록된 댓글을 div에 append
		$.ajax({
			url:"insertReply",
			data:{board_seq:${board.seq}, content:$("[name=content]").val() },		
											//{board_seq:${board.seq}},
											//name이 content인 태그를 찾음(jqury)
											//?board_seq=1&content=dddd
			dataType:"json",
			success:function(response){
				$("#reply").append(response.content + "<br>");
				//내용만 reply div에 append한다 
			}
	
		});		
		
	});
</script>
</body>
</html>