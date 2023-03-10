// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_db.dart';

// ignore_for_file: type=lint
class $MoorRecipeTable extends MoorRecipe
    with TableInfo<$MoorRecipeTable, MoorRecipeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoorRecipeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _caloriesMeta =
      const VerificationMeta('calories');
  @override
  late final GeneratedColumn<double> calories = GeneratedColumn<double>(
      'calories', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalWeightMeta =
      const VerificationMeta('totalWeight');
  @override
  late final GeneratedColumn<double> totalWeight = GeneratedColumn<double>(
      'total_weight', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalTimeMeta =
      const VerificationMeta('totalTime');
  @override
  late final GeneratedColumn<double> totalTime = GeneratedColumn<double>(
      'total_time', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, label, image, url, calories, totalWeight, totalTime];
  @override
  String get aliasedName => _alias ?? 'moor_recipe';
  @override
  String get actualTableName => 'moor_recipe';
  @override
  VerificationContext validateIntegrity(Insertable<MoorRecipeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('calories')) {
      context.handle(_caloriesMeta,
          calories.isAcceptableOrUnknown(data['calories']!, _caloriesMeta));
    } else if (isInserting) {
      context.missing(_caloriesMeta);
    }
    if (data.containsKey('total_weight')) {
      context.handle(
          _totalWeightMeta,
          totalWeight.isAcceptableOrUnknown(
              data['total_weight']!, _totalWeightMeta));
    } else if (isInserting) {
      context.missing(_totalWeightMeta);
    }
    if (data.containsKey('total_time')) {
      context.handle(_totalTimeMeta,
          totalTime.isAcceptableOrUnknown(data['total_time']!, _totalTimeMeta));
    } else if (isInserting) {
      context.missing(_totalTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorRecipeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoorRecipeData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      calories: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}calories'])!,
      totalWeight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_weight'])!,
      totalTime: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_time'])!,
    );
  }

  @override
  $MoorRecipeTable createAlias(String alias) {
    return $MoorRecipeTable(attachedDatabase, alias);
  }
}

class MoorRecipeData extends DataClass implements Insertable<MoorRecipeData> {
  final int id;
  final String label;
  final String image;
  final String url;
  final double calories;
  final double totalWeight;
  final double totalTime;
  const MoorRecipeData(
      {required this.id,
      required this.label,
      required this.image,
      required this.url,
      required this.calories,
      required this.totalWeight,
      required this.totalTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['label'] = Variable<String>(label);
    map['image'] = Variable<String>(image);
    map['url'] = Variable<String>(url);
    map['calories'] = Variable<double>(calories);
    map['total_weight'] = Variable<double>(totalWeight);
    map['total_time'] = Variable<double>(totalTime);
    return map;
  }

  MoorRecipeCompanion toCompanion(bool nullToAbsent) {
    return MoorRecipeCompanion(
      id: Value(id),
      label: Value(label),
      image: Value(image),
      url: Value(url),
      calories: Value(calories),
      totalWeight: Value(totalWeight),
      totalTime: Value(totalTime),
    );
  }

  factory MoorRecipeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoorRecipeData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String>(json['label']),
      image: serializer.fromJson<String>(json['image']),
      url: serializer.fromJson<String>(json['url']),
      calories: serializer.fromJson<double>(json['calories']),
      totalWeight: serializer.fromJson<double>(json['totalWeight']),
      totalTime: serializer.fromJson<double>(json['totalTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String>(label),
      'image': serializer.toJson<String>(image),
      'url': serializer.toJson<String>(url),
      'calories': serializer.toJson<double>(calories),
      'totalWeight': serializer.toJson<double>(totalWeight),
      'totalTime': serializer.toJson<double>(totalTime),
    };
  }

  MoorRecipeData copyWith(
          {int? id,
          String? label,
          String? image,
          String? url,
          double? calories,
          double? totalWeight,
          double? totalTime}) =>
      MoorRecipeData(
        id: id ?? this.id,
        label: label ?? this.label,
        image: image ?? this.image,
        url: url ?? this.url,
        calories: calories ?? this.calories,
        totalWeight: totalWeight ?? this.totalWeight,
        totalTime: totalTime ?? this.totalTime,
      );
  @override
  String toString() {
    return (StringBuffer('MoorRecipeData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('image: $image, ')
          ..write('url: $url, ')
          ..write('calories: $calories, ')
          ..write('totalWeight: $totalWeight, ')
          ..write('totalTime: $totalTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, label, image, url, calories, totalWeight, totalTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoorRecipeData &&
          other.id == this.id &&
          other.label == this.label &&
          other.image == this.image &&
          other.url == this.url &&
          other.calories == this.calories &&
          other.totalWeight == this.totalWeight &&
          other.totalTime == this.totalTime);
}

class MoorRecipeCompanion extends UpdateCompanion<MoorRecipeData> {
  final Value<int> id;
  final Value<String> label;
  final Value<String> image;
  final Value<String> url;
  final Value<double> calories;
  final Value<double> totalWeight;
  final Value<double> totalTime;
  const MoorRecipeCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.image = const Value.absent(),
    this.url = const Value.absent(),
    this.calories = const Value.absent(),
    this.totalWeight = const Value.absent(),
    this.totalTime = const Value.absent(),
  });
  MoorRecipeCompanion.insert({
    this.id = const Value.absent(),
    required String label,
    required String image,
    required String url,
    required double calories,
    required double totalWeight,
    required double totalTime,
  })  : label = Value(label),
        image = Value(image),
        url = Value(url),
        calories = Value(calories),
        totalWeight = Value(totalWeight),
        totalTime = Value(totalTime);
  static Insertable<MoorRecipeData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<String>? image,
    Expression<String>? url,
    Expression<double>? calories,
    Expression<double>? totalWeight,
    Expression<double>? totalTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (image != null) 'image': image,
      if (url != null) 'url': url,
      if (calories != null) 'calories': calories,
      if (totalWeight != null) 'total_weight': totalWeight,
      if (totalTime != null) 'total_time': totalTime,
    });
  }

  MoorRecipeCompanion copyWith(
      {Value<int>? id,
      Value<String>? label,
      Value<String>? image,
      Value<String>? url,
      Value<double>? calories,
      Value<double>? totalWeight,
      Value<double>? totalTime}) {
    return MoorRecipeCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      image: image ?? this.image,
      url: url ?? this.url,
      calories: calories ?? this.calories,
      totalWeight: totalWeight ?? this.totalWeight,
      totalTime: totalTime ?? this.totalTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (calories.present) {
      map['calories'] = Variable<double>(calories.value);
    }
    if (totalWeight.present) {
      map['total_weight'] = Variable<double>(totalWeight.value);
    }
    if (totalTime.present) {
      map['total_time'] = Variable<double>(totalTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorRecipeCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('image: $image, ')
          ..write('url: $url, ')
          ..write('calories: $calories, ')
          ..write('totalWeight: $totalWeight, ')
          ..write('totalTime: $totalTime')
          ..write(')'))
        .toString();
  }
}

