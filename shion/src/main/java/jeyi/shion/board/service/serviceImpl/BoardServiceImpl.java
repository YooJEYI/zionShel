package jeyi.shion.board.service.serviceImpl;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import jeyi.shion.board.mapper.BoardMapper;
import jeyi.shion.board.service.BoardService;
import jeyi.shion.board.vo.BoardVO;

@Service
@ComponentScan({"jeyi.shion.board.serviceImpl"})
public class BoardServiceImpl implements BoardService {

	BoardMapper boardMapper;
	public BoardServiceImpl(BoardMapper boardMapper) {
		super();
		this.boardMapper = boardMapper;
	}

	@Override
	public List<Map<String, Object>> boardList(Map<String, Object> map) {
		List<Map<String, Object>> list = this.boardMapper.boardList(map);
		return this.boardMapper.boardList(map);
	}

	
	@Override
	public List<BoardVO> boardDetail(Map<String, Object> map) {
		return this.boardMapper.boardDetail(map);
	}


	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	@Override
	public void boardWrite(Map<String, Object> map, MultipartFile file2) throws Exception {
		
		String projectPath = "/wpdl7899/tomcat/webapps/manager/WEB-INF/classes/static/boardFile";
//		String projectPath = "C:\\workspace\\shion\\src\\main\\resources\\static\\boardFile";
		
		if(!file2.isEmpty() || file2 != null) {
			UUID uuid = UUID.randomUUID();
			
			String fileName = uuid + "_" + file2.getOriginalFilename();
			
			File saveFile = new File(projectPath,fileName);
			
			file2.transferTo(saveFile);			
			map.put("file", saveFile.getName());
		}
		
		boardMapper.boardWrite(map);
		
	}
	

	@Override
	public List<Map<String, Object>> searchBoard(Map<String, Object> map) {
		return this.boardMapper.searchBoard(map);
	}


	@Override
	public int totalBoard() {
		return this.boardMapper.totalBoard();
	}


	@Override
	public List<BoardVO> boardmodifyDetail(Map<String, Object> map) {
		return this.boardMapper.boardmodifyDetail(map);
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	@Override
	public void boardmodify(Map<String, Object> map, MultipartFile file3) throws Exception {
		
		
		String projectPath = "/wpdl7899/tomcat/webapps/manager/WEB-INF/classes/static/boardFile";
//		String projectPath = "C:\\workspace\\shion\\src\\main\\resources\\static\\boardFile";
			
		
		if(!file3.isEmpty() || file3 != null) {
			UUID uuid = UUID.randomUUID();
			
			String fileName = uuid + "_" + file3.getOriginalFilename();
			
			File saveFile = new File(projectPath,fileName);
			
			file3.transferTo(saveFile);			
			map.put("file", saveFile.getName());
		}
		
		this.boardMapper.boardmodify(map);
	}


	@Override
	public void boardDelete(Map<String, Object> map) {
		this.boardMapper.boardDelete(map);
	}


	@Override
	public int sudaContent(Map<String, Object> map) {
		return this.boardMapper.sudaContent(map);
	}


	@Override
	public List<String> sudaList(BoardVO boardVO) {
		return this.boardMapper.sudaList(boardVO);
	}

	@Override
	public int deleteBoard(Map<String, Object> map) {
		return this.boardMapper.deleteBoard(map);
	}

	
}
