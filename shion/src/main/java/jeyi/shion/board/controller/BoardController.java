package jeyi.shion.board.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import jeyi.shion.board.service.BoardService;
import jeyi.shion.board.vo.BoardVO;
import jeyi.shion.board.vo.PageVO;
import lombok.extern.log4j.Log4j;

@Controller
public class BoardController {

	BoardService boardService;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	public BoardController(BoardService boardService) {
		super();
		this.boardService = boardService;
	}

	@GetMapping("/board")
	public String board(Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "currentPage", defaultValue = "1") String currentPage) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("currentPage", currentPage);
		List<Map<String, Object>> list = this.boardService.boardList(map);

		// 전체 게시글 행의 수(total)
		int total = this.boardService.totalBoard();
		// total : 행의수, currentPage : 현재 페이지, size : 한 화면에 보여질 목록, list : select결과
		Map<String, Object> Title = new HashMap<String, Object>();
		Title.put(currentPage, Title);

		model.addAttribute("conferencePage", new PageVO(total, Integer.parseInt(currentPage), 10, list));
		model.addAttribute("boardList", list);

		return "board";
	}
	
//	@GetMapping("/mobile/board")
//	@ResponseBody
//	public List<Map<String, Object>> mobileBoard(Model model, HttpServletRequest request, HttpServletResponse response,
//			@RequestParam(value = "currentPage", defaultValue = "1") String currentPage) throws Exception {
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("currentPage", currentPage);
//		List<Map<String, Object>> list = this.boardService.boardList(map);
//
//		// 전체 게시글 행의 수(total)
//		int total = this.boardService.totalBoard();
//		// total : 행의수, currentPage : 현재 페이지, size : 한 화면에 보여질 목록, list : select결과
//		Map<String, Object> Title = new HashMap<String, Object>();
//		Title.put(currentPage, Title);
//
//		model.addAttribute("conferencePage", new PageVO(total, Integer.parseInt(currentPage), 10, list));
//		model.addAttribute("boardList", list);
//
//		return list;
//	}
	

	@RequestMapping(value = "/searchBoard", method = RequestMethod.GET)
	public String searchBoard(Model model, @RequestParam Map<String, Object> map) throws Exception {

		StopWatch stopwatch = new StopWatch();

		stopwatch.start();

		List<Map<String, Object>> list = this.boardService.searchBoard(map);

		stopwatch.stop();

		if (list.isEmpty()) {
			return "NullsearchBoard";
		} else {
			model.addAttribute("list", list);

			return "searchBoard";
		}

	}

	@Override
	public String toString() {
		return "BoardController [boardService=" + boardService + "]";
	}

	@GetMapping("/board/boardDetail")
	public String boardDetail(Model model, @RequestParam Map<String, Object> map) {
		List<BoardVO> boardDetail = this.boardService.boardDetail(map);
		model.addAttribute("boardDetail", boardDetail.get(0));
		return "boardDetail";
	}

	@GetMapping("/board/write")
	public String boardWriteForm() {
		return "board-write";
	}

	@PostMapping("/board/write")
	public String boardWritePost(Model model, @RequestParam Map<String, Object> map, MultipartFile file)
			throws Exception {

		if (map.get("boardTitle").toString().isEmpty()) {
			map.put("boardTitle", "시온 공지사항");
		}

		this.boardService.boardWrite(map, file);

		return "redirect:/board";
	}

	@GetMapping("/board/modify")
	public String boardmodify(Model model, @RequestParam Map<String, Object> map) {

		List<BoardVO> boardDetail = this.boardService.boardmodifyDetail(map);

		model.addAttribute("boardDetail", boardDetail.get(0));

		return "boardModify";
	}

	@PostMapping("/board/Boardmodify")
	public String boardmodifyP(Model model, @RequestParam Map<String, Object> map, MultipartFile file)
			throws Exception {

		this.boardService.boardmodify(map, file);

		return "redirect:/board";
	}

	@GetMapping("/boardDelete")
	public String boardDelete(Model model, @RequestParam Map<String, Object> map) {

		this.boardService.boardDelete(map);

		return "redirect:/board";
	}

	@RequestMapping(value = "/DogDownload", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String file) {

		// 파일이 있는 윈도 경로
		String uploadFolder = FileUploadUtil2.uploadFolder;

		// ...resources_upload_2021_11_05_개똥이.jpg
//		org.springframework.core.io.Resource resource = new FileSystemResource(uploadFolder + "\\" + file);
		org.springframework.core.io.Resource resource = new FileSystemResource(uploadFolder + file);

		
		
		// 해당 파일이 없을때..
		if (resource.isFile() == false) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		} else {

			// 파일명 가져오기
			String resourceName = resource.getFilename();
			// 파일명이 한글이면 HttpHeaders 객체를 통해 처리
			org.springframework.http.HttpHeaders headers = new org.springframework.http.HttpHeaders();
			try {
				String downloadName = null;

				if (userAgent.contains("Trident")) {// IE11

					downloadName = URLEncoder.encode(resourceName, "UTF-8").replaceAll("/+", " ");
				} else if (userAgent.contains("Edge")) {// Edge

					downloadName = URLEncoder.encode(resourceName, "UTF-8");
				} else {
					downloadName = new String(resourceName.getBytes("UTF-8"), "ISO-8859-1"); // ISO-8859-1
				}

				// Content-disposition : 다운로드 시 저장되는 이름을 처리해줌
				headers.add("Content-disposition", "attachment;filename=" + downloadName);
			} catch (UnsupportedEncodingException ex) {
				ex.printStackTrace();
			}
			// resource : 첨부파일 객체
			// headers : 파일명 처리 정보
			// ...OK : 200(성공)
			return new ResponseEntity<Resource>((Resource) resource, headers, HttpStatus.OK);
		}
	}

	@RequestMapping("/star")
	public String starList() {
		return "starList";
	}

	@RequestMapping("/suda")
	public String suda(Model model, BoardVO boardVO) {

		List<String> sudaList = this.boardService.sudaList(boardVO);
		model.addAttribute("sudaList", sudaList);

		return "suda";
	}

	@ResponseBody
	@RequestMapping(value = "/sudaContent", method = RequestMethod.POST)
	public List sudaContent(Model model, @RequestBody Map<String, Object> map, BoardVO boardVO) {

		// 수다 작성값 인서트
		int sudaResult = this.boardService.sudaContent(map);

		List<String> sudaListAll = this.boardService.sudaList(boardVO);
		model.addAttribute("sudaListAll", sudaListAll);

		return sudaListAll;
	}

	@ResponseBody
	@RequestMapping(value = "/deleteBoard", method = RequestMethod.POST)
	public List sudaDelete(Model model, @RequestBody Map<String, Object> map, BoardVO boardVO) {

		int result = this.boardService.deleteBoard(map);
		List<String> sudaListAll = this.boardService.sudaList(boardVO);
		model.addAttribute("sudaListAll", sudaListAll);

		return sudaListAll;
	}

}
