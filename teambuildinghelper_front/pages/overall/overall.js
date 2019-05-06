// pages/overall/overall.js

var commonUtil = require('../../util/common.js');
var app = getApp();
var page = 1;
var dataIsOver = false;

Page({

  /**
   * 页面的初始数据
   */
  data: {
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function() {
    this.onPullDownRefresh();
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function() {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function() {
    this.setData({
      list: null
    });
    if (this.checkLogin()) {
      page = 1;
      dataIsOver = false;
      this.requestSceneList();
    }
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {
    if (this.checkLogin()) {
      if (!dataIsOver) {
        page++;
        this.requestSceneList();
      }
    }
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  },


  upload: function() {
    if (this.checkLogin()) {
      this.selectImages();
    } else {
      commonUtil.showToast("请先登录");
    }
  },

  checkLogin() {
    var user = wx.getStorageSync('user');
    if (user) {
      return true;
    }
    return fales;
  },

  selectImages: function() {
    var that = this;
    var user = wx.getStorageSync('user');
    commonUtil.showLoading();
    wx.chooseImage({
      count: 9, // 最多可以选择的图片张数，默认9
      sizeType: ['compressed'], // original 原图，compressed 压缩图，默认二者都有
      sourceType: ['album', 'camera'], // album 从相册选图，camera 使用相机，默认二者都有
      success: function(res) {
        var length = res.tempFilePaths.length;
        var paths = res.tempFilePaths;
        that.uploadFile(paths, 0, length, user.id);
      },
      complete() {
        commonUtil.hideLoading();
      }
    })
  },

  uploadFile(paths, index, length, userId) {
    var that = this;
    wx.uploadFile({
      url: app.constant.hostUrl + app.constant.uploadScene,
      filePath: paths[index],
      name: 'images',
      formData: {
        id: userId
      }, // HTTP 请求中其他额外的 form data
      success(res) {
        //上传文件时，对于返回的json不会自动解析，需手动解析
        var data = JSON.parse(res.data);
        var msg = data.msg;
        var code = data.code;
        if (msg) {
          if (code == 1 && index == (length - 1)) {
            commonUtil.showToast(msg);
          }
        }
        if (code == 1) {
          if (index < (length - 1)){
            index++;
            that.uploadFile(paths, index, length, userId);
          }else{
            that.onShow();
          }
        }
      },
      fail(res) {
        commonUtil.showToast(res.errMsg);
      }
    })
  },

  requestSceneList() {
    var that = this;
    var data = {};
    data.page = page;
    var user = wx.getStorageSync('user');
    if (user) {
      data.id = user.id;
      commonUtil.doRequest(false, app.constant.sceneImages, data, function(res) {
        var images = res.data.images;
        if (images.length == 0) {
          dataIsOver = true;
        } else {
          that.setData({
            ["list[" + (page - 1) + "]"]: res.data.images
          });
        }
      });
    }
  },

  preview(e){
    var paths=[];
    for(var i=0;i<this.data.list.length;i++){
      var pathPage=this.data.list[i];
      for(var j=0;j<pathPage.length;j++){
        paths[i*10+j]=pathPage[j];
      }
    }
    var current=e.currentTarget.dataset.path;
    wx.previewImage({
      current: current, // 当前显示图片的http链接
      urls: paths // 需要预览的图片http链接列表
    })
  },

  toTip(){
    wx.navigateTo({
      url: '../tip/tip',
    })
  }
})