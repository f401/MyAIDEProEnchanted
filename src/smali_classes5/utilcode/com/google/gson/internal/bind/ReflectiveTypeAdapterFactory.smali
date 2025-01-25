.class public final Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final accessor:Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;

.field private final constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lutilcode/com/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lutilcode/com/google/gson/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Lutilcode/com/google/gson/FieldNamingStrategy;Lutilcode/com/google/gson/internal/Excluder;Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;->getInstance()Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lutilcode/com/google/gson/FieldNamingStrategy;

    iput-object p3, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lutilcode/com/google/gson/internal/Excluder;

    iput-object p4, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    return-void
.end method

.method private createBoundField(Lutilcode/com/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lutilcode/com/google/gson/reflect/TypeToken;ZZ)Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;ZZ)",
            "Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    invoke-virtual {p4}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lutilcode/com/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v10

    const-class v0, Lutilcode/com/google/gson/annotations/JsonAdapter;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/annotations/JsonAdapter;

    if-eqz v0, :cond_32

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, v2, p1, p4, v0}, Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lutilcode/com/google/gson/internal/ConstructorConstructor;Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;Lutilcode/com/google/gson/annotations/JsonAdapter;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v7

    :goto_1a
    if-eqz v7, :cond_34

    const/4 v6, 0x1

    :goto_1d
    if-nez v7, :cond_23

    invoke-virtual {p1, p4}, Lutilcode/com/google/gson/Gson;->getAdapter(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v7

    :cond_23
    new-instance v0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v1, p0

    move-object v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    move-object v8, p1

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLutilcode/com/google/gson/TypeAdapter;Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;Z)V

    return-object v0

    :cond_32
    const/4 v7, 0x0

    goto :goto_1a

    :cond_34
    const/4 v6, 0x0

    goto :goto_1d
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLutilcode/com/google/gson/internal/Excluder;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lutilcode/com/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2, p0, p1}, Lutilcode/com/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getBoundFields(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/Gson;",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v9

    :goto_c
    return-object v1

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    :goto_11
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_b8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v10, v1

    :goto_1e
    if-ge v10, v14, :cond_a0

    aget-object v3, v13, v10

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    if-nez v6, :cond_38

    if-nez v7, :cond_38

    :cond_34
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1e

    :cond_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;

    invoke-virtual {v1, v3}, Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual/range {p2 .. p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lutilcode/com/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    const/4 v8, 0x0

    const/4 v1, 0x0

    move v11, v1

    :goto_5a
    move/from16 v0, v17

    if-ge v11, v0, :cond_82

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v11, :cond_69

    const/4 v6, 0x0

    :cond_69
    invoke-static {v15}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lutilcode/com/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lutilcode/com/google/gson/reflect/TypeToken;ZZ)Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v1

    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-nez v8, :cond_bb

    :goto_7d
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-object v8, v1

    goto :goto_5a

    :cond_82
    if-eqz v8, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a0
    invoke-virtual/range {p2 .. p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lutilcode/com/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_11

    :cond_b8
    move-object v1, v9

    goto/16 :goto_c

    :cond_bb
    move-object v1, v8

    goto :goto_7d
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lutilcode/com/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/annotations/SerializedName;

    if-nez v0, :cond_15

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lutilcode/com/google/gson/FieldNamingStrategy;

    invoke-interface {v0, p1}, Lutilcode/com/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-interface {v0}, Lutilcode/com/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lutilcode/com/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-nez v0, :cond_25

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v2

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v3, :cond_14

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_32
.end method


# virtual methods
.method public create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/Gson;",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v2, p2}, Lutilcode/com/google/gson/internal/ConstructorConstructor;->get(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/internal/ObjectConstructor;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lutilcode/com/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    goto :goto_d
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lutilcode/com/google/gson/internal/Excluder;

    invoke-static {p1, p2, v0}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLutilcode/com/google/gson/internal/Excluder;)Z

    move-result v0

    return v0
.end method
