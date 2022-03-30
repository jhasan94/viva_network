import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:example/serializers.dart';

part 'sub_domain.g.dart';

abstract class SubDomain implements Built<SubDomain, SubDomainBuilder> {
  SubDomain._();

  factory SubDomain([updates(SubDomainBuilder b)]) = _$SubDomain;

  @BuiltValueField(wireName: 'CompanyId')
  int get companyId;
  @BuiltValueField(wireName: 'CompanyName')
  String get companyName;
  String toJson() {
    return json.encode(serializers.serializeWith(SubDomain.serializer, this));
  }

  static SubDomain? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SubDomain.serializer, json.decode(jsonString));
  }

  static Serializer<SubDomain> get serializer => _$subDomainSerializer;
}
