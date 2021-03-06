// pages/store/store.js
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
    this.requestGoodsList();
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
    this.requestGoodsList();
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {
    if (!dataIsOver) {
      page++;
      this.requestGoodsList();
    }
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  },

  requestGoodsList() {
    var that = this;
    var data = {};
    data.page = page;
    commonUtil.doRequest(false, app.constant.getGoodsList, data, function(res) {
      var goodsList = res.data.goodsList;
      if (goodsList.length == 0) {
        dataIsOver = true;
      } else {
        that.setData({
          ["list[" + (page - 1) + "]"]: res.data.goodsList
        });
      }
    });
  },

  buyGoods(e) {
    var user = wx.getStorageSync('user');
    if (user) {
      var userId = user.id;
      var goodsId = e.currentTarget.id;
      var data = {};
      data.orderType = 1;
      data.goodsId = goodsId;
      data.userId = userId;
      commonUtil.doRequest(true, app.constant.createOrder, data, function(res) {
        //微信支付，需要支付商户，需审核
        wx.requestPayment({
          timeStamp: '',
          nonceStr: '',
          package: '',
          signType: 'MD5',
          paySign: '',
          success(res) { },
          fail(res) { }
        })
      });
    } else {
      commonUtil.showToast('请先登录');
    }
  }
})