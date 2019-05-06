// pages/createinvitation/createinvitation.js
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
      invitation: options
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
    this.setData({
      invitation: null
    });
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
    var title = e.detail.value.title;
    var content = e.detail.value.content;
    if (!title || !content || title.length > 16) {
      commonUtil.showToast('请按要求将信息填写完整');
    } else {
      var arg = {};
      var url;
      arg.invitationTitle = title;
      arg.invitationContent = content;
      if (this.data.invitation.title) {
        arg.id = this.data.invitation.id;
        url = app.constant.updateInvitation
      } else {
        var user = wx.getStorageSync('user');
        arg.inviterId = user.id;
        arg.inviterName = user.nickname;
        url = app.constant.createInvitation;
      }
      commonUtil.doRequest(true, url, arg, function(res) {
        setTimeout(function() {
          wx.navigateBack({
            url: '../index/index'
          })
        }, 500);
      });
    }
  }
})