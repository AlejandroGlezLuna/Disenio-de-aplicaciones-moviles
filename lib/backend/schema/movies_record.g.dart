// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoviesRecord> _$moviesRecordSerializer =
    new _$MoviesRecordSerializer();

class _$MoviesRecordSerializer implements StructuredSerializer<MoviesRecord> {
  @override
  final Iterable<Type> types = const [MoviesRecord, _$MoviesRecord];
  @override
  final String wireName = 'MoviesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MoviesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.anio;
    if (value != null) {
      result
        ..add('anio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.director;
    if (value != null) {
      result
        ..add('director')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genero;
    if (value != null) {
      result
        ..add('genero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sinopsis;
    if (value != null) {
      result
        ..add('sinopsis')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  MoviesRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoviesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'anio':
          result.anio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'director':
          result.director = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genero':
          result.genero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sinopsis':
          result.sinopsis = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$MoviesRecord extends MoviesRecord {
  @override
  final String titulo;
  @override
  final String anio;
  @override
  final String director;
  @override
  final String genero;
  @override
  final String sinopsis;
  @override
  final String imagen;
  @override
  final DocumentReference<Object> reference;

  factory _$MoviesRecord([void Function(MoviesRecordBuilder) updates]) =>
      (new MoviesRecordBuilder()..update(updates)).build();

  _$MoviesRecord._(
      {this.titulo,
      this.anio,
      this.director,
      this.genero,
      this.sinopsis,
      this.imagen,
      this.reference})
      : super._();

  @override
  MoviesRecord rebuild(void Function(MoviesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoviesRecordBuilder toBuilder() => new MoviesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoviesRecord &&
        titulo == other.titulo &&
        anio == other.anio &&
        director == other.director &&
        genero == other.genero &&
        sinopsis == other.sinopsis &&
        imagen == other.imagen &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, titulo.hashCode), anio.hashCode),
                        director.hashCode),
                    genero.hashCode),
                sinopsis.hashCode),
            imagen.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoviesRecord')
          ..add('titulo', titulo)
          ..add('anio', anio)
          ..add('director', director)
          ..add('genero', genero)
          ..add('sinopsis', sinopsis)
          ..add('imagen', imagen)
          ..add('reference', reference))
        .toString();
  }
}

class MoviesRecordBuilder
    implements Builder<MoviesRecord, MoviesRecordBuilder> {
  _$MoviesRecord _$v;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  String _anio;
  String get anio => _$this._anio;
  set anio(String anio) => _$this._anio = anio;

  String _director;
  String get director => _$this._director;
  set director(String director) => _$this._director = director;

  String _genero;
  String get genero => _$this._genero;
  set genero(String genero) => _$this._genero = genero;

  String _sinopsis;
  String get sinopsis => _$this._sinopsis;
  set sinopsis(String sinopsis) => _$this._sinopsis = sinopsis;

  String _imagen;
  String get imagen => _$this._imagen;
  set imagen(String imagen) => _$this._imagen = imagen;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MoviesRecordBuilder() {
    MoviesRecord._initializeBuilder(this);
  }

  MoviesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _anio = $v.anio;
      _director = $v.director;
      _genero = $v.genero;
      _sinopsis = $v.sinopsis;
      _imagen = $v.imagen;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoviesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoviesRecord;
  }

  @override
  void update(void Function(MoviesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MoviesRecord build() {
    final _$result = _$v ??
        new _$MoviesRecord._(
            titulo: titulo,
            anio: anio,
            director: director,
            genero: genero,
            sinopsis: sinopsis,
            imagen: imagen,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
