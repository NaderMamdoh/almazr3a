// ignore_for_file: prefer_const_constructors, file_names, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'components/text.dart';



class Policy extends StatefulWidget {

  Policy({Key? key,})
      : super(key: key);

  @override
  State<Policy> createState() => _PolicyState();

}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    
 
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 70),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: ListView(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 30,
                      ),
                      ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReTextNormalSize(text: "الشروط و الأحكام لتطبيق المزرعة",size: 14,),
                    ],
                  )
                ],
              ),

                 Padding(
                   padding: EdgeInsets.only(right: 5,top:16 ),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Flex(
                         direction: Axis.vertical,
                         children: [ReSubText(text: "مرحبا بكم في (تطبيق المزرعة) فضلا قراءة الشروط والأحكام بعناية قبل استخدام الموقع الإلكتروني أو التطبيق، تصفحك أو إضافة أي إعلان لدينا يعتبر إقرار منك بقراءة الشروط والأحكام والموافقة عليها.")]),
                     
                     Flex(
                     direction: Axis.vertical,
                     children: [ReSubText(text: "تطبيق المزرعة هو منصة توفر مساحة للإعلانات لمستخدميها (البائعين والمشترين)، ويقتصر دور (تطبيق المزرعة) على توفير مساحة لالتقاء البائع والمشتري بصورة ميسرة، ولا يتحمل (تطبيق المزرعة) أي مسئولية ولا توفر أي ضمان اتجاه المستخدمين بما يتعلق بعمليات البيع والشراء وجودة المنتجات، ولا يتم الرجوع اليه للمطالبة بالتعويض عن أي خسائر.")]), 
                     
                     Flex(
                     direction: Axis.vertical,
                     children: [ReSubText(text: "تعليمات وقواعد نشر الإعلان:")]), 
                 
                     Padding(
                       padding: EdgeInsets.only(top: 30,right: 10),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                       Flex(
                       direction: Axis.vertical,
                       children: [ReSubText(text: "-  يتم إدراج الإعلانات بعد التسجيل برقم الهاتف المحمول.")]),

                       
                       Flex(
                       direction: Axis.vertical,
                       children: [ReSubText(text: "-  يجب على المعلن تصنيف الإعلان ونشره تحت القسم الصحيح.")]), 
                       
                       Flex(
                       direction: Axis.vertical,
                       children: [ReSubText(text: "-  يجب كتابة عنوان للإعلان ووصف المنتج والسعر وإضافة الصور بشكل صحيح ويجب أن تكون السلعة حقيقة وموجودة.")]), 
                       
                       Flex(
                       direction: Axis.vertical,
                       children: [ReSubText(text: "-  الإعلانات تكون بصفة شخصية ويمنع نشر إعلانات بصفة تجارية أو نيابة عن الغير، ويمنع نشر الإعلانات الخاصة بالشركات أو المتاجر.")]),
                       
                       Flex(
                       direction: Axis.vertical,
                       children: [ReSubText(text: "-  يحظر نشر إعلانات تحتوي على ألفاظ أو صور مخالفة للآداب العامة أو غير قانونية كذلك يمنع أي إعلان يهدف للتشهير بالأشخاص او المؤسسات.")]),
                                     
                       Flex(
                       direction: Axis.vertical,
                       children: [ReSubText(text: "-  يحظر نشر إعلانات بيع الأسلحة بجميع أنواعها سواء كانت مرخصة أو غير مرخصة.")]),
                                  
                       Flex(
                       direction: Axis.vertical,
                       children: [ReSubText(text: "-  يكون كل إعلان لسلعة واحدة فقط، وبحال تعدد السلع فيتم إنشاء إعلان مستقل لكل سلعة.")]),
                                      
                         ],
                       ),
                     ), 
                 
                     
                     ],
                   ),
                 ), 
            
            
                   
                   
            

              
            ]),
          ),
        ),
      ),
    );
  }

 
}






