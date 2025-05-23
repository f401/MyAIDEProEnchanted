.class public final Lutilcode/com/google/gson/Gson;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutilcode/com/google/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_COMPLEX_MAP_KEYS:Z = false

.field static final DEFAULT_ESCAPE_HTML:Z = true

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_LENIENT:Z = false

.field static final DEFAULT_PRETTY_PRINT:Z = false

.field static final DEFAULT_SERIALIZE_NULLS:Z = false

.field static final DEFAULT_SPECIALIZE_FLOAT_VALUES:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field private static final NULL_KEY_SURROGATE:Lutilcode/com/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final builderFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lutilcode/com/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final builderHierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lutilcode/com/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Lutilcode/com/google/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field final complexMapKeySerialization:Z

.field private final constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

.field final datePattern:Ljava/lang/String;

.field final dateStyle:I

.field final excluder:Lutilcode/com/google/gson/internal/Excluder;

.field final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lutilcode/com/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final fieldNamingStrategy:Lutilcode/com/google/gson/FieldNamingStrategy;

.field final generateNonExecutableJson:Z

.field final htmlSafe:Z

.field final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lutilcode/com/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final jsonAdapterFactory:Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field final lenient:Z

.field final longSerializationPolicy:Lutilcode/com/google/gson/LongSerializationPolicy;

.field final prettyPrinting:Z

.field final serializeNulls:Z

.field final serializeSpecialFloatingPointValues:Z