class $MoorIngredientTable extends MoorIngredient
    with TableInfo<$MoorIngredientTable, MoorIngredientData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoorIngredientTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _recipeIdMeta =
      const VerificationMeta('recipeId');
  @override
  late final GeneratedColumn<int> recipeId = GeneratedColumn<int>(
      'recipe_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
      'weight', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, recipeId, name, weight];
  @override
  String get aliasedName => _alias ?? 'moor_ingredient';
  @override
  String get actualTableName => 'moor_ingredient';
  @override
  VerificationContext validateIntegrity(Insertable<MoorIngredientData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('recipe_id')) {
      context.handle(_recipeIdMeta,
          recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta));
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorIngredientData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoorIngredientData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recipeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}recipe_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight'])!,
    );
  }

  @override
  $MoorIngredientTable createAlias(String alias) {
    return $MoorIngredientTable(attachedDatabase, alias);
  }
}

class MoorIngredientData extends DataClass
    implements Insertable<MoorIngredientData> {
  final int id;
  final int recipeId;
  final String name;
  final double weight;
  const MoorIngredientData(
      {required this.id,
      required this.recipeId,
      required this.name,
      required this.weight});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['recipe_id'] = Variable<int>(recipeId);
    map['name'] = Variable<String>(name);
    map['weight'] = Variable<double>(weight);
    return map;
  }

  MoorIngredientCompanion toCompanion(bool nullToAbsent) {
    return MoorIngredientCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      name: Value(name),
      weight: Value(weight),
    );
  }

  factory MoorIngredientData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoorIngredientData(
      id: serializer.fromJson<int>(json['id']),
      recipeId: serializer.fromJson<int>(json['recipeId']),
      name: serializer.fromJson<String>(json['name']),
      weight: serializer.fromJson<double>(json['weight']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recipeId': serializer.toJson<int>(recipeId),
      'name': serializer.toJson<String>(name),
      'weight': serializer.toJson<double>(weight),
    };
  }

  MoorIngredientData copyWith(
          {int? id, int? recipeId, String? name, double? weight}) =>
      MoorIngredientData(
        id: id ?? this.id,
        recipeId: recipeId ?? this.recipeId,
        name: name ?? this.name,
        weight: weight ?? this.weight,
      );
  @override
  String toString() {
    return (StringBuffer('MoorIngredientData(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('name: $name, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recipeId, name, weight);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoorIngredientData &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.name == this.name &&
          other.weight == this.weight);
}

class MoorIngredientCompanion extends UpdateCompanion<MoorIngredientData> {
  final Value<int> id;
  final Value<int> recipeId;
  final Value<String> name;
  final Value<double> weight;
  const MoorIngredientCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.name = const Value.absent(),
    this.weight = const Value.absent(),
  });
  MoorIngredientCompanion.insert({
    this.id = const Value.absent(),
    required int recipeId,
    required String name,
    required double weight,
  })  : recipeId = Value(recipeId),
        name = Value(name),
        weight = Value(weight);
  static Insertable<MoorIngredientData> custom({
    Expression<int>? id,
    Expression<int>? recipeId,
    Expression<String>? name,
    Expression<double>? weight,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (name != null) 'name': name,
      if (weight != null) 'weight': weight,
    });
  }

  MoorIngredientCompanion copyWith(
      {Value<int>? id,
      Value<int>? recipeId,
      Value<String>? name,
      Value<double>? weight}) {
    return MoorIngredientCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      name: name ?? this.name,
      weight: weight ?? this.weight,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<int>(recipeId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorIngredientCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('name: $name, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }
}

abstract class _$RecipeDatabase extends GeneratedDatabase {
  _$RecipeDatabase(QueryExecutor e) : super(e);
  late final $MoorRecipeTable moorRecipe = $MoorRecipeTable(this);
  late final $MoorIngredientTable moorIngredient = $MoorIngredientTable(this);
  late final RecipeDao recipeDao = RecipeDao(this as RecipeDatabase);
  late final IngredientDao ingredientDao =
      IngredientDao(this as RecipeDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [moorRecipe, moorIngredient];
}

mixin _$RecipeDaoMixin on DatabaseAccessor<RecipeDatabase> {
  $MoorRecipeTable get moorRecipe => attachedDatabase.moorRecipe;
}
mixin _$IngredientDaoMixin on DatabaseAccessor<RecipeDatabase> {
  $MoorIngredientTable get moorIngredient => attachedDatabase.moorIngredient;
}
