/**
 * 
 */
 
 
 function init() {
	
	$.ajax({
	    type : 'get',           // 타입 (get, post, put 등등)
	    url : '/mobile/board',           // 요청할 서버url
	    async : true,            // 비동기화 여부 (default : true)
	    dataType : 'json',       // 데이터 타입 (html, xml, json, text 등등)
	    success : function(e) { // 결과 성공 콜백함수
	    	tableMake(e);
	    },
	    error : function(error) { // 결과 에러 콜백함수
	        console.log(error)
	    }
	});	
	
}

 
 function tableMake(e) {
	console.log(e);
	e.forEach((data,index) => {
	 	$("#BOARDLIST").append(`	 
			<tr> 
		       <td>${index+1} </td> 
		       <td ><a href="/board/boardDetail?boardId=${data.boardId }"> ${data.boardTitle } </a></td>
		       <td>${data.boardCreateDate }</td>
		    </tr> 
		`);
	});

}