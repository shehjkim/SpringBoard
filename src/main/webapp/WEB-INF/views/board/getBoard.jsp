<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խñ�</title>
</head>
<body>
<h3>�Խñ� �󼼺���</h3>
${board.seq }
����	: ${board.title } <br>
����	: ${board.content}
<hr>
<h3>���</h3>
��۸��
<div id="reply"></div> <br>

��۵��
<form name="replyFrm">
	<input name="content">
	<button type="button" id="btnAdd">��۵��</button>
</form>


<script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>
  
<script type="text/javascript">
	//��� �����ȸ
	$.ajax({
		url:"getReplyList",			//�����ȸ�ϴ�
		data: {board_seq:${board.seq}},      //=="board_seq=${board.seq}",			
								//--�������getReplyList?board_seq=${board.seq}
		datatype:"json",
		success: function(response){
			for(i=0; i<response.length; i++){
			$("#reply").append(response[i].content + "<br>");			//id�� reply
			
			
			}
			
		}			//response ������ ����� ����
		
				
	});
	//��� ���
	$("#btnAdd").on("click", function(){
		//��� ajax ȣ���ϰ� ��ϵ� ����� div�� append
		$.ajax({
			url:"insertReply",
			data:{board_seq:${board.seq}, content:$("[name=content]").val() },		
											//{board_seq:${board.seq}},
											//name�� content�� �±׸� ã��(jqury)
											//?board_seq=1&content=dddd
			dataType:"json",
			success:function(response){
				$("#reply").append(response.content + "<br>");
				//���븸 reply div�� append�Ѵ� 
			}
	
		});		
		
	});
</script>
</body>
</html>