import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('个人中心'),
     ),
     body:ListView(
       children: <Widget>[
          _topHeader(),
          _orderTitle(),
          _orderType(),
          _actionList()
        
       ],
     ) ,
   );
  }

  //头像区域

  Widget _topHeader(){

    return Container(
      width: ScreenUtil().setWidth(750),
      padding: EdgeInsets.all(20),
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30), 
            child: ClipOval(

              child:Image.network('https://upload.jianshu.io/users/upload_avatars/20981635/e1dcffb2-6c0f-459e-90d7-32503df2f4a9?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240')
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'keyi',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(36),
                color:Colors.white,

              ),
            ),
          )
        ],
      ),
    );

  }

  //我的订单顶部
  Widget _orderTitle(){

    return Container(
      margin: EdgeInsets.only(top:10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom:BorderSide(width: 1,color:Colors.black12)
        )
      ),
      child: ListTile(
        leading: Icon(Icons.list),
        title:Text('我的订单'),
        trailing: Icon(Icons.arrow_right),
      ),
    );

  }

  Widget _orderType(){

    return Container(
      margin: EdgeInsets.only(top:5),
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(150),
      padding: EdgeInsets.only(top:20),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.account_balance_wallet,
                  size: 30,
                ),
                Text('待付款'),
              ],
            ),
          ),
          //-----------------
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.query_builder,
                  size: 30,
                ),
                Text('待发货'),
              ],
            ),
          ),
           //-----------------
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.directions_car,
                   size: 30,
                ),
                Text('待收货'),
              ],
            ),
          ),
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.content_paste,
                   size: 30,
                ),
                Text('待评价'),
              ],
            ),
          ),
        ],
      ),
    );

  }

  Widget _myListTile(String title){

    return Container(
       decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom:BorderSide(width: 1,color:Colors.black12)
        )
      ),
      child: ListTile(
        leading: Icon(Icons.blur_circular),
        title: Text(title),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }

  Widget _actionList(){
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
            _myListTile('地址管理'),
            _myListTile('客服电话'),
            _myListTile('关于我们'),
        ],
      ),
    );
  }




}