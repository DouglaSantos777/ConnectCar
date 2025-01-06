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

class $RentsTable extends Rents with TableInfo<$RentsTable, Rent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _clienteIdMeta =
      const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<int> clienteId = GeneratedColumn<int>(
      'cliente_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES cliente (id)'));
  static const VerificationMeta _carIdMeta = const VerificationMeta('carId');
  @override
  late final GeneratedColumn<int> carId = GeneratedColumn<int>(
      'car_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES cars (id)'));
  static const VerificationMeta _rentDateMeta =
      const VerificationMeta('rentDate');
  @override
  late final GeneratedColumn<DateTime> rentDate = GeneratedColumn<DateTime>(
      'rent_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _returnDateMeta =
      const VerificationMeta('returnDate');
  @override
  late final GeneratedColumn<DateTime> returnDate = GeneratedColumn<DateTime>(
      'return_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _totalValueMeta =
      const VerificationMeta('totalValue');
  @override
  late final GeneratedColumn<double> totalValue = GeneratedColumn<double>(
      'total_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, clienteId, carId, rentDate, returnDate, totalValue];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'rents';
  @override
  VerificationContext validateIntegrity(Insertable<Rent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cliente_id')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['cliente_id']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('car_id')) {
      context.handle(
          _carIdMeta, carId.isAcceptableOrUnknown(data['car_id']!, _carIdMeta));
    } else if (isInserting) {
      context.missing(_carIdMeta);
    }
    if (data.containsKey('rent_date')) {
      context.handle(_rentDateMeta,
          rentDate.isAcceptableOrUnknown(data['rent_date']!, _rentDateMeta));
    } else if (isInserting) {
      context.missing(_rentDateMeta);
    }
    if (data.containsKey('return_date')) {
      context.handle(
          _returnDateMeta,
          returnDate.isAcceptableOrUnknown(
              data['return_date']!, _returnDateMeta));
    } else if (isInserting) {
      context.missing(_returnDateMeta);
    }
    if (data.containsKey('total_value')) {
      context.handle(
          _totalValueMeta,
          totalValue.isAcceptableOrUnknown(
              data['total_value']!, _totalValueMeta));
    } else if (isInserting) {
      context.missing(_totalValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Rent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Rent(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      clienteId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cliente_id'])!,
      carId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}car_id'])!,
      rentDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}rent_date'])!,
      returnDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}return_date'])!,
      totalValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_value'])!,
    );
  }

  @override
  $RentsTable createAlias(String alias) {
    return $RentsTable(attachedDatabase, alias);
  }
}

