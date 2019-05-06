// pages/feedback/feedback.js
var commonUtil = require('../../util/common.js');
var app = getApp();

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
    this.setData({
      tip: options
    });
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

  formSubmit(e) {
    var content = e.detail.value.content;
    if (!content) {
      commonUtil.showToast('请按要求将信息填写完整');
    } else {
      var data = {};
      data.tip = content;
      data.email = this.data.tip.email;
      data.title = this.data.tip.title;
      var user = wx.getStorageSync('user');
      data.name = user.nickname;
      commonUtil.doRequest(true, app.constant.tip, data, function(res) {
        setTimeout(function() {
          wx.navigateBack({
            url: '../overall/overall'
          })
        }, 500);
      });
    }
  }
})