package jeyi.shion.board.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {

	private String boardId;
	private String file;
	private String boardTitle;
	private String boardContent;
	private String boardCreateDate;
	private String boardUpdateDate;
	private String boardDisplay;
	private String boardDelete;

	private String boardFile;
	private MultipartFile file2;
	private List<FBoardVO> fBoardVO;

	public String getBoardId() {
		return boardId;
	}

	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardCreateDate() {
		return boardCreateDate;
	}

	public void setBoardCreateDate(String boardCreateDate) {
		this.boardCreateDate = boardCreateDate;
	}

	public String getBoardUpdateDate() {
		return boardUpdateDate;
	}

	public void setBoardUpdateDate(String boardUpdateDate) {
		this.boardUpdateDate = boardUpdateDate;
	}

	public String getBoardDisplay() {
		return boardDisplay;
	}

	public void setBoardDisplay(String boardDisplay) {
		this.boardDisplay = boardDisplay;
	}

	public String getBoardDelete() {
		return boardDelete;
	}

	public void setBoardDelete(String boardDelete) {
		this.boardDelete = boardDelete;
	}

	public String getBoardFile() {
		return boardFile;
	}

	public void setBoardFile(String boardFile) {
		this.boardFile = boardFile;
	}

	public List<FBoardVO> getfBoardVO() {
		return fBoardVO;
	}

	public void setfBoardVO(List<FBoardVO> fBoardVO) {
		this.fBoardVO = fBoardVO;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public MultipartFile getFile2() {
		return file2;
	}

	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
	}

	@Override
	public String toString() {
		return "BoardVO [boardId=" + boardId + ", file=" + file + ", boardTitle=" + boardTitle + ", boardContent="
				+ boardContent + ", boardCreateDate=" + boardCreateDate + ", boardUpdateDate=" + boardUpdateDate
				+ ", boardDisplay=" + boardDisplay + ", boardDelete=" + boardDelete + ", boardFile=" + boardFile
				+ ", file2=" + file2 + ", fBoardVO=" + fBoardVO + "]";
	}

}