class Rent extends DataClass implements Insertable<Rent> {
  final int id;
  final int clienteId;
  final int carId;
  final DateTime rentDate;
  final DateTime returnDate;
  final double totalValue;
  const Rent(
      {required this.id,
      required this.clienteId,
      required this.carId,
      required this.rentDate,
      required this.returnDate,
      required this.totalValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cliente_id'] = Variable<int>(clienteId);
    map['car_id'] = Variable<int>(carId);
    map['rent_date'] = Variable<DateTime>(rentDate);
    map['return_date'] = Variable<DateTime>(returnDate);
    map['total_value'] = Variable<double>(totalValue);
    return map;
  }

  RentsCompanion toCompanion(bool nullToAbsent) {
    return RentsCompanion(
      id: Value(id),
      clienteId: Value(clienteId),
      carId: Value(carId),
      rentDate: Value(rentDate),
      returnDate: Value(returnDate),
      totalValue: Value(totalValue),
    );
  }

  factory Rent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Rent(
      id: serializer.fromJson<int>(json['id']),
      clienteId: serializer.fromJson<int>(json['clienteId']),
      carId: serializer.fromJson<int>(json['carId']),
      rentDate: serializer.fromJson<DateTime>(json['rentDate']),
      returnDate: serializer.fromJson<DateTime>(json['returnDate']),
      totalValue: serializer.fromJson<double>(json['totalValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'clienteId': serializer.toJson<int>(clienteId),
      'carId': serializer.toJson<int>(carId),
      'rentDate': serializer.toJson<DateTime>(rentDate),
      'returnDate': serializer.toJson<DateTime>(returnDate),
      'totalValue': serializer.toJson<double>(totalValue),
    };
  }

  Rent copyWith(
          {int? id,
          int? clienteId,
          int? carId,
          DateTime? rentDate,
          DateTime? returnDate,
          double? totalValue}) =>
      Rent(
        id: id ?? this.id,
        clienteId: clienteId ?? this.clienteId,
        carId: carId ?? this.carId,
        rentDate: rentDate ?? this.rentDate,
        returnDate: returnDate ?? this.returnDate,
        totalValue: totalValue ?? this.totalValue,
      );
  Rent copyWithCompanion(RentsCompanion data) {
    return Rent(
      id: data.id.present ? data.id.value : this.id,
      clienteId: data.clienteId.present ? data.clienteId.value : this.clienteId,
      carId: data.carId.present ? data.carId.value : this.carId,
      rentDate: data.rentDate.present ? data.rentDate.value : this.rentDate,
      returnDate:
          data.returnDate.present ? data.returnDate.value : this.returnDate,
      totalValue:
          data.totalValue.present ? data.totalValue.value : this.totalValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Rent(')
          ..write('id: $id, ')
          ..write('clienteId: $clienteId, ')
          ..write('carId: $carId, ')
          ..write('rentDate: $rentDate, ')
          ..write('returnDate: $returnDate, ')
          ..write('totalValue: $totalValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, clienteId, carId, rentDate, returnDate, totalValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Rent &&
          other.id == this.id &&
          other.clienteId == this.clienteId &&
          other.carId == this.carId &&
          other.rentDate == this.rentDate &&
          other.returnDate == this.returnDate &&
          other.totalValue == this.totalValue);
}

class RentsCompanion extends UpdateCompanion<Rent> {
  final Value<int> id;
  final Value<int> clienteId;
  final Value<int> carId;
  final Value<DateTime> rentDate;
  final Value<DateTime> returnDate;
  final Value<double> totalValue;
  const RentsCompanion({
    this.id = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.carId = const Value.absent(),
    this.rentDate = const Value.absent(),
    this.returnDate = const Value.absent(),
    this.totalValue = const Value.absent(),
  });
  RentsCompanion.insert({
    this.id = const Value.absent(),
    required int clienteId,
    required int carId,
    required DateTime rentDate,
    required DateTime returnDate,
    required double totalValue,
  })  : clienteId = Value(clienteId),
        carId = Value(carId),
        rentDate = Value(rentDate),
        returnDate = Value(returnDate),
        totalValue = Value(totalValue);
  static Insertable<Rent> custom({
    Expression<int>? id,
    Expression<int>? clienteId,
    Expression<int>? carId,
    Expression<DateTime>? rentDate,
    Expression<DateTime>? returnDate,
    Expression<double>? totalValue,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clienteId != null) 'cliente_id': clienteId,
      if (carId != null) 'car_id': carId,
      if (rentDate != null) 'rent_date': rentDate,
      if (returnDate != null) 'return_date': returnDate,
      if (totalValue != null) 'total_value': totalValue,
    });
  }

  RentsCompanion copyWith(
      {Value<int>? id,
      Value<int>? clienteId,
      Value<int>? carId,
      Value<DateTime>? rentDate,
      Value<DateTime>? returnDate,
      Value<double>? totalValue}) {
    return RentsCompanion(
      id: id ?? this.id,
      clienteId: clienteId ?? this.clienteId,
      carId: carId ?? this.carId,
      rentDate: rentDate ?? this.rentDate,
      returnDate: returnDate ?? this.returnDate,
      totalValue: totalValue ?? this.totalValue,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (clienteId.present) {
      map['cliente_id'] = Variable<int>(clienteId.value);
    }
    if (carId.present) {
      map['car_id'] = Variable<int>(carId.value);
    }
    if (rentDate.present) {
      map['rent_date'] = Variable<DateTime>(rentDate.value);
    }
    if (returnDate.present) {
      map['return_date'] = Variable<DateTime>(returnDate.value);
    }
    if (totalValue.present) {
      map['total_value'] = Variable<double>(totalValue.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RentsCompanion(')
          ..write('id: $id, ')
          ..write('clienteId: $clienteId, ')
          ..write('carId: $carId, ')
          ..write('rentDate: $rentDate, ')
          ..write('returnDate: $returnDate, ')
          ..write('totalValue: $totalValue')
          ..write(')'))
        .toString();
  }
}

class $PaymentsTable extends Payments with TableInfo<$PaymentsTable, Payment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _rentIdMeta = const VerificationMeta('rentId');
  @override
  late final GeneratedColumn<int> rentId = GeneratedColumn<int>(
      'rent_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES rents (id)'));
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _paymentDateMeta =
      const VerificationMeta('paymentDate');
  @override
  late final GeneratedColumn<DateTime> paymentDate = GeneratedColumn<DateTime>(
      'payment_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, rentId, value, paymentDate, status];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payments';
  @override
  VerificationContext validateIntegrity(Insertable<Payment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('rent_id')) {
      context.handle(_rentIdMeta,
          rentId.isAcceptableOrUnknown(data['rent_id']!, _rentIdMeta));
    } else if (isInserting) {
      context.missing(_rentIdMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('payment_date')) {
      context.handle(
          _paymentDateMeta,
          paymentDate.isAcceptableOrUnknown(
              data['payment_date']!, _paymentDateMeta));
    } else if (isInserting) {
      context.missing(_paymentDateMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Payment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Payment(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      rentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rent_id'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value'])!,
      paymentDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}payment_date'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
    );
  }

  @override
  $PaymentsTable createAlias(String alias) {
    return $PaymentsTable(attachedDatabase, alias);
  }
}

class Payment extends DataClass implements Insertable<Payment> {
  final int id;
  final int rentId;
  final double value;
  final DateTime paymentDate;
  final String? status;
  const Payment(
      {required this.id,
      required this.rentId,
      required this.value,
      required this.paymentDate,
      this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['rent_id'] = Variable<int>(rentId);
    map['value'] = Variable<double>(value);
    map['payment_date'] = Variable<DateTime>(paymentDate);
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    return map;
  }

  PaymentsCompanion toCompanion(bool nullToAbsent) {
    return PaymentsCompanion(
      id: Value(id),
      rentId: Value(rentId),
      value: Value(value),
      paymentDate: Value(paymentDate),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
    );
  }

  factory Payment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Payment(
      id: serializer.fromJson<int>(json['id']),
      rentId: serializer.fromJson<int>(json['rentId']),
      value: serializer.fromJson<double>(json['value']),
      paymentDate: serializer.fromJson<DateTime>(json['paymentDate']),
      status: serializer.fromJson<String?>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'rentId': serializer.toJson<int>(rentId),
      'value': serializer.toJson<double>(value),
      'paymentDate': serializer.toJson<DateTime>(paymentDate),
      'status': serializer.toJson<String?>(status),
    };
  }

  Payment copyWith(
          {int? id,
          int? rentId,
          double? value,
          DateTime? paymentDate,
          Value<String?> status = const Value.absent()}) =>
      Payment(
        id: id ?? this.id,
        rentId: rentId ?? this.rentId,
        value: value ?? this.value,
        paymentDate: paymentDate ?? this.paymentDate,
        status: status.present ? status.value : this.status,
      );
  Payment copyWithCompanion(PaymentsCompanion data) {
    return Payment(
      id: data.id.present ? data.id.value : this.id,
      rentId: data.rentId.present ? data.rentId.value : this.rentId,
      value: data.value.present ? data.value.value : this.value,
      paymentDate:
          data.paymentDate.present ? data.paymentDate.value : this.paymentDate,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Payment(')
          ..write('id: $id, ')
          ..write('rentId: $rentId, ')
          ..write('value: $value, ')
          ..write('paymentDate: $paymentDate, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, rentId, value, paymentDate, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Payment &&
          other.id == this.id &&
          other.rentId == this.rentId &&
          other.value == this.value &&
          other.paymentDate == this.paymentDate &&
          other.status == this.status);
}

class PaymentsCompanion extends UpdateCompanion<Payment> {
  final Value<int> id;
  final Value<int> rentId;
  final Value<double> value;
  final Value<DateTime> paymentDate;
  final Value<String?> status;
  const PaymentsCompanion({
    this.id = const Value.absent(),
    this.rentId = const Value.absent(),
    this.value = const Value.absent(),
    this.paymentDate = const Value.absent(),
    this.status = const Value.absent(),
  });
  PaymentsCompanion.insert({
    this.id = const Value.absent(),
    required int rentId,
    required double value,
    required DateTime paymentDate,
    this.status = const Value.absent(),
  })  : rentId = Value(rentId),
        value = Value(value),
        paymentDate = Value(paymentDate);
  static Insertable<Payment> custom({
    Expression<int>? id,
    Expression<int>? rentId,
    Expression<double>? value,
    Expression<DateTime>? paymentDate,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (rentId != null) 'rent_id': rentId,
      if (value != null) 'value': value,
      if (paymentDate != null) 'payment_date': paymentDate,
      if (status != null) 'status': status,
    });
  }

  PaymentsCompanion copyWith(
      {Value<int>? id,
      Value<int>? rentId,
      Value<double>? value,
      Value<DateTime>? paymentDate,
      Value<String?>? status}) {
    return PaymentsCompanion(
      id: id ?? this.id,
      rentId: rentId ?? this.rentId,
      value: value ?? this.value,
      paymentDate: paymentDate ?? this.paymentDate,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (rentId.present) {
      map['rent_id'] = Variable<int>(rentId.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (paymentDate.present) {
      map['payment_date'] = Variable<DateTime>(paymentDate.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentsCompanion(')
          ..write('id: $id, ')
          ..write('rentId: $rentId, ')
          ..write('value: $value, ')
          ..write('paymentDate: $paymentDate, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $CarsTable cars = $CarsTable(this);
  late final $ClienteTable cliente = $ClienteTable(this);
  late final $RentsTable rents = $RentsTable(this);
  late final $PaymentsTable payments = $PaymentsTable(this);
  late final CarDao carDao = CarDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [cars, cliente, rents, payments];
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

final class $$CarsTableReferences
    extends BaseReferences<_$Database, $CarsTable, Car> {
  $$CarsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RentsTable, List<Rent>> _rentsRefsTable(
          _$Database db) =>
      MultiTypedResultKey.fromTable(db.rents,
          aliasName: $_aliasNameGenerator(db.cars.id, db.rents.carId));

  $$RentsTableProcessedTableManager get rentsRefs {
    final manager = $$RentsTableTableManager($_db, $_db.rents)
        .filter((f) => f.carId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_rentsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

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

  Expression<bool> rentsRefs(
      Expression<bool> Function($$RentsTableFilterComposer f) f) {
    final $$RentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rents,
        getReferencedColumn: (t) => t.carId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentsTableFilterComposer(
              $db: $db,
              $table: $db.rents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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

  Expression<T> rentsRefs<T extends Object>(
      Expression<T> Function($$RentsTableAnnotationComposer a) f) {
    final $$RentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rents,
        getReferencedColumn: (t) => t.carId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentsTableAnnotationComposer(
              $db: $db,
              $table: $db.rents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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
    (Car, $$CarsTableReferences),
    Car,
    PrefetchHooks Function({bool rentsRefs})> {
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
              .map((e) =>
                  (e.readTable(table), $$CarsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({rentsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (rentsRefs) db.rents],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (rentsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$CarsTableReferences._rentsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CarsTableReferences(db, table, p0).rentsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.carId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
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
    (Car, $$CarsTableReferences),
    Car,
    PrefetchHooks Function({bool rentsRefs})>;
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

final class $$ClienteTableReferences
    extends BaseReferences<_$Database, $ClienteTable, ClienteData> {
  $$ClienteTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RentsTable, List<Rent>> _rentsRefsTable(
          _$Database db) =>
      MultiTypedResultKey.fromTable(db.rents,
          aliasName: $_aliasNameGenerator(db.cliente.id, db.rents.clienteId));

  $$RentsTableProcessedTableManager get rentsRefs {
    final manager = $$RentsTableTableManager($_db, $_db.rents)
        .filter((f) => f.clienteId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_rentsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

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

  Expression<bool> rentsRefs(
      Expression<bool> Function($$RentsTableFilterComposer f) f) {
    final $$RentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rents,
        getReferencedColumn: (t) => t.clienteId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentsTableFilterComposer(
              $db: $db,
              $table: $db.rents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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

  Expression<T> rentsRefs<T extends Object>(
      Expression<T> Function($$RentsTableAnnotationComposer a) f) {
    final $$RentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rents,
        getReferencedColumn: (t) => t.clienteId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentsTableAnnotationComposer(
              $db: $db,
              $table: $db.rents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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
    (ClienteData, $$ClienteTableReferences),
    ClienteData,
    PrefetchHooks Function({bool rentsRefs})> {
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
              .map((e) =>
                  (e.readTable(table), $$ClienteTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({rentsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (rentsRefs) db.rents],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (rentsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$ClienteTableReferences._rentsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ClienteTableReferences(db, table, p0).rentsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.clienteId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
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
    (ClienteData, $$ClienteTableReferences),
    ClienteData,
    PrefetchHooks Function({bool rentsRefs})>;
typedef $$RentsTableCreateCompanionBuilder = RentsCompanion Function({
  Value<int> id,
  required int clienteId,
  required int carId,
  required DateTime rentDate,
  required DateTime returnDate,
  required double totalValue,
});
typedef $$RentsTableUpdateCompanionBuilder = RentsCompanion Function({
  Value<int> id,
  Value<int> clienteId,
  Value<int> carId,
  Value<DateTime> rentDate,
  Value<DateTime> returnDate,
  Value<double> totalValue,
});

final class $$RentsTableReferences
    extends BaseReferences<_$Database, $RentsTable, Rent> {
  $$RentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClienteTable _clienteIdTable(_$Database db) => db.cliente
      .createAlias($_aliasNameGenerator(db.rents.clienteId, db.cliente.id));

  $$ClienteTableProcessedTableManager get clienteId {
    final manager = $$ClienteTableTableManager($_db, $_db.cliente)
        .filter((f) => f.id($_item.clienteId!));
    final item = $_typedResult.readTableOrNull(_clienteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $CarsTable _carIdTable(_$Database db) =>
      db.cars.createAlias($_aliasNameGenerator(db.rents.carId, db.cars.id));

  $$CarsTableProcessedTableManager get carId {
    final manager = $$CarsTableTableManager($_db, $_db.cars)
        .filter((f) => f.id($_item.carId!));
    final item = $_typedResult.readTableOrNull(_carIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$PaymentsTable, List<Payment>> _paymentsRefsTable(
          _$Database db) =>
      MultiTypedResultKey.fromTable(db.payments,
          aliasName: $_aliasNameGenerator(db.rents.id, db.payments.rentId));

  $$PaymentsTableProcessedTableManager get paymentsRefs {
    final manager = $$PaymentsTableTableManager($_db, $_db.payments)
        .filter((f) => f.rentId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_paymentsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$RentsTableFilterComposer extends Composer<_$Database, $RentsTable> {
  $$RentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get rentDate => $composableBuilder(
      column: $table.rentDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get returnDate => $composableBuilder(
      column: $table.returnDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalValue => $composableBuilder(
      column: $table.totalValue, builder: (column) => ColumnFilters(column));

  $$ClienteTableFilterComposer get clienteId {
    final $$ClienteTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clienteId,
        referencedTable: $db.cliente,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClienteTableFilterComposer(
              $db: $db,
              $table: $db.cliente,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CarsTableFilterComposer get carId {
    final $$CarsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.carId,
        referencedTable: $db.cars,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarsTableFilterComposer(
              $db: $db,
              $table: $db.cars,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> paymentsRefs(
      Expression<bool> Function($$PaymentsTableFilterComposer f) f) {
    final $$PaymentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.payments,
        getReferencedColumn: (t) => t.rentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PaymentsTableFilterComposer(
              $db: $db,
              $table: $db.payments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RentsTableOrderingComposer extends Composer<_$Database, $RentsTable> {
  $$RentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get rentDate => $composableBuilder(
      column: $table.rentDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get returnDate => $composableBuilder(
      column: $table.returnDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalValue => $composableBuilder(
      column: $table.totalValue, builder: (column) => ColumnOrderings(column));

  $$ClienteTableOrderingComposer get clienteId {
    final $$ClienteTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clienteId,
        referencedTable: $db.cliente,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClienteTableOrderingComposer(
              $db: $db,
              $table: $db.cliente,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CarsTableOrderingComposer get carId {
    final $$CarsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.carId,
        referencedTable: $db.cars,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarsTableOrderingComposer(
              $db: $db,
              $table: $db.cars,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RentsTableAnnotationComposer extends Composer<_$Database, $RentsTable> {
  $$RentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get rentDate =>
      $composableBuilder(column: $table.rentDate, builder: (column) => column);

  GeneratedColumn<DateTime> get returnDate => $composableBuilder(
      column: $table.returnDate, builder: (column) => column);

  GeneratedColumn<double> get totalValue => $composableBuilder(
      column: $table.totalValue, builder: (column) => column);

  $$ClienteTableAnnotationComposer get clienteId {
    final $$ClienteTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clienteId,
        referencedTable: $db.cliente,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClienteTableAnnotationComposer(
              $db: $db,
              $table: $db.cliente,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CarsTableAnnotationComposer get carId {
    final $$CarsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.carId,
        referencedTable: $db.cars,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CarsTableAnnotationComposer(
              $db: $db,
              $table: $db.cars,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> paymentsRefs<T extends Object>(
      Expression<T> Function($$PaymentsTableAnnotationComposer a) f) {
    final $$PaymentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.payments,
        getReferencedColumn: (t) => t.rentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PaymentsTableAnnotationComposer(
              $db: $db,
              $table: $db.payments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RentsTableTableManager extends RootTableManager<
    _$Database,
    $RentsTable,
    Rent,
    $$RentsTableFilterComposer,
    $$RentsTableOrderingComposer,
    $$RentsTableAnnotationComposer,
    $$RentsTableCreateCompanionBuilder,
    $$RentsTableUpdateCompanionBuilder,
    (Rent, $$RentsTableReferences),
    Rent,
    PrefetchHooks Function({bool clienteId, bool carId, bool paymentsRefs})> {
  $$RentsTableTableManager(_$Database db, $RentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> clienteId = const Value.absent(),
            Value<int> carId = const Value.absent(),
            Value<DateTime> rentDate = const Value.absent(),
            Value<DateTime> returnDate = const Value.absent(),
            Value<double> totalValue = const Value.absent(),
          }) =>
              RentsCompanion(
            id: id,
            clienteId: clienteId,
            carId: carId,
            rentDate: rentDate,
            returnDate: returnDate,
            totalValue: totalValue,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int clienteId,
            required int carId,
            required DateTime rentDate,
            required DateTime returnDate,
            required double totalValue,
          }) =>
              RentsCompanion.insert(
            id: id,
            clienteId: clienteId,
            carId: carId,
            rentDate: rentDate,
            returnDate: returnDate,
            totalValue: totalValue,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$RentsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {clienteId = false, carId = false, paymentsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (paymentsRefs) db.payments],
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
                if (clienteId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.clienteId,
                    referencedTable: $$RentsTableReferences._clienteIdTable(db),
                    referencedColumn:
                        $$RentsTableReferences._clienteIdTable(db).id,
                  ) as T;
                }
                if (carId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.carId,
                    referencedTable: $$RentsTableReferences._carIdTable(db),
                    referencedColumn: $$RentsTableReferences._carIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (paymentsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$RentsTableReferences._paymentsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RentsTableReferences(db, table, p0).paymentsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.rentId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$RentsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $RentsTable,
    Rent,
    $$RentsTableFilterComposer,
    $$RentsTableOrderingComposer,
    $$RentsTableAnnotationComposer,
    $$RentsTableCreateCompanionBuilder,
    $$RentsTableUpdateCompanionBuilder,
    (Rent, $$RentsTableReferences),
    Rent,
    PrefetchHooks Function({bool clienteId, bool carId, bool paymentsRefs})>;
typedef $$PaymentsTableCreateCompanionBuilder = PaymentsCompanion Function({
  Value<int> id,
  required int rentId,
  required double value,
  required DateTime paymentDate,
  Value<String?> status,
});
typedef $$PaymentsTableUpdateCompanionBuilder = PaymentsCompanion Function({
  Value<int> id,
  Value<int> rentId,
  Value<double> value,
  Value<DateTime> paymentDate,
  Value<String?> status,
});

final class $$PaymentsTableReferences
    extends BaseReferences<_$Database, $PaymentsTable, Payment> {
  $$PaymentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RentsTable _rentIdTable(_$Database db) => db.rents
      .createAlias($_aliasNameGenerator(db.payments.rentId, db.rents.id));

  $$RentsTableProcessedTableManager get rentId {
    final manager = $$RentsTableTableManager($_db, $_db.rents)
        .filter((f) => f.id($_item.rentId!));
    final item = $_typedResult.readTableOrNull(_rentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PaymentsTableFilterComposer
    extends Composer<_$Database, $PaymentsTable> {
  $$PaymentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get paymentDate => $composableBuilder(
      column: $table.paymentDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  $$RentsTableFilterComposer get rentId {
    final $$RentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.rentId,
        referencedTable: $db.rents,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentsTableFilterComposer(
              $db: $db,
              $table: $db.rents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PaymentsTableOrderingComposer
    extends Composer<_$Database, $PaymentsTable> {
  $$PaymentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get paymentDate => $composableBuilder(
      column: $table.paymentDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  $$RentsTableOrderingComposer get rentId {
    final $$RentsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.rentId,
        referencedTable: $db.rents,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentsTableOrderingComposer(
              $db: $db,
              $table: $db.rents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PaymentsTableAnnotationComposer
    extends Composer<_$Database, $PaymentsTable> {
  $$PaymentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<DateTime> get paymentDate => $composableBuilder(
      column: $table.paymentDate, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$RentsTableAnnotationComposer get rentId {
    final $$RentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.rentId,
        referencedTable: $db.rents,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentsTableAnnotationComposer(
              $db: $db,
              $table: $db.rents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PaymentsTableTableManager extends RootTableManager<
    _$Database,
    $PaymentsTable,
    Payment,
    $$PaymentsTableFilterComposer,
    $$PaymentsTableOrderingComposer,
    $$PaymentsTableAnnotationComposer,
    $$PaymentsTableCreateCompanionBuilder,
    $$PaymentsTableUpdateCompanionBuilder,
    (Payment, $$PaymentsTableReferences),
    Payment,
    PrefetchHooks Function({bool rentId})> {
  $$PaymentsTableTableManager(_$Database db, $PaymentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PaymentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PaymentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PaymentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> rentId = const Value.absent(),
            Value<double> value = const Value.absent(),
            Value<DateTime> paymentDate = const Value.absent(),
            Value<String?> status = const Value.absent(),
          }) =>
              PaymentsCompanion(
            id: id,
            rentId: rentId,
            value: value,
            paymentDate: paymentDate,
            status: status,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int rentId,
            required double value,
            required DateTime paymentDate,
            Value<String?> status = const Value.absent(),
          }) =>
              PaymentsCompanion.insert(
            id: id,
            rentId: rentId,
            value: value,
            paymentDate: paymentDate,
            status: status,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$PaymentsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({rentId = false}) {
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
                if (rentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.rentId,
                    referencedTable: $$PaymentsTableReferences._rentIdTable(db),
                    referencedColumn:
                        $$PaymentsTableReferences._rentIdTable(db).id,
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

typedef $$PaymentsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $PaymentsTable,
    Payment,
    $$PaymentsTableFilterComposer,
    $$PaymentsTableOrderingComposer,
    $$PaymentsTableAnnotationComposer,
    $$PaymentsTableCreateCompanionBuilder,
    $$PaymentsTableUpdateCompanionBuilder,
    (Payment, $$PaymentsTableReferences),
    Payment,
    PrefetchHooks Function({bool rentId})>;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$CarsTableTableManager get cars => $$CarsTableTableManager(_db, _db.cars);
  $$ClienteTableTableManager get cliente =>
      $$ClienteTableTableManager(_db, _db.cliente);
  $$RentsTableTableManager get rents =>
      $$RentsTableTableManager(_db, _db.rents);
  $$PaymentsTableTableManager get payments =>
      $$PaymentsTableTableManager(_db, _db.payments);
}
