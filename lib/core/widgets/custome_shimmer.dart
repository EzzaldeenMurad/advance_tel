  import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

 CustomeShimmer({required double Widget,  required double height,Widget? child}) =>  Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: Widget,
            height: height,
            color: Colors.white,
            child:child ,
          ),
);