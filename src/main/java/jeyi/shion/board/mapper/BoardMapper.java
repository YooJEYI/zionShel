package jeyi.shion.board.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.context.annotation.ComponentScan;

import jeyi.shion.board.vo.BoardVO;

@Mapper
@ComponentScan({"jeyi.shion.board.BoardMapper"})
public interface BoardMapper  {

	List<Map<String, Object>> boardList(Map<String, Object> map);


	List<BoardVO> boardDetail(Map<String, Object> map);
	
	void boardWrite(Map<String, Object> map);


	List<Map<String, Object>> searchBoard(Map<String, Object> map);

	//전체 게시글 행의 수
	int totalBoard();


	List<BoardVO> boardmodifyDetail(Map<String, Object> map);


	void boardmodify(Map<String, Object> map);


	void boardDelete(Map<String, Object> map);

	//수다 작성 POST
	int sudaContent(Map<String, Object> map);


	List<String> sudaList(BoardVO boardVO);

	int deleteBoard(Map<String, Object> map);


	List<BoardVO> mobileBoardList();


	void starWrite(Map<String, Object> map);

}
