// pages/me/me.js
var app = getApp();
var commonUtil = require('../../util/common.js');
const updateManager = wx.getUpdateManager()

Page({

  /**
   * 页面的初始数据
   */
  data: {
    list: [{
        id: 1,
        name: '联系方式',
        isInfo: true
      }, {
        id: 2,
        name: '我的订单',
        isInfo: false
      }, {
        id: 3,
        name: '编辑资料',
        isInfo: false
      }, {
        id: 4,
        name: '意见反馈',
        isInfo: false
      },
      {
        id: 6,
        name: '检查更新',
        isInfo: false
      },
      {
        id: 5,
        name: '退出登录',
        isInfo: false
      }
    ]
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
    this.setData({
      info: wx.getStorageSync('user')
    });
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

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  },

  toLogin: function() {
    wx.navigateTo({
      url: "../login/login"
    })
  },

  clickItem: function(e) {
    if (!this.data.info) {
      commonUtil.showToast('请先登录');
      return;
    }
    switch (e.currentTarget.id) {
      case '2':
        this.toMyOrder();
        break;
      case '3':
        this.toEditInfo();
        break;
      case '4':
        this.toFeedback();
        break;
      case '5':
        this.exit();
        break;
      case '6':
        updateManager.onCheckForUpdate(function (res) {
          // 请求完新版本信息的回调
          if (res.hasUpdate){
            commonUtil.showToast("有新版本，正在后台为您更新");
          }else{
            commonUtil.showToast("已经是最新版本了");
          }
        });
        updateManager.onUpdateReady(function () {
          wx.showModal({
            title: '更新提示',
            content: '新版本已经准备好，是否重启应用？',
            success(res) {
              if (res.confirm) {
                // 新的版本已经下载好，调用 applyUpdate 应用新版本并重启
                updateManager.applyUpdate()
              }
            }
          })
        })
        updateManager.onUpdateFailed(function () {
          // 新版本下载失败
          commonUtil.showToast("新版本下载失败,请检查网络后重试");
        })
        break
    }
  },

  toFeedback() {
    wx.navigateTo({
      url: '../feedback/feedback',
    })
  },

  toMyOrder() {
    wx.navigateTo({
      url: '../myorder/myorder',
    })
  },

  toEditInfo() {
    wx.navigateTo({
      url: '../editinfo/editinfo',
    })
  },

  exit: function() {
    var that = this;
    wx.showModal({
      title: '退出登录',
      content: '是否退出登录？',
      success(res) {
        if (res.confirm) {
          wx.removeStorageSync('user');
          that.onShow();
        }
      }
    })
  },

  //更换头像
  changeAvatar: function() {
    var that = this;
    var user = wx.getStorageSync('user');
    commonUtil.showLoading();
    wx.chooseImage({
      count: 1, // 最多可以选择的图片张数，默认9
      sizeType: ['compressed'], // original 原图，compressed 压缩图，默认二者都有
      sourceType: ['album', 'camera'], // album 从相册选图，camera 使用相机，默认二者都有
      success: function(res) {
        wx.uploadFile({
          url: app.constant.hostUrl + app.constant.changeAvatar,
          filePath: res.tempFilePaths[0],
          name: 'avatar',
          formData: {
            id: user.id
          }, // HTTP 请求中其他额外的 form data
          success(res) {
            //上传文件时，对于返回的json不会自动解析，需手动解析
            var data = JSON.parse(res.data);
            var msg = data.msg;
            if (msg) {
              commonUtil.showToast(msg);
            }
            var code = data.code;
            if (code == 1) {
              wx.setStorageSync('user', data.user);
              that.onShow();
            }
          },
          fail(res) {
            commonUtil.showToast(res.errMsg);
          }
        })
      },
      complete() {
        commonUtil.hideLoading();
      }
    })
  }
})