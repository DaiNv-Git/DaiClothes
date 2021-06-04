package Clothes.ServiceUser;
import org.springframework.stereotype.Service;
import Clothes.DTO.pageinatesDTO;
@Service
public class PageinasService {
	public pageinatesDTO getInforpaginates(int totalData, int limit, int currentPage) {
		pageinatesDTO page = new pageinatesDTO();
		page.setLimit(limit);
		page.setTotalPage(setInforTotalPage(totalData, limit));
		page.setCurrentPage(checkcurrentPage(currentPage, page.getTotalPage()));
		int start = FindStart(page.getCurrentPage(),limit) ; 
		page.setStart(start);
		int end = FindEnd(page.getStart(),limit,totalData) ;
		page.setEnd(end);
		return page;
	}
	private int FindEnd(int start, int limit, int totalData) {
		return start + limit > totalData ? totalData : ( start + limit ) - 1;
	}
	private int FindStart(int currentPage, int limit) {
		return ((currentPage - 1) * limit) ;
	}
	private Integer setInforTotalPage(int totalData, int limit) {
		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}
	public int checkcurrentPage(int currentPage,int totalPage) {
		if(currentPage < 1 ) {
			return 1;
		}
		if(currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}
}
