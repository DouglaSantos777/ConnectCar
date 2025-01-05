// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
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

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ClienteTable cliente = $ClienteTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cliente];
}

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

class $$ClienteTableFilterComposer
    extends Composer<_$AppDatabase, $ClienteTable> {
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
    extends Composer<_$AppDatabase, $ClienteTable> {
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
    extends Composer<_$AppDatabase, $ClienteTable> {
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
    _$AppDatabase,
    $ClienteTable,
    ClienteData,
    $$ClienteTableFilterComposer,
    $$ClienteTableOrderingComposer,
    $$ClienteTableAnnotationComposer,
    $$ClienteTableCreateCompanionBuilder,
    $$ClienteTableUpdateCompanionBuilder,
    (ClienteData, BaseReferences<_$AppDatabase, $ClienteTable, ClienteData>),
    ClienteData,
    PrefetchHooks Function()> {
  $$ClienteTableTableManager(_$AppDatabase db, $ClienteTable table)
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
    _$AppDatabase,
    $ClienteTable,
    ClienteData,
    $$ClienteTableFilterComposer,
    $$ClienteTableOrderingComposer,
    $$ClienteTableAnnotationComposer,
    $$ClienteTableCreateCompanionBuilder,
    $$ClienteTableUpdateCompanionBuilder,
    (ClienteData, BaseReferences<_$AppDatabase, $ClienteTable, ClienteData>),
    ClienteData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ClienteTableTableManager get cliente =>
      $$ClienteTableTableManager(_db, _db.cliente);
}
