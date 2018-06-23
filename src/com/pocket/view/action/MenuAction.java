package com.pocket.view.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pocket.service.iface.MenuService;
import com.pocket.service.iface.ReviewService;
import com.pocket.sql.bean.Menu;
import com.pocket.util.Pagination;

public class MenuAction extends ActionSupport {
	Menu menu;
	MenuService menuService;
	Integer id;
	Integer price;
	ReviewService reviewService;
	Integer currentIndex;
	
	public Integer getCurrentIndex() {
		return currentIndex;
	}

	public void setCurrentIndex(Integer currentIndex) {
		this.currentIndex = currentIndex;
	}

	public ReviewService getReviewService() {
		return reviewService;
	}

	public void setReviewService(ReviewService reviewService) {
		this.reviewService = reviewService;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Menu getMenu() {
		return menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}
	
	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}
	
	
	//获取所有菜
	public String myIndex(){
		ActionContext.getContext().getSession().put("menuload", menuService.myLoad());
		return "ok";
	}
	//获取当前菜的信息
	public String myDetail(){
		ActionContext.getContext().getSession().put("rankingList", menuService.myRanking());
		ActionContext.getContext().getSession().put("detailList", menuService.myShow(id));
		ActionContext.getContext().getSession().put("detailId", id);
		ActionContext.getContext().getSession().put("reviewList", reviewService.myShow(id));
		if(currentIndex==null)
			currentIndex=0;
		Pagination pg=reviewService.findUserinfoByPage(3, currentIndex);
		ActionContext.getContext().put("pg",pg);
		ActionContext.getContext().put("reviewPagination",pg.getItems());
		
		return "detail";
	}
	//后台显示菜
	public String menuShow(){
		ActionContext.getContext().getSession().put("menuShow", menuService.menuShow());
		return "showList";
	}
	
	//接收图片
	 	private File file;
	    private String fileFileName;
	    private String fileContentType;
	    
	    public void setFile(File file) {
			this.file = file;
		}

		public void setFileFileName(String fileFileName) {
			this.fileFileName = fileFileName;
		}

		public void setFileContentType(String fileContentType) {
			this.fileContentType = fileContentType;
		}

		
	@SuppressWarnings("deprecation")
	public String myAdd() throws IOException{
		 System.out.println("sdfggggggggggggggggg");
		 if(file != null){  
	           
	            // 获得上传图片的绝对路径.  
	            String path = ServletActionContext.getServletContext().getRealPath(  
	                    "/file");  
	            // 创建文件类型对象:  
	            System.out.println(path+"sdfggggggggggggggggg"+fileFileName);
	            File diskFile = new File(path + "//" + fileFileName);  
	            // 文件上传:  
	            FileUtils.copyFile(file, diskFile);  
	            //保存图片路径
	            menu.setPath("file/" + fileFileName);  
	        }else{
	        	menu.setPath(null);
	        	 System.out.println("sdfggggggggggggggggg");
	        }
		
		menuService.myAdd(menu);
		return "showmenu";
	}
	//删除菜单
	public String myDel(){

		menuService.myDel(id);
		return "showmenu";
	}
	//修改菜单
	public String myEdit(){
		ActionContext.getContext().getSession().put("menuMer", menuService.myMer(id));
		return "mer";
	}
	//新建菜单
	public String mySave() throws IOException{
		System.out.println("sdfggggggggggggggggg");
		
		 if(file != null){  
			 System.out.println("sdfggggggggggggggggg");
	            // 获得上传图片的绝对路径.  
	            String path = ServletActionContext.getServletContext().getRealPath(  
	                    "/file");  
	            // 创建文件类型对象:  
	            File diskFile = new File(path + "//" + fileFileName);  
	            // 文件上传:  
	            FileUtils.copyFile(file, diskFile);  
	      
	            menu.setPath("file/" + fileFileName);  
	        }
		
		menuService.mySave(menu);

		return "showmenu";
	}
	//通过名称搜素菜
	public String search(){
		ActionContext.getContext().getSession().put("searchList", menuService.mysearch(menu.getDishes()));
		return "search";
	}
}
