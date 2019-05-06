package cn.jbolt.overall;

import java.util.List;

import com.jfinal.plugin.activerecord.Page;
import com.jfinal.upload.UploadFile;

import cn.jbolt.common.model.Scene;

public class OverallService {

	public void addSceneImages(int userId, List<UploadFile> images) {
		for (UploadFile uploadFile : images) {
			String absolutePath = uploadFile.getFile().getAbsolutePath();
			String s1 = absolutePath.substring(absolutePath.indexOf("upload"));
			String s2 = s1.replace("\\", "/");
			new Scene().setUserId(userId).setPath(s2).save();
		}
	}
	
	public Page<Scene> getSceneImages(int userId,int page){
		return Scene.dao.paginate(page, 10,"select *","from scene where userId=? order by id desc",userId);
	}
}
