// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_domain.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubDomain> _$subDomainSerializer = new _$SubDomainSerializer();

class _$SubDomainSerializer implements StructuredSerializer<SubDomain> {
  @override
  final Iterable<Type> types = const [SubDomain, _$SubDomain];
  @override
  final String wireName = 'SubDomain';

  @override
  Iterable<Object?> serialize(Serializers serializers, SubDomain object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'CompanyId',
      serializers.serialize(object.companyId,
          specifiedType: const FullType(int)),
      'CompanyName',
      serializers.serialize(object.companyName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SubDomain deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubDomainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CompanyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'CompanyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SubDomain extends SubDomain {
  @override
  final int companyId;
  @override
  final String companyName;

  factory _$SubDomain([void Function(SubDomainBuilder)? updates]) =>
      (new SubDomainBuilder()..update(updates)).build();

  _$SubDomain._({required this.companyId, required this.companyName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(companyId, 'SubDomain', 'companyId');
    BuiltValueNullFieldError.checkNotNull(
        companyName, 'SubDomain', 'companyName');
  }

  @override
  SubDomain rebuild(void Function(SubDomainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubDomainBuilder toBuilder() => new SubDomainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubDomain &&
        companyId == other.companyId &&
        companyName == other.companyName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, companyId.hashCode), companyName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubDomain')
          ..add('companyId', companyId)
          ..add('companyName', companyName))
        .toString();
  }
}

class SubDomainBuilder implements Builder<SubDomain, SubDomainBuilder> {
  _$SubDomain? _$v;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  SubDomainBuilder();

  SubDomainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyId = $v.companyId;
      _companyName = $v.companyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubDomain other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubDomain;
  }

  @override
  void update(void Function(SubDomainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubDomain build() {
    final _$result = _$v ??
        new _$SubDomain._(
            companyId: BuiltValueNullFieldError.checkNotNull(
                companyId, 'SubDomain', 'companyId'),
            companyName: BuiltValueNullFieldError.checkNotNull(
                companyName, 'SubDomain', 'companyName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
