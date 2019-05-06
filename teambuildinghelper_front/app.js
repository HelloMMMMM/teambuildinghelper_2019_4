//app.js
App({
  constant: {
    hostUrl: 'http://192.168.0.3/api/',
    login: 'user/login',
    register: 'user/addUser',
    changeAvatar: 'user/changeAvatar',
    editInfo: 'user/updateInfo',
    getGoodsList: 'goods/getGoodsList',
    getActivityList: 'activity/getActivityList',
    getInvitationList: 'invitation/getInvitationList',
    deleteInvitation: 'invitation/deleteInvitation',
    createInvitation: 'invitation/createInvitation',
    updateInvitation:'invitation/updateInvitation',
    createOrder: 'order/createOrder',
    getMyOrderList: 'order/getMyOrder',
    feedback:'feedback/feedback',
    tip:'feedback/tip',
    uploadScene:'overall/uploadImages',
    sceneImages:'overall/getSceneImages'
  },

  onLaunch: function() {

  },

  globalData: {

  }
})