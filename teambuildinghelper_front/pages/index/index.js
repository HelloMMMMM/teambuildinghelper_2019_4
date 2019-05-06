//index.js
var commonUtil = require('../../util/common.js');
var app = getApp();
var page = 1;
var dataIsOver = false;

Page({
  data: {

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {

  },

  onShow: function(options) {
    this.onPullDownRefresh();
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
      this.requestInvitationList();
    }
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {
    if (this.checkLogin()) {
      if (!dataIsOver) {
        page++;
        this.requestInvitationList();
      }
    }
  },

  requestInvitationList() {
    var that = this;
    var data = {};
    var user = wx.getStorageSync('user');
    if (user) {
      data.id = user.id;
      data.page = page;
      commonUtil.doRequest(false, app.constant.getInvitationList, data, function(res) {
        var invitationList = res.data.invitations;
        if (invitationList.length == 0) {
          dataIsOver = true;
        } else {
          that.setData({
            ["list[" + (page - 1) + "]"]: res.data.invitations
          });
        }
      });
    }
  },

  deleteInvitation(e) {
    var that = this;
    var data = {};
    data.id = e.currentTarget.id;
    commonUtil.doRequest(true, app.constant.deleteInvitation, data, function(res) {
      that.onPullDownRefresh();
    });
  },

  createInvitation() {
    if (this.checkLogin()) {
      wx.navigateTo({
        url: '../createinvitation/createinvitation',
      })
    } else {
      commonUtil.showToast('请先登录');
    }
  },

  modifyInvitation(e) {
    var id = e.currentTarget.dataset.id;
    var title = e.currentTarget.dataset.title;
    var content = e.currentTarget.dataset.content;
    wx.navigateTo({
      url: '../createinvitation/createinvitation?id=' + id + '&title=' + title + '&content=' + content,
    })
  },

  onShareAppMessage: function (res) {
    commonUtil.showLoading();
    var title = res.target.dataset.title;
    var content = res.target.dataset.content;
    var inviter = res.target.dataset.inviter;
    return {
      title: '团建助手邀请',
      path: '/pages/shareinvitation/shareinvitation?title='+title+'&content='+content+'&inviter='+inviter,
      imageUrl:'/imgs/default_share_img.jpg',
      complete: function(res){
        commonUtil.hideLoading();
      }
    }
  },

  checkLogin() {
    var user = wx.getStorageSync('user');
    if (user) {
      return true;
    }
    return fales;
  }
})