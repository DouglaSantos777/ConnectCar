// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CategoryTable extends Category
    with TableInfo<$CategoryTable, CategoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [nome];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category';
  @override
  VerificationContext validateIntegrity(Insertable<CategoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {nome};
  @override
  CategoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryData(
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
    );
  }

  @override
  $CategoryTable createAlias(String alias) {
    return $CategoryTable(attachedDatabase, alias);
  }
}

class CategoryData extends DataClass implements Insertable<CategoryData> {
  final String nome;
  const CategoryData({required this.nome});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['nome'] = Variable<String>(nome);
    return map;
  }

  CategoryCompanion toCompanion(bool nullToAbsent) {
    return CategoryCompanion(
      nome: Value(nome),
    );
  }

  factory CategoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryData(
      nome: serializer.fromJson<String>(json['nome']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nome': serializer.toJson<String>(nome),
    };
  }

  CategoryData copyWith({String? nome}) => CategoryData(
        nome: nome ?? this.nome,
      );
  CategoryData copyWithCompanion(CategoryCompanion data) {
    return CategoryData(
      nome: data.nome.present ? data.nome.value : this.nome,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryData(')
          ..write('nome: $nome')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => nome.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryData && other.nome == this.nome);
}

class CategoryCompanion extends UpdateCompanion<CategoryData> {
  final Value<String> nome;
  final Value<int> rowid;
  const CategoryCompanion({
    this.nome = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoryCompanion.insert({
    required String nome,
    this.rowid = const Value.absent(),
  }) : nome = Value(nome);
  static Insertable<CategoryData> custom({
    Expression<String>? nome,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (nome != null) 'nome': nome,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoryCompanion copyWith({Value<String>? nome, Value<int>? rowid}) {
    return CategoryCompanion(
      nome: nome ?? this.nome,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryCompanion(')
          ..write('nome: $nome, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StatusTable extends Status with TableInfo<$StatusTable, StatusData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StatusTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [nome];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'status';
  @override
  VerificationContext validateIntegrity(Insertable<StatusData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {nome};
  @override
  StatusData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StatusData(
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
    );
  }

  @override
  $StatusTable createAlias(String alias) {
    return $StatusTable(attachedDatabase, alias);
  }
}

class StatusData extends DataClass implements Insertable<StatusData> {
  final String nome;
  const StatusData({required this.nome});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['nome'] = Variable<String>(nome);
    return map;
  }

  StatusCompanion toCompanion(bool nullToAbsent) {
    return StatusCompanion(
      nome: Value(nome),
    );
  }

  factory StatusData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StatusData(
      nome: serializer.fromJson<String>(json['nome']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nome': serializer.toJson<String>(nome),
    };
  }

  StatusData copyWith({String? nome}) => StatusData(
        nome: nome ?? this.nome,
      );
  StatusData copyWithCompanion(StatusCompanion data) {
    return StatusData(
      nome: data.nome.present ? data.nome.value : this.nome,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StatusData(')
          ..write('nome: $nome')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => nome.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StatusData && other.nome == this.nome);
}

class StatusCompanion extends UpdateCompanion<StatusData> {
  final Value<String> nome;
  final Value<int> rowid;
  const StatusCompanion({
    this.nome = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StatusCompanion.insert({
    required String nome,
    this.rowid = const Value.absent(),
  }) : nome = Value(nome);
  static Insertable<StatusData> custom({
    Expression<String>? nome,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (nome != null) 'nome': nome,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StatusCompanion copyWith({Value<String>? nome, Value<int>? rowid}) {
    return StatusCompanion(
      nome: nome ?? this.nome,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StatusCompanion(')
          ..write('nome: $nome, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CarTable extends Car with TableInfo<$CarTable, CarData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CarTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _renavamMeta =
      const VerificationMeta('renavam');
  @override
  late final GeneratedColumn<int> renavam = GeneratedColumn<int>(
      'renavam', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _plateMeta = const VerificationMeta('plate');
  @override
  late final GeneratedColumn<String> plate = GeneratedColumn<String>(
      'plate', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'brand', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _modelMeta = const VerificationMeta('model');
  @override
  late final GeneratedColumn<String> model = GeneratedColumn<String>(
      'model', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _priceByDayMeta =
      const VerificationMeta('priceByDay');
  @override
  late final GeneratedColumn<double> priceByDay = GeneratedColumn<double>(
      'price_by_day', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _photoMeta = const VerificationMeta('photo');
  @override
  late final GeneratedColumn<String> photo = GeneratedColumn<String>(
      'photo', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES category (nome)'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES status (nome)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        renavam,
        plate,
        brand,
        model,
        year,
        priceByDay,
        photo,
        description,
        createdAt,
        category,
        status
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'car';
  @override
  VerificationContext validateIntegrity(Insertable<CarData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('renavam')) {
      context.handle(_renavamMeta,
          renavam.isAcceptableOrUnknown(data['renavam']!, _renavamMeta));
    } else if (isInserting) {
      context.missing(_renavamMeta);
    }
    if (data.containsKey('plate')) {
      context.handle(
          _plateMeta, plate.isAcceptableOrUnknown(data['plate']!, _plateMeta));
    } else if (isInserting) {
      context.missing(_plateMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    if (data.containsKey('model')) {
      context.handle(
          _modelMeta, model.isAcceptableOrUnknown(data['model']!, _modelMeta));
    } else if (isInserting) {
      context.missing(_modelMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('price_by_day')) {
      context.handle(
          _priceByDayMeta,
          priceByDay.isAcceptableOrUnknown(
              data['price_by_day']!, _priceByDayMeta));
    } else if (isInserting) {
      context.missing(_priceByDayMeta);
    }
    if (data.containsKey('photo')) {
      context.handle(
          _photoMeta, photo.isAcceptableOrUnknown(data['photo']!, _photoMeta));
    } else if (isInserting) {
      context.missing(_photoMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CarData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CarData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      renavam: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}renavam'])!,
      plate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}plate'])!,
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brand'])!,
      model: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}model'])!,
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year'])!,
      priceByDay: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price_by_day'])!,
      photo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}photo'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $CarTable createAlias(String alias) {
    return $CarTable(attachedDatabase, alias);
  }
}

class CarData extends DataClass implements Insertable<CarData> {
  final int id;
  final int renavam;
  final String plate;
  final String brand;
  final String model;
  final int year;
  final double priceByDay;
  final String photo;
  final String description;
  final DateTime createdAt;
  final String category;
  final String status;
  const CarData(
      {required this.id,
      required this.renavam,
      required this.plate,
      required this.brand,
      required this.model,
      required this.year,
      required this.priceByDay,
      required this.photo,
      required this.description,
      required this.createdAt,
      required this.category,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['renavam'] = Variable<int>(renavam);
    map['plate'] = Variable<String>(plate);
    map['brand'] = Variable<String>(brand);
    map['model'] = Variable<String>(model);
    map['year'] = Variable<int>(year);
    map['price_by_day'] = Variable<double>(priceByDay);
    map['photo'] = Variable<String>(photo);
    map['description'] = Variable<String>(description);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['category'] = Variable<String>(category);
    map['status'] = Variable<String>(status);
    return map;
  }

  CarCompanion toCompanion(bool nullToAbsent) {
    return CarCompanion(
      id: Value(id),
      renavam: Value(renavam),
      plate: Value(plate),
      brand: Value(brand),
      model: Value(model),
      year: Value(year),
      priceByDay: Value(priceByDay),
      photo: Value(photo),
      description: Value(description),
      createdAt: Value(createdAt),
      category: Value(category),
      status: Value(status),
    );
  }

  factory CarData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CarData(
      id: serializer.fromJson<int>(json['id']),
      renavam: serializer.fromJson<int>(json['renavam']),
      plate: serializer.fromJson<String>(json['plate']),
      brand: serializer.fromJson<String>(json['brand']),
      model: serializer.fromJson<String>(json['model']),
      year: serializer.fromJson<int>(json['year']),
      priceByDay: serializer.fromJson<double>(json['priceByDay']),
      photo: serializer.fromJson<String>(json['photo']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      category: serializer.fromJson<String>(json['category']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'renavam': serializer.toJson<int>(renavam),
      'plate': serializer.toJson<String>(plate),
      'brand': serializer.toJson<String>(brand),
      'model': serializer.toJson<String>(model),
      'year': serializer.toJson<int>(year),
      'priceByDay': serializer.toJson<double>(priceByDay),
      'photo': serializer.toJson<String>(photo),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'category': serializer.toJson<String>(category),
      'status': serializer.toJson<String>(status),
    };
  }

  CarData copyWith(
          {int? id,
          int? renavam,
          String? plate,
          String? brand,
          String? model,
          int? year,
          double? priceByDay,
          String? photo,
          String? description,
          DateTime? createdAt,
          String? category,
          String? status}) =>
      CarData(
        id: id ?? this.id,
        renavam: renavam ?? this.renavam,
        plate: plate ?? this.plate,
        brand: brand ?? this.brand,
        model: model ?? this.model,
        year: year ?? this.year,
        priceByDay: priceByDay ?? this.priceByDay,
        photo: photo ?? this.photo,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        category: category ?? this.category,
        status: status ?? this.status,
      );
  CarData copyWithCompanion(CarCompanion data) {
    return CarData(
      id: data.id.present ? data.id.value : this.id,
      renavam: data.renavam.present ? data.renavam.value : this.renavam,
      plate: data.plate.present ? data.plate.value : this.plate,
      brand: data.brand.present ? data.brand.value : this.brand,
      model: data.model.present ? data.model.value : this.model,
      year: data.year.present ? data.year.value : this.year,
      priceByDay:
          data.priceByDay.present ? data.priceByDay.value : this.priceByDay,
      photo: data.photo.present ? data.photo.value : this.photo,
      description:
          data.description.present ? data.description.value : this.description,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      category: data.category.present ? data.category.value : this.category,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CarData(')
          ..write('id: $id, ')
          ..write('renavam: $renavam, ')
          ..write('plate: $plate, ')
          ..write('brand: $brand, ')
          ..write('model: $model, ')
          ..write('year: $year, ')
          ..write('priceByDay: $priceByDay, ')
          ..write('photo: $photo, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('category: $category, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, renavam, plate, brand, model, year,
      priceByDay, photo, description, createdAt, category, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CarData &&
          other.id == this.id &&
          other.renavam == this.renavam &&
          other.plate == this.plate &&
          other.brand == this.brand &&
          other.model == this.model &&
          other.year == this.year &&
          other.priceByDay == this.priceByDay &&
          other.photo == this.photo &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.category == this.category &&
          other.status == this.status);
}

class CarCompanion extends UpdateCompanion<CarData> {
  final Value<int> id;
  final Value<int> renavam;
  final Value<String> plate;
  final Value<String> brand;
  final Value<String> model;
  final Value<int> year;
  final Value<double> priceByDay;
  final Value<String> photo;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<String> category;
  final Value<String> status;
  const CarCompanion({
    this.id = const Value.absent(),
    this.renavam = const Value.absent(),
    this.plate = const Value.absent(),
    this.brand = const Value.absent(),
    this.model = const Value.absent(),
    this.year = const Value.absent(),
    this.priceByDay = const Value.absent(),
    this.photo = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.category = const Value.absent(),
    this.status = const Value.absent(),
  });
  CarCompanion.insert({
    this.id = const Value.absent(),
    required int renavam,
    required String plate,
    required String brand,
    required String model,
    required int year,
    required double priceByDay,
    required String photo,
    this.description = const Value.absent(),
    required DateTime createdAt,
    required String category,
    required String status,
  })  : renavam = Value(renavam),
        plate = Value(plate),
        brand = Value(brand),
        model = Value(model),
        year = Value(year),
        priceByDay = Value(priceByDay),
        photo = Value(photo),
        createdAt = Value(createdAt),
        category = Value(category),
        status = Value(status);
  static Insertable<CarData> custom({
    Expression<int>? id,
    Expression<int>? renavam,
    Expression<String>? plate,
    Expression<String>? brand,
    Expression<String>? model,
    Expression<int>? year,
    Expression<double>? priceByDay,
    Expression<String>? photo,
    Expression<String>? description,
    Expression<DateTime>? createdAt,
    Expression<String>? category,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (renavam != null) 'renavam': renavam,
      if (plate != null) 'plate': plate,
      if (brand != null) 'brand': brand,
      if (model != null) 'model': model,
      if (year != null) 'year': year,
      if (priceByDay != null) 'price_by_day': priceByDay,
      if (photo != null) 'photo': photo,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (category != null) 'category': category,
      if (status != null) 'status': status,
    });
  }

  CarCompanion copyWith(
      {Value<int>? id,
      Value<int>? renavam,
      Value<String>? plate,
      Value<String>? brand,
      Value<String>? model,
      Value<int>? year,
      Value<double>? priceByDay,
      Value<String>? photo,
      Value<String>? description,
      Value<DateTime>? createdAt,
      Value<String>? category,
      Value<String>? status}) {
    return CarCompanion(
      id: id ?? this.id,
      renavam: renavam ?? this.renavam,
      plate: plate ?? this.plate,
      brand: brand ?? this.brand,
      model: model ?? this.model,
      year: year ?? this.year,
      priceByDay: priceByDay ?? this.priceByDay,
      photo: photo ?? this.photo,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      category: category ?? this.category,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (renavam.present) {
      map['renavam'] = Variable<int>(renavam.value);
    }
    if (plate.present) {
      map['plate'] = Variable<String>(plate.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (priceByDay.present) {
      map['price_by_day'] = Variable<double>(priceByDay.value);
    }
    if (photo.present) {
      map['photo'] = Variable<String>(photo.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CarCompanion(')
          ..write('id: $id, ')
          ..write('renavam: $renavam, ')
          ..write('plate: $plate, ')
          ..write('brand: $brand, ')
          ..write('model: $model, ')
          ..write('year: $year, ')
          ..write('priceByDay: $priceByDay, ')
          ..write('photo: $photo, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('category: $category, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $CategoryTable category = $CategoryTable(this);
  late final $StatusTable status = $StatusTable(this);
  late final $CarTable car = $CarTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [category, status, car];
}

typedef $$CategoryTableCreateCompanionBuilder = CategoryCompanion Function({
  required String nome,
  Value<int> rowid,
});
typedef $$CategoryTableUpdateCompanionBuilder = CategoryCompanion Function({
  Value<String> nome,
  Value<int> rowid,
});

final class $$CategoryTableReferences
    extends BaseReferences<_$Database, $CategoryTable, CategoryData> {
  $$CategoryTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CarTable, List<CarData>> _carRefsTable(
          _$Database db) =>
      MultiTypedResultKey.fromTable(db.car,
          aliasName: $_aliasNameGenerator(db.category.nome, db.car.category));

  $$CarTableProcessedTableManager get carRefs {
    final manager = $$CarTableTableManager($_db, $_db.car)
        .filter((f) => f.category.nome($_item.nome));

    final cache = $_typedResult.readTableOrNull(_carRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CategoryTableFilterComposer
    extends Composer<_$Database, $CategoryTable> {
  $$CategoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  Expression<bool> carRefs(
      Expression<bool> Function($$CarTableFilterComposer f) f) {
    final $$CarTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.nome,
        referencedTable: $db.car,
        getReferencedColumn: (t) => t.category,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarTableFilterComposer(
              $db: $db,
              $table: $db.car,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CategoryTableOrderingComposer
    extends Composer<_$Database, $CategoryTable> {
  $$CategoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));
}

class $$CategoryTableAnnotationComposer
    extends Composer<_$Database, $CategoryTable> {
  $$CategoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  Expression<T> carRefs<T extends Object>(
      Expression<T> Function($$CarTableAnnotationComposer a) f) {
    final $$CarTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.nome,
        referencedTable: $db.car,
        getReferencedColumn: (t) => t.category,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarTableAnnotationComposer(
              $db: $db,
              $table: $db.car,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CategoryTableTableManager extends RootTableManager<
    _$Database,
    $CategoryTable,
    CategoryData,
    $$CategoryTableFilterComposer,
    $$CategoryTableOrderingComposer,
    $$CategoryTableAnnotationComposer,
    $$CategoryTableCreateCompanionBuilder,
    $$CategoryTableUpdateCompanionBuilder,
    (CategoryData, $$CategoryTableReferences),
    CategoryData,
    PrefetchHooks Function({bool carRefs})> {
  $$CategoryTableTableManager(_$Database db, $CategoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> nome = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CategoryCompanion(
            nome: nome,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String nome,
            Value<int> rowid = const Value.absent(),
          }) =>
              CategoryCompanion.insert(
            nome: nome,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$CategoryTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({carRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (carRefs) db.car],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (carRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$CategoryTableReferences._carRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CategoryTableReferences(db, table, p0).carRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.category == item.nome),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CategoryTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $CategoryTable,
    CategoryData,
    $$CategoryTableFilterComposer,
    $$CategoryTableOrderingComposer,
    $$CategoryTableAnnotationComposer,
    $$CategoryTableCreateCompanionBuilder,
    $$CategoryTableUpdateCompanionBuilder,
    (CategoryData, $$CategoryTableReferences),
    CategoryData,
    PrefetchHooks Function({bool carRefs})>;
typedef $$StatusTableCreateCompanionBuilder = StatusCompanion Function({
  required String nome,
  Value<int> rowid,
});
typedef $$StatusTableUpdateCompanionBuilder = StatusCompanion Function({
  Value<String> nome,
  Value<int> rowid,
});

final class $$StatusTableReferences
    extends BaseReferences<_$Database, $StatusTable, StatusData> {
  $$StatusTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CarTable, List<CarData>> _carRefsTable(
          _$Database db) =>
      MultiTypedResultKey.fromTable(db.car,
          aliasName: $_aliasNameGenerator(db.status.nome, db.car.status));

  $$CarTableProcessedTableManager get carRefs {
    final manager = $$CarTableTableManager($_db, $_db.car)
        .filter((f) => f.status.nome($_item.nome));

    final cache = $_typedResult.readTableOrNull(_carRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$StatusTableFilterComposer extends Composer<_$Database, $StatusTable> {
  $$StatusTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  Expression<bool> carRefs(
      Expression<bool> Function($$CarTableFilterComposer f) f) {
    final $$CarTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.nome,
        referencedTable: $db.car,
        getReferencedColumn: (t) => t.status,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarTableFilterComposer(
              $db: $db,
              $table: $db.car,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StatusTableOrderingComposer extends Composer<_$Database, $StatusTable> {
  $$StatusTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));
}

class $$StatusTableAnnotationComposer
    extends Composer<_$Database, $StatusTable> {
  $$StatusTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  Expression<T> carRefs<T extends Object>(
      Expression<T> Function($$CarTableAnnotationComposer a) f) {
    final $$CarTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.nome,
        referencedTable: $db.car,
        getReferencedColumn: (t) => t.status,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarTableAnnotationComposer(
              $db: $db,
              $table: $db.car,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StatusTableTableManager extends RootTableManager<
    _$Database,
    $StatusTable,
    StatusData,
    $$StatusTableFilterComposer,
    $$StatusTableOrderingComposer,
    $$StatusTableAnnotationComposer,
    $$StatusTableCreateCompanionBuilder,
    $$StatusTableUpdateCompanionBuilder,
    (StatusData, $$StatusTableReferences),
    StatusData,
    PrefetchHooks Function({bool carRefs})> {
  $$StatusTableTableManager(_$Database db, $StatusTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StatusTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StatusTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StatusTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> nome = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              StatusCompanion(
            nome: nome,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String nome,
            Value<int> rowid = const Value.absent(),
          }) =>
              StatusCompanion.insert(
            nome: nome,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$StatusTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({carRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (carRefs) db.car],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (carRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$StatusTableReferences._carRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StatusTableReferences(db, table, p0).carRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.status == item.nome),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$StatusTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $StatusTable,
    StatusData,
    $$StatusTableFilterComposer,
    $$StatusTableOrderingComposer,
    $$StatusTableAnnotationComposer,
    $$StatusTableCreateCompanionBuilder,
    $$StatusTableUpdateCompanionBuilder,
    (StatusData, $$StatusTableReferences),
    StatusData,
    PrefetchHooks Function({bool carRefs})>;
typedef $$CarTableCreateCompanionBuilder = CarCompanion Function({
  Value<int> id,
  required int renavam,
  required String plate,
  required String brand,
  required String model,
  required int year,
  required double priceByDay,
  required String photo,
  Value<String> description,
  required DateTime createdAt,
  required String category,
  required String status,
});
typedef $$CarTableUpdateCompanionBuilder = CarCompanion Function({
  Value<int> id,
  Value<int> renavam,
  Value<String> plate,
  Value<String> brand,
  Value<String> model,
  Value<int> year,
  Value<double> priceByDay,
  Value<String> photo,
  Value<String> description,
  Value<DateTime> createdAt,
  Value<String> category,
  Value<String> status,
});

final class $$CarTableReferences
    extends BaseReferences<_$Database, $CarTable, CarData> {
  $$CarTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CategoryTable _categoryTable(_$Database db) => db.category
      .createAlias($_aliasNameGenerator(db.car.category, db.category.nome));

  $$CategoryTableProcessedTableManager get category {
    final manager = $$CategoryTableTableManager($_db, $_db.category)
        .filter((f) => f.nome($_item.category!));
    final item = $_typedResult.readTableOrNull(_categoryTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $StatusTable _statusTable(_$Database db) => db.status
      .createAlias($_aliasNameGenerator(db.car.status, db.status.nome));

  $$StatusTableProcessedTableManager get status {
    final manager = $$StatusTableTableManager($_db, $_db.status)
        .filter((f) => f.nome($_item.status!));
    final item = $_typedResult.readTableOrNull(_statusTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CarTableFilterComposer extends Composer<_$Database, $CarTable> {
  $$CarTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get renavam => $composableBuilder(
      column: $table.renavam, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get plate => $composableBuilder(
      column: $table.plate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get brand => $composableBuilder(
      column: $table.brand, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get model => $composableBuilder(
      column: $table.model, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get priceByDay => $composableBuilder(
      column: $table.priceByDay, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get photo => $composableBuilder(
      column: $table.photo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$CategoryTableFilterComposer get category {
    final $$CategoryTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.category,
        referencedTable: $db.category,
        getReferencedColumn: (t) => t.nome,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoryTableFilterComposer(
              $db: $db,
              $table: $db.category,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$StatusTableFilterComposer get status {
    final $$StatusTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.status,
        referencedTable: $db.status,
        getReferencedColumn: (t) => t.nome,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StatusTableFilterComposer(
              $db: $db,
              $table: $db.status,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CarTableOrderingComposer extends Composer<_$Database, $CarTable> {
  $$CarTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get renavam => $composableBuilder(
      column: $table.renavam, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get plate => $composableBuilder(
      column: $table.plate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get brand => $composableBuilder(
      column: $table.brand, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get model => $composableBuilder(
      column: $table.model, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get priceByDay => $composableBuilder(
      column: $table.priceByDay, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get photo => $composableBuilder(
      column: $table.photo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$CategoryTableOrderingComposer get category {
    final $$CategoryTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.category,
        referencedTable: $db.category,
        getReferencedColumn: (t) => t.nome,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoryTableOrderingComposer(
              $db: $db,
              $table: $db.category,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$StatusTableOrderingComposer get status {
    final $$StatusTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.status,
        referencedTable: $db.status,
        getReferencedColumn: (t) => t.nome,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StatusTableOrderingComposer(
              $db: $db,
              $table: $db.status,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CarTableAnnotationComposer extends Composer<_$Database, $CarTable> {
  $$CarTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get renavam =>
      $composableBuilder(column: $table.renavam, builder: (column) => column);

  GeneratedColumn<String> get plate =>
      $composableBuilder(column: $table.plate, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<String> get model =>
      $composableBuilder(column: $table.model, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<double> get priceByDay => $composableBuilder(
      column: $table.priceByDay, builder: (column) => column);

  GeneratedColumn<String> get photo =>
      $composableBuilder(column: $table.photo, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$CategoryTableAnnotationComposer get category {
    final $$CategoryTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.category,
        referencedTable: $db.category,
        getReferencedColumn: (t) => t.nome,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoryTableAnnotationComposer(
              $db: $db,
              $table: $db.category,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$StatusTableAnnotationComposer get status {
    final $$StatusTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.status,
        referencedTable: $db.status,
        getReferencedColumn: (t) => t.nome,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StatusTableAnnotationComposer(
              $db: $db,
              $table: $db.status,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CarTableTableManager extends RootTableManager<
    _$Database,
    $CarTable,
    CarData,
    $$CarTableFilterComposer,
    $$CarTableOrderingComposer,
    $$CarTableAnnotationComposer,
    $$CarTableCreateCompanionBuilder,
    $$CarTableUpdateCompanionBuilder,
    (CarData, $$CarTableReferences),
    CarData,
    PrefetchHooks Function({bool category, bool status})> {
  $$CarTableTableManager(_$Database db, $CarTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CarTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CarTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CarTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> renavam = const Value.absent(),
            Value<String> plate = const Value.absent(),
            Value<String> brand = const Value.absent(),
            Value<String> model = const Value.absent(),
            Value<int> year = const Value.absent(),
            Value<double> priceByDay = const Value.absent(),
            Value<String> photo = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<String> category = const Value.absent(),
            Value<String> status = const Value.absent(),
          }) =>
              CarCompanion(
            id: id,
            renavam: renavam,
            plate: plate,
            brand: brand,
            model: model,
            year: year,
            priceByDay: priceByDay,
            photo: photo,
            description: description,
            createdAt: createdAt,
            category: category,
            status: status,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int renavam,
            required String plate,
            required String brand,
            required String model,
            required int year,
            required double priceByDay,
            required String photo,
            Value<String> description = const Value.absent(),
            required DateTime createdAt,
            required String category,
            required String status,
          }) =>
              CarCompanion.insert(
            id: id,
            renavam: renavam,
            plate: plate,
            brand: brand,
            model: model,
            year: year,
            priceByDay: priceByDay,
            photo: photo,
            description: description,
            createdAt: createdAt,
            category: category,
            status: status,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$CarTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({category = false, status = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (category) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.category,
                    referencedTable: $$CarTableReferences._categoryTable(db),
                    referencedColumn:
                        $$CarTableReferences._categoryTable(db).nome,
                  ) as T;
                }
                if (status) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.status,
                    referencedTable: $$CarTableReferences._statusTable(db),
                    referencedColumn:
                        $$CarTableReferences._statusTable(db).nome,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CarTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $CarTable,
    CarData,
    $$CarTableFilterComposer,
    $$CarTableOrderingComposer,
    $$CarTableAnnotationComposer,
    $$CarTableCreateCompanionBuilder,
    $$CarTableUpdateCompanionBuilder,
    (CarData, $$CarTableReferences),
    CarData,
    PrefetchHooks Function({bool category, bool status})>;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$CategoryTableTableManager get category =>
      $$CategoryTableTableManager(_db, _db.category);
  $$StatusTableTableManager get status =>
      $$StatusTableTableManager(_db, _db.status);
  $$CarTableTableManager get car => $$CarTableTableManager(_db, _db.car);
}
