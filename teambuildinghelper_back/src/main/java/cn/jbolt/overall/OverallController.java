package cn.jbolt.overall;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.aop.Inject;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.upload.UploadFile;

import cn.jbolt.Constant;
import cn.jbolt.apibean.ResponseBean;
import cn.jbolt.apibean.SceneImagesBean;
import cn.jbolt.common.model.Scene;

public class OverallController extends Controller {

	@Inject
	private OverallService overallService;

	public void uploadImages() {
		List<UploadFile> uploadFiles = getFiles();
		int userId = getParaToInt("id");
		overallService.addSceneImages(userId, uploadFiles);
		ResponseBean responseBean = new ResponseBean();
		responseBean.setCode(1);
		responseBean.setMsg("上传成功");
		renderJson(responseBean);
	}

	public void getSceneImages() {
		int userId = getParaToInt("id");
		int page = getParaToInt("page", 1);
		Page<Scene> pages = overallService.getSceneImages(userId, page);
		SceneImagesBean sceneImagesBean = new SceneImagesBean();
		sceneImagesBean.setCode(1);
		List<Scene> scenes = pages.getList();
		List<String> paths = new ArrayList<>();
		for (Scene scene : scenes) {
			paths.add(Constant.baseUrl + scene.getPath());
		}
		sceneImagesBean.setImages(paths);
		renderJson(sceneImagesBean);
	}
}
