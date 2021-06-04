package Clothes.ServiceUser;

import org.springframework.stereotype.Service;

import Clothes.DTO.pageinatesDTO;

@Service
public interface IPageinasService {
	public pageinatesDTO getInforpaginates(int totalData,int limit,int currentPage);
}
