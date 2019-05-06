// pages/editinfo/editinfo.js
var commonUtil = require('../../util/common.js');
var app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list: [{
      id: 'password',
      name: '6-12位密码',
      type: "text",
      maxLength: 12,
      isPassword: true
    }, {
      id: 'nickName',
      name: '8位以内昵称',
      type: 'text',
      maxLength: 8,
      isPassword: false
    }, {
      id: 'phone',
      name: '11位手机号',
      type: 'number',
      maxLength: 11,
      isPassword: false
    }]
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
    var user = wx.getStorageSync('user');
    this.setData({
      'list[0].value': user.password,
      'list[1].value': user.nickname,
      'list[2].value': user.phone
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

  updateInfo(e) {
    var data = {};
    var user = wx.getStorageSync('user');
    data.id = user.id;
    data.password = e.detail.value.password;
    data.nickName = e.detail.value.nickName;
    data.phone = e.detail.value.phone;
    commonUtil.doRequest(true, app.constant.editInfo, data, function(res) {
      var user = wx.getStorageSync('user');
      var oldPassword = user.password;
      if (oldPassword != data.password) {
        commonUtil.showToast('您更改了密码，请重新登录');
        wx.removeStorageSync('user');
      } else {
        wx.setStorageSync('user', res.data.user);
      }
      setTimeout(function() {
        wx.navigateBack({
          url: '../me/me'
        })
      }, 500);
    });
  }
})