.field final timeStyle:I

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    sput-object v0, Lutilcode/com/google/gson/Gson;->NULL_KEY_SURROGATE:Lutilcode/com/google/gson/reflect/TypeToken;

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    sget-object v1, Lutilcode/com/google/gson/internal/Excluder;->DEFAULT:Lutilcode/com/google/gson/internal/Excluder;

    sget-object v2, Lutilcode/com/google/gson/FieldNamingPolicy;->IDENTITY:Lutilcode/com/google/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lutilcode/com/google/gson/LongSerializationPolicy;->DEFAULT:Lutilcode/com/google/gson/LongSerializationPolicy;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lutilcode/com/google/gson/Gson;-><init>(Lutilcode/com/google/gson/internal/Excluder;Lutilcode/com/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLutilcode/com/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lutilcode/com/google/gson/internal/Excluder;Lutilcode/com/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLutilcode/com/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/Excluder;",
            "Lutilcode/com/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lutilcode/com/google/gson/InstanceCreator",
            "<*>;>;ZZZZZZZ",
            "Lutilcode/com/google/gson/LongSerializationPolicy;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lutilcode/com/google/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lutilcode/com/google/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lutilcode/com/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lutilcode/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lutilcode/com/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    iput-object p1, p0, Lutilcode/com/google/gson/Gson;->excluder:Lutilcode/com/google/gson/internal/Excluder;

    iput-object p2, p0, Lutilcode/com/google/gson/Gson;->fieldNamingStrategy:Lutilcode/com/google/gson/FieldNamingStrategy;

    iput-object p3, p0, Lutilcode/com/google/gson/Gson;->instanceCreators:Ljava/util/Map;

    new-instance v1, Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, p3}, Lutilcode/com/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lutilcode/com/google/gson/Gson;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    iput-boolean p4, p0, Lutilcode/com/google/gson/Gson;->serializeNulls:Z

    iput-boolean p5, p0, Lutilcode/com/google/gson/Gson;->complexMapKeySerialization:Z

    iput-boolean p6, p0, Lutilcode/com/google/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean p7, p0, Lutilcode/com/google/gson/Gson;->htmlSafe:Z

    iput-boolean p8, p0, Lutilcode/com/google/gson/Gson;->prettyPrinting:Z

    iput-boolean p9, p0, Lutilcode/com/google/gson/Gson;->lenient:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lutilcode/com/google/gson/Gson;->serializeSpecialFloatingPointValues:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lutilcode/com/google/gson/Gson;->longSerializationPolicy:Lutilcode/com/google/gson/LongSerializationPolicy;

    move-object/from16 v0, p12

    iput-object v0, p0, Lutilcode/com/google/gson/Gson;->datePattern:Ljava/lang/String;

    move/from16 v0, p13

    iput v0, p0, Lutilcode/com/google/gson/Gson;->dateStyle:I

    move/from16 v0, p14

    iput v0, p0, Lutilcode/com/google/gson/Gson;->timeStyle:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lutilcode/com/google/gson/Gson;->builderFactories:Ljava/util/List;

    move-object/from16 v0, p16

    iput-object v0, p0, Lutilcode/com/google/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p17

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p11 .. p11}, Lutilcode/com/google/gson/Gson;->longAdapter(Lutilcode/com/google/gson/LongSerializationPolicy;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/Gson;->doubleAdapter(Z)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/Gson;->floatAdapter(Z)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lutilcode/com/google/gson/Gson;->atomicLongAdapter(Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lutilcode/com/google/gson/Gson;->atomicLongArrayAdapter(Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v2

    invoke-static {v3, v2}, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigDecimal;

    sget-object v3, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lutilcode/com/google/gson/TypeAdapter;

    invoke-static {v2, v3}, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/math/BigInteger;

    sget-object v3, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lutilcode/com/google/gson/TypeAdapter;

    invoke-static {v2, v3}, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lutilcode/com/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v3, p0, Lutilcode/com/google/gson/Gson;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {v2, v3}, Lutilcode/com/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v3, p0, Lutilcode/com/google/gson/Gson;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {v2, v3, p5}, Lutilcode/com/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v3, p0, Lutilcode/com/google/gson/Gson;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {v2, v3}, Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    iput-object v2, p0, Lutilcode/com/google/gson/Gson;->jsonAdapterFactory:Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v3, p0, Lutilcode/com/google/gson/Gson;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    iget-object v4, p0, Lutilcode/com/google/gson/Gson;->jsonAdapterFactory:Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {v2, v3, p2, p1, v4}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Lutilcode/com/google/gson/FieldNamingStrategy;Lutilcode/com/google/gson/internal/Excluder;Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lutilcode/com/google/gson/Gson;->factories:Ljava/util/List;

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lutilcode/com/google/gson/stream/JsonReader;)V
    .registers 4

    if-eqz p0, :cond_a

    :try_start_2
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_b

    :cond_a
    return-void

    :cond_b
    new-instance v0, Lutilcode/com/google/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Lutilcode/com/google/gson/stream/MalformedJsonException; {:try_start_2 .. :try_end_13} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1a

    :catch_13
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1a
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static atomicLongAdapter(Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/Gson$4;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/Gson$4;-><init>(Lutilcode/com/google/gson/TypeAdapter;)V

    invoke-virtual {v0}, Lutilcode/com/google/gson/Gson$4;->nullSafe()Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static atomicLongArrayAdapter(Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/Gson$5;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/Gson$5;-><init>(Lutilcode/com/google/gson/TypeAdapter;)V

    invoke-virtual {v0}, Lutilcode/com/google/gson/Gson$5;->nullSafe()Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method static checkValidFloatingPoint(D)V
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private doubleAdapter(Z)Lutilcode/com/google/gson/TypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    sget-object v0, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lutilcode/com/google/gson/TypeAdapter;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lutilcode/com/google/gson/Gson$1;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/Gson$1;-><init>(Lutilcode/com/google/gson/Gson;)V

    goto :goto_4
.end method

.method private floatAdapter(Z)Lutilcode/com/google/gson/TypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    sget-object v0, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->FLOAT:Lutilcode/com/google/gson/TypeAdapter;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lutilcode/com/google/gson/Gson$2;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/Gson$2;-><init>(Lutilcode/com/google/gson/Gson;)V

    goto :goto_4
.end method

.method private static longAdapter(Lutilcode/com/google/gson/LongSerializationPolicy;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/LongSerializationPolicy;",
            ")",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lutilcode/com/google/gson/LongSerializationPolicy;->DEFAULT:Lutilcode/com/google/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_7

    sget-object v0, Lutilcode/com/google/gson/internal/bind/TypeAdapters;->LONG:Lutilcode/com/google/gson/TypeAdapter;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lutilcode/com/google/gson/Gson$3;

    invoke-direct {v0}, Lutilcode/com/google/gson/Gson$3;-><init>()V

    goto :goto_6
.end method


# virtual methods
.method public excluder()Lutilcode/com/google/gson/internal/Excluder;
    .registers 2

    iget-object v0, p0, Lutilcode/com/google/gson/Gson;->excluder:Lutilcode/com/google/gson/internal/Excluder;

    return-object v0
.end method

.method public fieldNamingStrategy()Lutilcode/com/google/gson/FieldNamingStrategy;
    .registers 2

    iget-object v0, p0, Lutilcode/com/google/gson/Gson;->fieldNamingStrategy:Lutilcode/com/google/gson/FieldNamingStrategy;

    return-object v0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonSyntaxException;,
            Lutilcode/com/google/gson/JsonIOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lutilcode/com/google/gson/stream/JsonReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Lutilcode/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lutilcode/com/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lutilcode/com/google/gson/stream/JsonReader;)V

    invoke-static {p2}, Lutilcode/com/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonIOException;,
            Lutilcode/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lutilcode/com/google/gson/stream/JsonReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Lutilcode/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lutilcode/com/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lutilcode/com/google/gson/stream/JsonReader;)V

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lutilcode/com/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public fromJson(Lutilcode/com/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Lutilcode/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lutilcode/com/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Lutilcode/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/internal/bind/JsonTreeReader;-><init>(Lutilcode/com/google/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Lutilcode/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public fromJson(Lutilcode/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonIOException;,
            Lutilcode/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    invoke-virtual {p1, v1}, Lutilcode/com/google/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_8
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    const/4 v1, 0x0

    invoke-static {p2}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/Gson;->getAdapter(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_17} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_17} :catch_44
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_3d
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_17} :catch_1c
    .catchall {:try_start_8 .. :try_end_17} :catchall_38

    move-result-object v0

    invoke-virtual {p1, v2}, Lutilcode/com/google/gson/stream/JsonReader;->setLenient(Z)V

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    :try_start_1d
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    invoke-virtual {p1, v2}, Lutilcode/com/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v0

    :catch_3d
    move-exception v0

    :try_start_3e
    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_44
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_38

    :catch_4b
    move-exception v0

    if-eqz v1, :cond_53

    invoke-virtual {p1, v2}, Lutilcode/com/google/gson/stream/JsonReader;->setLenient(Z)V

    const/4 v0, 0x0

    goto :goto_1b

    :cond_53
    :try_start_53
    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_38
.end method

.method public getAdapter(Ljava/lang/Class;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/Gson;->getAdapter(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lutilcode/com/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    if-nez p1, :cond_f

    sget-object v0, Lutilcode/com/google/gson/Gson;->NULL_KEY_SURROGATE:Lutilcode/com/google/gson/reflect/TypeToken;

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/TypeAdapter;

    if-eqz v0, :cond_11

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    move-object v0, p1

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lutilcode/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v0, :cond_86

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lutilcode/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v2, 0x1

    move-object v1, v0

    :goto_28
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/Gson$FutureTypeAdapter;

    if-nez v0, :cond_e

    :try_start_30
    new-instance v3, Lutilcode/com/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v3}, Lutilcode/com/google/gson/Gson$FutureTypeAdapter;-><init>()V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lutilcode/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, p0, p1}, Lutilcode/com/google/gson/TypeAdapterFactory;->create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v3, v0}, Lutilcode/com/google/gson/Gson$FutureTypeAdapter;->setDelegate(Lutilcode/com/google/gson/TypeAdapter;)V

    iget-object v3, p0, Lutilcode/com/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_7a

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_e

    iget-object v1, p0, Lutilcode/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_e

    :cond_63
    :try_start_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.5) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v0

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_85

    iget-object v1, p0, Lutilcode/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_85
    throw v0

    :cond_86
    move-object v1, v0

    goto :goto_28
.end method

.method public getDelegateAdapter(Lutilcode/com/google/gson/TypeAdapterFactory;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/TypeAdapterFactory;",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p1, p0, Lutilcode/com/google/gson/Gson;->jsonAdapterFactory:Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    :cond_a
    const/4 v0, 0x0

    iget-object v1, p0, Lutilcode/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/TypeAdapterFactory;

    if-nez v1, :cond_25

    if-ne v0, p1, :cond_12

    const/4 v0, 0x1

    move v1, v0

    goto :goto_12

    :cond_25
    invoke-interface {v0, p0, p2}, Lutilcode/com/google/gson/TypeAdapterFactory;->create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public htmlSafe()Z
    .registers 2

    iget-boolean v0, p0, Lutilcode/com/google/gson/Gson;->htmlSafe:Z

    return v0
.end method

.method public newBuilder()Lutilcode/com/google/gson/GsonBuilder;
    .registers 2

    new-instance v0, Lutilcode/com/google/gson/GsonBuilder;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/GsonBuilder;-><init>(Lutilcode/com/google/gson/Gson;)V

    return-object v0
.end method

.method public newJsonReader(Ljava/io/Reader;)Lutilcode/com/google/gson/stream/JsonReader;
    .registers 4

    new-instance v0, Lutilcode/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iget-boolean v1, p0, Lutilcode/com/google/gson/Gson;->lenient:Z

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object v0
.end method

.method public newJsonWriter(Ljava/io/Writer;)Lutilcode/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lutilcode/com/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_9

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lutilcode/com/google/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_17

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    :cond_17
    iget-boolean v1, p0, Lutilcode/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-object v0
.end method

.method public serializeNulls()Z
    .registers 2

    iget-boolean v0, p0, Lutilcode/com/google/gson/Gson;->serializeNulls:Z

    return v0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_9

    sget-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/Gson;->toJson(Lutilcode/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lutilcode/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Lutilcode/com/google/gson/JsonElement;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/Gson;->toJson(Lutilcode/com/google/gson/JsonElement;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonIOException;
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lutilcode/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lutilcode/com/google/gson/Gson;->toJson(Lutilcode/com/google/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_9
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonIOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lutilcode/com/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lutilcode/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lutilcode/com/google/gson/stream/JsonWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lutilcode/com/google/gson/stream/JsonWriter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonIOException;
        }
    .end annotation

    invoke-static {p2}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/Gson;->getAdapter(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {p3}, Lutilcode/com/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3}, Lutilcode/com/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    iget-boolean v3, p0, Lutilcode/com/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v3}, Lutilcode/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3}, Lutilcode/com/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    iget-boolean v4, p0, Lutilcode/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v4}, Lutilcode/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_22
    invoke-virtual {v0, p3, p1}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_56
    .catch Ljava/lang/AssertionError; {:try_start_22 .. :try_end_25} :catch_2f
    .catchall {:try_start_22 .. :try_end_25} :catchall_4b

    invoke-virtual {p3, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v3}, Lutilcode/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    invoke-virtual {p3, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v3}, Lutilcode/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0

    :catch_56
    move-exception v0

    :try_start_57
    new-instance v4, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_4b
.end method

.method public toJson(Lutilcode/com/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonIOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lutilcode/com/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lutilcode/com/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/Gson;->toJson(Lutilcode/com/google/gson/JsonElement;Lutilcode/com/google/gson/stream/JsonWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Lutilcode/com/google/gson/JsonElement;Lutilcode/com/google/gson/stream/JsonWriter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonIOException;
        }
    .end annotation

    invoke-virtual {p2}, Lutilcode/com/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2}, Lutilcode/com/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    iget-boolean v0, p0, Lutilcode/com/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2}, Lutilcode/com/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    iget-boolean v0, p0, Lutilcode/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_1a
    invoke-static {p1, p2}, Lutilcode/com/google/gson/internal/Streams;->write(Lutilcode/com/google/gson/JsonElement;Lutilcode/com/google/gson/stream/JsonWriter;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_4e
    .catch Ljava/lang/AssertionError; {:try_start_1a .. :try_end_1d} :catch_27
    .catchall {:try_start_1a .. :try_end_1d} :catchall_43

    invoke-virtual {p2, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v3}, Lutilcode/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catch_27
    move-exception v0

    :try_start_28
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    invoke-virtual {p2, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v3}, Lutilcode/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0

    :catch_4e
    move-exception v0

    :try_start_4f
    new-instance v4, Lutilcode/com/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lutilcode/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_43
.end method

.method public toJsonTree(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    goto :goto_4
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/JsonElement;
    .registers 4

    new-instance v0, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lutilcode/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lutilcode/com/google/gson/stream/JsonWriter;)V

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/bind/JsonTreeWriter;->get()Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lutilcode/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/Gson;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
