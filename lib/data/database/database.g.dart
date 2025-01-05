// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CarsTable extends Cars with TableInfo<$CarsTable, Car> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CarsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant("Disponível"));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
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
        category,
        status,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cars';
  @override
  VerificationContext validateIntegrity(Insertable<Car> instance,
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
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Car map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Car(
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
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $CarsTable createAlias(String alias) {
    return $CarsTable(attachedDatabase, alias);
  }
}

class Car extends DataClass implements Insertable<Car> {
  final int id;
  final int renavam;
  final String plate;
  final String brand;
  final String model;
  final int year;
  final double priceByDay;
  final String photo;
  final String description;
  final String category;
  final String status;
  final DateTime createdAt;
  const Car(
      {required this.id,
      required this.renavam,
      required this.plate,
      required this.brand,
      required this.model,
      required this.year,
      required this.priceByDay,
      required this.photo,
      required this.description,
      required this.category,
      required this.status,
      required this.createdAt});
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
    map['category'] = Variable<String>(category);
    map['status'] = Variable<String>(status);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CarsCompanion toCompanion(bool nullToAbsent) {
    return CarsCompanion(
      id: Value(id),
      renavam: Value(renavam),
      plate: Value(plate),
      brand: Value(brand),
      model: Value(model),
      year: Value(year),
      priceByDay: Value(priceByDay),
      photo: Value(photo),
      description: Value(description),
      category: Value(category),
      status: Value(status),
      createdAt: Value(createdAt),
    );
  }

  factory Car.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Car(
      id: serializer.fromJson<int>(json['id']),
      renavam: serializer.fromJson<int>(json['renavam']),
      plate: serializer.fromJson<String>(json['plate']),
      brand: serializer.fromJson<String>(json['brand']),
      model: serializer.fromJson<String>(json['model']),
      year: serializer.fromJson<int>(json['year']),
      priceByDay: serializer.fromJson<double>(json['priceByDay']),
      photo: serializer.fromJson<String>(json['photo']),
      description: serializer.fromJson<String>(json['description']),
      category: serializer.fromJson<String>(json['category']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
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
      'category': serializer.toJson<String>(category),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Car copyWith(
          {int? id,
          int? renavam,
          String? plate,
          String? brand,
          String? model,
          int? year,
          double? priceByDay,
          String? photo,
          String? description,
          String? category,
          String? status,
          DateTime? createdAt}) =>
      Car(
        id: id ?? this.id,
        renavam: renavam ?? this.renavam,
        plate: plate ?? this.plate,
        brand: brand ?? this.brand,
        model: model ?? this.model,
        year: year ?? this.year,
        priceByDay: priceByDay ?? this.priceByDay,
        photo: photo ?? this.photo,
        description: description ?? this.description,
        category: category ?? this.category,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
      );
  Car copyWithCompanion(CarsCompanion data) {
    return Car(
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
      category: data.category.present ? data.category.value : this.category,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Car(')
          ..write('id: $id, ')
          ..write('renavam: $renavam, ')
          ..write('plate: $plate, ')
          ..write('brand: $brand, ')
          ..write('model: $model, ')
          ..write('year: $year, ')
          ..write('priceByDay: $priceByDay, ')
          ..write('photo: $photo, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, renavam, plate, brand, model, year,
      priceByDay, photo, description, category, status, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Car &&
          other.id == this.id &&
          other.renavam == this.renavam &&
          other.plate == this.plate &&
          other.brand == this.brand &&
          other.model == this.model &&
          other.year == this.year &&
          other.priceByDay == this.priceByDay &&
          other.photo == this.photo &&
          other.description == this.description &&
          other.category == this.category &&
          other.status == this.status &&
          other.createdAt == this.createdAt);
}

class CarsCompanion extends UpdateCompanion<Car> {
  final Value<int> id;
  final Value<int> renavam;
  final Value<String> plate;
  final Value<String> brand;
  final Value<String> model;
  final Value<int> year;
  final Value<double> priceByDay;
  final Value<String> photo;
  final Value<String> description;
  final Value<String> category;
  final Value<String> status;
  final Value<DateTime> createdAt;
  const CarsCompanion({
    this.id = const Value.absent(),
    this.renavam = const Value.absent(),
    this.plate = const Value.absent(),
    this.brand = const Value.absent(),
    this.model = const Value.absent(),
    this.year = const Value.absent(),
    this.priceByDay = const Value.absent(),
    this.photo = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  CarsCompanion.insert({
    this.id = const Value.absent(),
    required int renavam,
    required String plate,
    required String brand,
    required String model,
    required int year,
    required double priceByDay,
    required String photo,
    this.description = const Value.absent(),
    required String category,
    this.status = const Value.absent(),
    required DateTime createdAt,
  })  : renavam = Value(renavam),
        plate = Value(plate),
        brand = Value(brand),
        model = Value(model),
        year = Value(year),
        priceByDay = Value(priceByDay),
        photo = Value(photo),
        category = Value(category),
        createdAt = Value(createdAt);
  static Insertable<Car> custom({
    Expression<int>? id,
    Expression<int>? renavam,
    Expression<String>? plate,
    Expression<String>? brand,
    Expression<String>? model,
    Expression<int>? year,
    Expression<double>? priceByDay,
    Expression<String>? photo,
    Expression<String>? description,
    Expression<String>? category,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
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
      if (category != null) 'category': category,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CarsCompanion copyWith(
      {Value<int>? id,
      Value<int>? renavam,
      Value<String>? plate,
      Value<String>? brand,
      Value<String>? model,
      Value<int>? year,
      Value<double>? priceByDay,
      Value<String>? photo,
      Value<String>? description,
      Value<String>? category,
      Value<String>? status,
      Value<DateTime>? createdAt}) {
    return CarsCompanion(
      id: id ?? this.id,
      renavam: renavam ?? this.renavam,
      plate: plate ?? this.plate,
      brand: brand ?? this.brand,
      model: model ?? this.model,
      year: year ?? this.year,
      priceByDay: priceByDay ?? this.priceByDay,
      photo: photo ?? this.photo,
      description: description ?? this.description,
      category: category ?? this.category,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
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
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CarsCompanion(')
          ..write('id: $id, ')
          ..write('renavam: $renavam, ')
          ..write('plate: $plate, ')
          ..write('brand: $brand, ')
          ..write('model: $model, ')
          ..write('year: $year, ')
          ..write('priceByDay: $priceByDay, ')
          ..write('photo: $photo, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ClienteTable extends Cliente with TableInfo<$ClienteTable, ClienteData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cpfMeta = const VerificationMeta('cpf');
  @override
  late final GeneratedColumn<String> cpf = GeneratedColumn<String>(
      'cpf', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 14),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cnhMeta = const VerificationMeta('cnh');
  @override
  late final GeneratedColumn<String> cnh = GeneratedColumn<String>(
      'cnh', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _enderecoRuaMeta =
      const VerificationMeta('enderecoRua');
  @override
  late final GeneratedColumn<String> enderecoRua = GeneratedColumn<String>(
      'endereco_rua', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _enderecoNumeroMeta =
      const VerificationMeta('enderecoNumero');
  @override
  late final GeneratedColumn<String> enderecoNumero = GeneratedColumn<String>(
      'endereco_numero', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _enderecoBairroMeta =
      const VerificationMeta('enderecoBairro');
  @override
  late final GeneratedColumn<String> enderecoBairro = GeneratedColumn<String>(
      'endereco_bairro', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _enderecoCidadeMeta =
      const VerificationMeta('enderecoCidade');
  @override
  late final GeneratedColumn<String> enderecoCidade = GeneratedColumn<String>(
      'endereco_cidade', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _enderecoEstadoMeta =
      const VerificationMeta('enderecoEstado');
  @override
  late final GeneratedColumn<String> enderecoEstado = GeneratedColumn<String>(
      'endereco_estado', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _enderecoCepMeta =
      const VerificationMeta('enderecoCep');
  @override
  late final GeneratedColumn<String> enderecoCep = GeneratedColumn<String>(
      'endereco_cep', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _telefoneMeta =
      const VerificationMeta('telefone');
  @override
  late final GeneratedColumn<String> telefone = GeneratedColumn<String>(
      'telefone', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 15),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        nome,
        cpf,
        cnh,
        enderecoRua,
        enderecoNumero,
        enderecoBairro,
        enderecoCidade,
        enderecoEstado,
        enderecoCep,
        telefone,
        email
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cliente';
  @override
  VerificationContext validateIntegrity(Insertable<ClienteData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('cpf')) {
      context.handle(
          _cpfMeta, cpf.isAcceptableOrUnknown(data['cpf']!, _cpfMeta));
    } else if (isInserting) {
      context.missing(_cpfMeta);
    }
    if (data.containsKey('cnh')) {
      context.handle(
          _cnhMeta, cnh.isAcceptableOrUnknown(data['cnh']!, _cnhMeta));
    } else if (isInserting) {
      context.missing(_cnhMeta);
    }
    if (data.containsKey('endereco_rua')) {
      context.handle(
          _enderecoRuaMeta,
          enderecoRua.isAcceptableOrUnknown(
              data['endereco_rua']!, _enderecoRuaMeta));
    } else if (isInserting) {
      context.missing(_enderecoRuaMeta);
    }
    if (data.containsKey('endereco_numero')) {
      context.handle(
          _enderecoNumeroMeta,
          enderecoNumero.isAcceptableOrUnknown(
              data['endereco_numero']!, _enderecoNumeroMeta));
    } else if (isInserting) {
      context.missing(_enderecoNumeroMeta);
    }
    if (data.containsKey('endereco_bairro')) {
      context.handle(
          _enderecoBairroMeta,
          enderecoBairro.isAcceptableOrUnknown(
              data['endereco_bairro']!, _enderecoBairroMeta));
    } else if (isInserting) {
      context.missing(_enderecoBairroMeta);
    }
    if (data.containsKey('endereco_cidade')) {
      context.handle(
          _enderecoCidadeMeta,
          enderecoCidade.isAcceptableOrUnknown(
              data['endereco_cidade']!, _enderecoCidadeMeta));
    } else if (isInserting) {
      context.missing(_enderecoCidadeMeta);
    }
    if (data.containsKey('endereco_estado')) {
      context.handle(
          _enderecoEstadoMeta,
          enderecoEstado.isAcceptableOrUnknown(
              data['endereco_estado']!, _enderecoEstadoMeta));
    } else if (isInserting) {
      context.missing(_enderecoEstadoMeta);
    }
    if (data.containsKey('endereco_cep')) {
      context.handle(
          _enderecoCepMeta,
          enderecoCep.isAcceptableOrUnknown(
              data['endereco_cep']!, _enderecoCepMeta));
    } else if (isInserting) {
      context.missing(_enderecoCepMeta);
    }
    if (data.containsKey('telefone')) {
      context.handle(_telefoneMeta,
          telefone.isAcceptableOrUnknown(data['telefone']!, _telefoneMeta));
    } else if (isInserting) {
      context.missing(_telefoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClienteData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      cpf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cpf'])!,
      cnh: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cnh'])!,
      enderecoRua: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_rua'])!,
      enderecoNumero: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}endereco_numero'])!,
      enderecoBairro: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}endereco_bairro'])!,
      enderecoCidade: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}endereco_cidade'])!,
      enderecoEstado: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}endereco_estado'])!,
      enderecoCep: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_cep'])!,
      telefone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}telefone'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
    );
  }

  @override
  $ClienteTable createAlias(String alias) {
    return $ClienteTable(attachedDatabase, alias);
  }
}

class ClienteData extends DataClass implements Insertable<ClienteData> {
  final int id;
  final String nome;
  final String cpf;
  final String cnh;
  final String enderecoRua;
  final String enderecoNumero;
  final String enderecoBairro;
  final String enderecoCidade;
  final String enderecoEstado;
  final String enderecoCep;
  final String telefone;
  final String email;
  const ClienteData(
      {required this.id,
      required this.nome,
      required this.cpf,
      required this.cnh,
      required this.enderecoRua,
      required this.enderecoNumero,
      required this.enderecoBairro,
      required this.enderecoCidade,
      required this.enderecoEstado,
      required this.enderecoCep,
      required this.telefone,
      required this.email});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['cpf'] = Variable<String>(cpf);
    map['cnh'] = Variable<String>(cnh);
    map['endereco_rua'] = Variable<String>(enderecoRua);
    map['endereco_numero'] = Variable<String>(enderecoNumero);
    map['endereco_bairro'] = Variable<String>(enderecoBairro);
    map['endereco_cidade'] = Variable<String>(enderecoCidade);
    map['endereco_estado'] = Variable<String>(enderecoEstado);
    map['endereco_cep'] = Variable<String>(enderecoCep);
    map['telefone'] = Variable<String>(telefone);
    map['email'] = Variable<String>(email);
    return map;
  }

  ClienteCompanion toCompanion(bool nullToAbsent) {
    return ClienteCompanion(
      id: Value(id),
      nome: Value(nome),
      cpf: Value(cpf),
      cnh: Value(cnh),
      enderecoRua: Value(enderecoRua),
      enderecoNumero: Value(enderecoNumero),
      enderecoBairro: Value(enderecoBairro),
      enderecoCidade: Value(enderecoCidade),
      enderecoEstado: Value(enderecoEstado),
      enderecoCep: Value(enderecoCep),
      telefone: Value(telefone),
      email: Value(email),
    );
  }

  factory ClienteData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClienteData(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      cpf: serializer.fromJson<String>(json['cpf']),
      cnh: serializer.fromJson<String>(json['cnh']),
      enderecoRua: serializer.fromJson<String>(json['enderecoRua']),
      enderecoNumero: serializer.fromJson<String>(json['enderecoNumero']),
      enderecoBairro: serializer.fromJson<String>(json['enderecoBairro']),
      enderecoCidade: serializer.fromJson<String>(json['enderecoCidade']),
      enderecoEstado: serializer.fromJson<String>(json['enderecoEstado']),
      enderecoCep: serializer.fromJson<String>(json['enderecoCep']),
      telefone: serializer.fromJson<String>(json['telefone']),
      email: serializer.fromJson<String>(json['email']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'cpf': serializer.toJson<String>(cpf),
      'cnh': serializer.toJson<String>(cnh),
      'enderecoRua': serializer.toJson<String>(enderecoRua),
      'enderecoNumero': serializer.toJson<String>(enderecoNumero),
      'enderecoBairro': serializer.toJson<String>(enderecoBairro),
      'enderecoCidade': serializer.toJson<String>(enderecoCidade),
      'enderecoEstado': serializer.toJson<String>(enderecoEstado),
      'enderecoCep': serializer.toJson<String>(enderecoCep),
      'telefone': serializer.toJson<String>(telefone),
      'email': serializer.toJson<String>(email),
    };
  }

  ClienteData copyWith(
          {int? id,
          String? nome,
          String? cpf,
          String? cnh,
          String? enderecoRua,
          String? enderecoNumero,
          String? enderecoBairro,
          String? enderecoCidade,
          String? enderecoEstado,
          String? enderecoCep,
          String? telefone,
          String? email}) =>
      ClienteData(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        cpf: cpf ?? this.cpf,
        cnh: cnh ?? this.cnh,
        enderecoRua: enderecoRua ?? this.enderecoRua,
        enderecoNumero: enderecoNumero ?? this.enderecoNumero,
        enderecoBairro: enderecoBairro ?? this.enderecoBairro,
        enderecoCidade: enderecoCidade ?? this.enderecoCidade,
        enderecoEstado: enderecoEstado ?? this.enderecoEstado,
        enderecoCep: enderecoCep ?? this.enderecoCep,
        telefone: telefone ?? this.telefone,
        email: email ?? this.email,
      );
  ClienteData copyWithCompanion(ClienteCompanion data) {
    return ClienteData(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      cpf: data.cpf.present ? data.cpf.value : this.cpf,
      cnh: data.cnh.present ? data.cnh.value : this.cnh,
      enderecoRua:
          data.enderecoRua.present ? data.enderecoRua.value : this.enderecoRua,
      enderecoNumero: data.enderecoNumero.present
          ? data.enderecoNumero.value
          : this.enderecoNumero,
      enderecoBairro: data.enderecoBairro.present
          ? data.enderecoBairro.value
          : this.enderecoBairro,
      enderecoCidade: data.enderecoCidade.present
          ? data.enderecoCidade.value
          : this.enderecoCidade,
      enderecoEstado: data.enderecoEstado.present
          ? data.enderecoEstado.value
          : this.enderecoEstado,
      enderecoCep:
          data.enderecoCep.present ? data.enderecoCep.value : this.enderecoCep,
      telefone: data.telefone.present ? data.telefone.value : this.telefone,
      email: data.email.present ? data.email.value : this.email,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClienteData(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cpf: $cpf, ')
          ..write('cnh: $cnh, ')
          ..write('enderecoRua: $enderecoRua, ')
          ..write('enderecoNumero: $enderecoNumero, ')
          ..write('enderecoBairro: $enderecoBairro, ')
          ..write('enderecoCidade: $enderecoCidade, ')
          ..write('enderecoEstado: $enderecoEstado, ')
          ..write('enderecoCep: $enderecoCep, ')
          ..write('telefone: $telefone, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      nome,
      cpf,
      cnh,
      enderecoRua,
      enderecoNumero,
      enderecoBairro,
      enderecoCidade,
      enderecoEstado,
      enderecoCep,
      telefone,
      email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClienteData &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.cpf == this.cpf &&
          other.cnh == this.cnh &&
          other.enderecoRua == this.enderecoRua &&
          other.enderecoNumero == this.enderecoNumero &&
          other.enderecoBairro == this.enderecoBairro &&
          other.enderecoCidade == this.enderecoCidade &&
          other.enderecoEstado == this.enderecoEstado &&
          other.enderecoCep == this.enderecoCep &&
          other.telefone == this.telefone &&
          other.email == this.email);
}

class ClienteCompanion extends UpdateCompanion<ClienteData> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> cpf;
  final Value<String> cnh;
  final Value<String> enderecoRua;
  final Value<String> enderecoNumero;
  final Value<String> enderecoBairro;
  final Value<String> enderecoCidade;
  final Value<String> enderecoEstado;
  final Value<String> enderecoCep;
  final Value<String> telefone;
  final Value<String> email;
  const ClienteCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.cpf = const Value.absent(),
    this.cnh = const Value.absent(),
    this.enderecoRua = const Value.absent(),
    this.enderecoNumero = const Value.absent(),
    this.enderecoBairro = const Value.absent(),
    this.enderecoCidade = const Value.absent(),
    this.enderecoEstado = const Value.absent(),
    this.enderecoCep = const Value.absent(),
    this.telefone = const Value.absent(),
    this.email = const Value.absent(),
  });
  ClienteCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String cpf,
    required String cnh,
    required String enderecoRua,
    required String enderecoNumero,
    required String enderecoBairro,
    required String enderecoCidade,
    required String enderecoEstado,
    required String enderecoCep,
    required String telefone,
    required String email,
  })  : nome = Value(nome),
        cpf = Value(cpf),
        cnh = Value(cnh),
        enderecoRua = Value(enderecoRua),
        enderecoNumero = Value(enderecoNumero),
        enderecoBairro = Value(enderecoBairro),
        enderecoCidade = Value(enderecoCidade),
        enderecoEstado = Value(enderecoEstado),
        enderecoCep = Value(enderecoCep),
        telefone = Value(telefone),
        email = Value(email);
  static Insertable<ClienteData> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? cpf,
    Expression<String>? cnh,
    Expression<String>? enderecoRua,
    Expression<String>? enderecoNumero,
    Expression<String>? enderecoBairro,
    Expression<String>? enderecoCidade,
    Expression<String>? enderecoEstado,
    Expression<String>? enderecoCep,
    Expression<String>? telefone,
    Expression<String>? email,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (cpf != null) 'cpf': cpf,
      if (cnh != null) 'cnh': cnh,
      if (enderecoRua != null) 'endereco_rua': enderecoRua,
      if (enderecoNumero != null) 'endereco_numero': enderecoNumero,
      if (enderecoBairro != null) 'endereco_bairro': enderecoBairro,
      if (enderecoCidade != null) 'endereco_cidade': enderecoCidade,
      if (enderecoEstado != null) 'endereco_estado': enderecoEstado,
      if (enderecoCep != null) 'endereco_cep': enderecoCep,
      if (telefone != null) 'telefone': telefone,
      if (email != null) 'email': email,
    });
  }

  ClienteCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<String>? cpf,
      Value<String>? cnh,
      Value<String>? enderecoRua,
      Value<String>? enderecoNumero,
      Value<String>? enderecoBairro,
      Value<String>? enderecoCidade,
      Value<String>? enderecoEstado,
      Value<String>? enderecoCep,
      Value<String>? telefone,
      Value<String>? email}) {
    return ClienteCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      cnh: cnh ?? this.cnh,
      enderecoRua: enderecoRua ?? this.enderecoRua,
      enderecoNumero: enderecoNumero ?? this.enderecoNumero,
      enderecoBairro: enderecoBairro ?? this.enderecoBairro,
      enderecoCidade: enderecoCidade ?? this.enderecoCidade,
      enderecoEstado: enderecoEstado ?? this.enderecoEstado,
      enderecoCep: enderecoCep ?? this.enderecoCep,
      telefone: telefone ?? this.telefone,
      email: email ?? this.email,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (cpf.present) {
      map['cpf'] = Variable<String>(cpf.value);
    }
    if (cnh.present) {
      map['cnh'] = Variable<String>(cnh.value);
    }
    if (enderecoRua.present) {
      map['endereco_rua'] = Variable<String>(enderecoRua.value);
    }
    if (enderecoNumero.present) {
      map['endereco_numero'] = Variable<String>(enderecoNumero.value);
    }
    if (enderecoBairro.present) {
      map['endereco_bairro'] = Variable<String>(enderecoBairro.value);
    }
    if (enderecoCidade.present) {
      map['endereco_cidade'] = Variable<String>(enderecoCidade.value);
    }
    if (enderecoEstado.present) {
      map['endereco_estado'] = Variable<String>(enderecoEstado.value);
    }
    if (enderecoCep.present) {
      map['endereco_cep'] = Variable<String>(enderecoCep.value);
    }
    if (telefone.present) {
      map['telefone'] = Variable<String>(telefone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClienteCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cpf: $cpf, ')
          ..write('cnh: $cnh, ')
          ..write('enderecoRua: $enderecoRua, ')
          ..write('enderecoNumero: $enderecoNumero, ')
          ..write('enderecoBairro: $enderecoBairro, ')
          ..write('enderecoCidade: $enderecoCidade, ')
          ..write('enderecoEstado: $enderecoEstado, ')
          ..write('enderecoCep: $enderecoCep, ')
          ..write('telefone: $telefone, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $CarsTable cars = $CarsTable(this);
  late final $ClienteTable cliente = $ClienteTable(this);
  late final CarDao carDao = CarDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cars, cliente];
}

typedef $$CarsTableCreateCompanionBuilder = CarsCompanion Function({
  Value<int> id,
  required int renavam,
  required String plate,
  required String brand,
  required String model,
  required int year,
  required double priceByDay,
  required String photo,
  Value<String> description,
  required String category,
  Value<String> status,
  required DateTime createdAt,
});
typedef $$CarsTableUpdateCompanionBuilder = CarsCompanion Function({
  Value<int> id,
  Value<int> renavam,
  Value<String> plate,
  Value<String> brand,
  Value<String> model,
  Value<int> year,
  Value<double> priceByDay,
  Value<String> photo,
  Value<String> description,
  Value<String> category,
  Value<String> status,
  Value<DateTime> createdAt,
});

class $$CarsTableFilterComposer extends Composer<_$Database, $CarsTable> {
  $$CarsTableFilterComposer({
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

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$CarsTableOrderingComposer extends Composer<_$Database, $CarsTable> {
  $$CarsTableOrderingComposer({
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

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$CarsTableAnnotationComposer extends Composer<_$Database, $CarsTable> {
  $$CarsTableAnnotationComposer({
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

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$CarsTableTableManager extends RootTableManager<
    _$Database,
    $CarsTable,
    Car,
    $$CarsTableFilterComposer,
    $$CarsTableOrderingComposer,
    $$CarsTableAnnotationComposer,
    $$CarsTableCreateCompanionBuilder,
    $$CarsTableUpdateCompanionBuilder,
    (Car, BaseReferences<_$Database, $CarsTable, Car>),
    Car,
    PrefetchHooks Function()> {
  $$CarsTableTableManager(_$Database db, $CarsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CarsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CarsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CarsTableAnnotationComposer($db: db, $table: table),
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
            Value<String> category = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              CarsCompanion(
            id: id,
            renavam: renavam,
            plate: plate,
            brand: brand,
            model: model,
            year: year,
            priceByDay: priceByDay,
            photo: photo,
            description: description,
            category: category,
            status: status,
            createdAt: createdAt,
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
            required String category,
            Value<String> status = const Value.absent(),
            required DateTime createdAt,
          }) =>
              CarsCompanion.insert(
            id: id,
            renavam: renavam,
            plate: plate,
            brand: brand,
            model: model,
            year: year,
            priceByDay: priceByDay,
            photo: photo,
            description: description,
            category: category,
            status: status,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CarsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $CarsTable,
    Car,
    $$CarsTableFilterComposer,
    $$CarsTableOrderingComposer,
    $$CarsTableAnnotationComposer,
    $$CarsTableCreateCompanionBuilder,
    $$CarsTableUpdateCompanionBuilder,
    (Car, BaseReferences<_$Database, $CarsTable, Car>),
    Car,
    PrefetchHooks Function()>;
typedef $$ClienteTableCreateCompanionBuilder = ClienteCompanion Function({
  Value<int> id,
  required String nome,
  required String cpf,
  required String cnh,
  required String enderecoRua,
  required String enderecoNumero,
  required String enderecoBairro,
  required String enderecoCidade,
  required String enderecoEstado,
  required String enderecoCep,
  required String telefone,
  required String email,
});
typedef $$ClienteTableUpdateCompanionBuilder = ClienteCompanion Function({
  Value<int> id,
  Value<String> nome,
  Value<String> cpf,
  Value<String> cnh,
  Value<String> enderecoRua,
  Value<String> enderecoNumero,
  Value<String> enderecoBairro,
  Value<String> enderecoCidade,
  Value<String> enderecoEstado,
  Value<String> enderecoCep,
  Value<String> telefone,
  Value<String> email,
});

class $$ClienteTableFilterComposer extends Composer<_$Database, $ClienteTable> {
  $$ClienteTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cnh => $composableBuilder(
      column: $table.cnh, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enderecoRua => $composableBuilder(
      column: $table.enderecoRua, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enderecoNumero => $composableBuilder(
      column: $table.enderecoNumero,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enderecoBairro => $composableBuilder(
      column: $table.enderecoBairro,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enderecoCidade => $composableBuilder(
      column: $table.enderecoCidade,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enderecoEstado => $composableBuilder(
      column: $table.enderecoEstado,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enderecoCep => $composableBuilder(
      column: $table.enderecoCep, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get telefone => $composableBuilder(
      column: $table.telefone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));
}

class $$ClienteTableOrderingComposer
    extends Composer<_$Database, $ClienteTable> {
  $$ClienteTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cnh => $composableBuilder(
      column: $table.cnh, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enderecoRua => $composableBuilder(
      column: $table.enderecoRua, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enderecoNumero => $composableBuilder(
      column: $table.enderecoNumero,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enderecoBairro => $composableBuilder(
      column: $table.enderecoBairro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enderecoCidade => $composableBuilder(
      column: $table.enderecoCidade,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enderecoEstado => $composableBuilder(
      column: $table.enderecoEstado,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enderecoCep => $composableBuilder(
      column: $table.enderecoCep, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get telefone => $composableBuilder(
      column: $table.telefone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));
}

class $$ClienteTableAnnotationComposer
    extends Composer<_$Database, $ClienteTable> {
  $$ClienteTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get cpf =>
      $composableBuilder(column: $table.cpf, builder: (column) => column);

  GeneratedColumn<String> get cnh =>
      $composableBuilder(column: $table.cnh, builder: (column) => column);

  GeneratedColumn<String> get enderecoRua => $composableBuilder(
      column: $table.enderecoRua, builder: (column) => column);

  GeneratedColumn<String> get enderecoNumero => $composableBuilder(
      column: $table.enderecoNumero, builder: (column) => column);

  GeneratedColumn<String> get enderecoBairro => $composableBuilder(
      column: $table.enderecoBairro, builder: (column) => column);

  GeneratedColumn<String> get enderecoCidade => $composableBuilder(
      column: $table.enderecoCidade, builder: (column) => column);

  GeneratedColumn<String> get enderecoEstado => $composableBuilder(
      column: $table.enderecoEstado, builder: (column) => column);

  GeneratedColumn<String> get enderecoCep => $composableBuilder(
      column: $table.enderecoCep, builder: (column) => column);

  GeneratedColumn<String> get telefone =>
      $composableBuilder(column: $table.telefone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);
}

class $$ClienteTableTableManager extends RootTableManager<
    _$Database,
    $ClienteTable,
    ClienteData,
    $$ClienteTableFilterComposer,
    $$ClienteTableOrderingComposer,
    $$ClienteTableAnnotationComposer,
    $$ClienteTableCreateCompanionBuilder,
    $$ClienteTableUpdateCompanionBuilder,
    (ClienteData, BaseReferences<_$Database, $ClienteTable, ClienteData>),
    ClienteData,
    PrefetchHooks Function()> {
  $$ClienteTableTableManager(_$Database db, $ClienteTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClienteTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClienteTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClienteTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String> cpf = const Value.absent(),
            Value<String> cnh = const Value.absent(),
            Value<String> enderecoRua = const Value.absent(),
            Value<String> enderecoNumero = const Value.absent(),
            Value<String> enderecoBairro = const Value.absent(),
            Value<String> enderecoCidade = const Value.absent(),
            Value<String> enderecoEstado = const Value.absent(),
            Value<String> enderecoCep = const Value.absent(),
            Value<String> telefone = const Value.absent(),
            Value<String> email = const Value.absent(),
          }) =>
              ClienteCompanion(
            id: id,
            nome: nome,
            cpf: cpf,
            cnh: cnh,
            enderecoRua: enderecoRua,
            enderecoNumero: enderecoNumero,
            enderecoBairro: enderecoBairro,
            enderecoCidade: enderecoCidade,
            enderecoEstado: enderecoEstado,
            enderecoCep: enderecoCep,
            telefone: telefone,
            email: email,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nome,
            required String cpf,
            required String cnh,
            required String enderecoRua,
            required String enderecoNumero,
            required String enderecoBairro,
            required String enderecoCidade,
            required String enderecoEstado,
            required String enderecoCep,
            required String telefone,
            required String email,
          }) =>
              ClienteCompanion.insert(
            id: id,
            nome: nome,
            cpf: cpf,
            cnh: cnh,
            enderecoRua: enderecoRua,
            enderecoNumero: enderecoNumero,
            enderecoBairro: enderecoBairro,
            enderecoCidade: enderecoCidade,
            enderecoEstado: enderecoEstado,
            enderecoCep: enderecoCep,
            telefone: telefone,
            email: email,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ClienteTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $ClienteTable,
    ClienteData,
    $$ClienteTableFilterComposer,
    $$ClienteTableOrderingComposer,
    $$ClienteTableAnnotationComposer,
    $$ClienteTableCreateCompanionBuilder,
    $$ClienteTableUpdateCompanionBuilder,
    (ClienteData, BaseReferences<_$Database, $ClienteTable, ClienteData>),
    ClienteData,
    PrefetchHooks Function()>;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$CarsTableTableManager get cars => $$CarsTableTableManager(_db, _db.cars);
  $$ClienteTableTableManager get cliente =>
      $$ClienteTableTableManager(_db, _db.cliente);
}
