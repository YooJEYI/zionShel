package jeyi.shion.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.MultipartFile;

import jeyi.shion.board.vo.BoardVO;

@ComponentScan({"jeyi.shion.board.service"})
public interface BoardService {

	List<Map<String, Object>> boardList(Map<String, Object> map);

	List<BoardVO> boardDetail(Map<String, Object> map);

	void boardWrite(Map<String, Object> map, MultipartFile file2) throws Exception;

	List<Map<String, Object>> searchBoard(Map<String, Object> map);

	int totalBoard();

	List<BoardVO> boardmodifyDetail(Map<String, Object> map);

	void boardmodify(Map<String, Object> map, MultipartFile file3) throws Exception ;

	void boardDelete(Map<String, Object> map);

	int sudaContent(Map<String, Object> map);

	List<String> sudaList(BoardVO boardVO);

	int deleteBoard(Map<String, Object> map);
	

}
