package Clothes.ServiceUser;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Clothes.DAOUser.CategoryDAO;
import Clothes.DAOUser.IntaDAO;

import Clothes.DAOUser.MenuDAO;
import Clothes.DAOUser.ProductDAO;
import Clothes.DAOUser.ProductNamDAO;
import Clothes.DAOUser.ProductNuDAO;
import Clothes.DAOUser.SlidesDAO;
import Clothes.DTO.ProductsDTO;
import Clothes.ModelUser.Categorys;
import Clothes.ModelUser.IntaModel;
import Clothes.ModelUser.Menus;
import Clothes.ModelUser.ProductModel;
import Clothes.ModelUser.Slides;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SlidesDAO slidesDAO;
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired 
	private IntaDAO intadao;
	@Autowired
	private ProductDAO productdao;
	@Autowired
	private ProductNuDAO nu;
	@Autowired ProductNamDAO nam;
	public List<Slides> getDataSlide() {
		return slidesDAO.getDataSlide();
	}
	@Override
	public List<Categorys> getDataCategory() {
		return categoryDAO.getDataCategory();
	}
	@Autowired
	private MenuDAO menudao;
	public List<Menus> getDataMenus() {
		return menudao.getDataMenus();
	}
	@Override
	
	public List<IntaModel> getDataInta() {
		return intadao.getDataInta();
	}
	@Override
public List<ProductsDTO> getDataProduct() {
		List<ProductsDTO> listProduct = productdao.getDataProduct();
		return listProduct;	
	}
	@Override
	public List<ProductModel> getDataProductNu() {
		return nu.getDataProductNu();
	}
	@Override
	public List<ProductModel> getDataProductNam() {
		return nam.getDataProductNam();
	}	
}
