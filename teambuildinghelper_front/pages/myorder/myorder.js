// pages/myorder/myorder.js
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
    page = 1;
    this.requestOrderList();
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
    this.setData({
      list: null
    });
    page = 1;
    dataIsOver = false;
    this.requestOrderList();
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {
    if (!dataIsOver) {
      page++;
      this.requestOrderList();
    }
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  },

  requestOrderList() {
    var that = this;
    var user = wx.getStorageSync('user');
    var data = {};
    data.page = page;
    data.id = user.id;
    commonUtil.doRequest(false, app.constant.getMyOrderList, data, function(res) {
      var orderList = res.data.orderBeans;
      if (orderList.length == 0) {
        dataIsOver = true;
      } else {
        that.setData({
          ["list[" + (page - 1) + "]"]: res.data.orderBeans
        });
      }
    });
  },

  toTip(e) {
    var email = e.currentTarget.dataset.email;
    var title = e.currentTarget.dataset.title;
    var agency = e.currentTarget.dataset.agency;
    wx.navigateTo({
      url: '../tip/tip?title=' + title + '&email=' + email + "&agency=" + agency,
    })
  }
})