package Clothes.ServiceUser;

import java.util.List;
import Clothes.DTO.ProductsDTO;
import Clothes.ModelUser.Categorys;
import Clothes.ModelUser.IntaModel;
import Clothes.ModelUser.Menus;
import Clothes.ModelUser.ProductModel;
import Clothes.ModelUser.Slides;

public interface IHomeService {
	public List<Slides> getDataSlide();
	public List<Categorys> getDataCategory();
	public List<Menus> getDataMenus();
	public List<IntaModel> getDataInta();
	public List<ProductsDTO> getDataProduct();
	public List<ProductModel> getDataProductNu();
	public List<ProductModel> getDataProductNam();

}
