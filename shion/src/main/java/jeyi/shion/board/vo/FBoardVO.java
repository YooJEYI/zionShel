package jeyi.shion.board.vo;

//첨부파일
public class FBoardVO {
	
	private int fprodId;
	private int boardIdx;
	private String fBoardNm;
	private String fBoardSaveNm;
	private String fBoardPath;

	public int getFprodId() {
		return fprodId;
	}

	public void setFprodId(int fprodId) {
		this.fprodId = fprodId;
	}

	public int getBoardIdx() {
		return boardIdx;
	}

	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}

	public String getfBoardNm() {
		return fBoardNm;
	}

	public void setfBoardNm(String fBoardNm) {
		this.fBoardNm = fBoardNm;
	}

	public String getfBoardSaveNm() {
		return fBoardSaveNm;
	}

	public void setfBoardSaveNm(String fBoardSaveNm) {
		this.fBoardSaveNm = fBoardSaveNm;
	}

	public String getfBoardPath() {
		return fBoardPath;
	}

	public void setfBoardPath(String fBoardPath) {
		this.fBoardPath = fBoardPath;
	}

	@Override
	public String toString() {
		return "FProdVO [fprodId=" + fprodId + ", boardIdx=" + boardIdx + ", fBoardNm=" + fBoardNm + ", fBoardSaveNm="
				+ fBoardSaveNm + ", fBoardPath=" + fBoardPath + "]";
	}

}
