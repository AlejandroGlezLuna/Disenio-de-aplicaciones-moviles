import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'movies_record.g.dart';

abstract class MoviesRecord
    implements Built<MoviesRecord, MoviesRecordBuilder> {
  static Serializer<MoviesRecord> get serializer => _$moviesRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get anio;

  @nullable
  String get director;

  @nullable
  String get genero;

  @nullable
  String get sinopsis;

  @nullable
  String get imagen;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MoviesRecordBuilder builder) => builder
    ..titulo = ''
    ..anio = ''
    ..director = ''
    ..genero = ''
    ..sinopsis = ''
    ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movies');

  static Stream<MoviesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MoviesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MoviesRecord._();
  factory MoviesRecord([void Function(MoviesRecordBuilder) updates]) =
      _$MoviesRecord;

  static MoviesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMoviesRecordData({
  String titulo,
  String anio,
  String director,
  String genero,
  String sinopsis,
  String imagen,
}) =>
    serializers.toFirestore(
        MoviesRecord.serializer,
        MoviesRecord((m) => m
          ..titulo = titulo
          ..anio = anio
          ..director = director
          ..genero = genero
          ..sinopsis = sinopsis
          ..imagen = imagen));
