.class public final Lcom/google/common/reflect/TypeResolver;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;,
        Lcom/google/common/reflect/TypeResolver$TypeTable;,
        Lcom/google/common/reflect/TypeResolver$TypeVariableKey;,
        Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
    }
.end annotation


# instance fields
.field private final typeTable:Lcom/google/common/reflect/TypeResolver$TypeTable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeTable;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$TypeTable;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/reflect/TypeResolver$TypeTable;

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/google/common/reflect/TypeResolver$TypeTable;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/reflect/TypeResolver$TypeTable;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeResolver$TypeTable;Lcom/google/common/reflect/TypeResolver$1;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$TypeTable;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .registers 3

    .line 55
    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 55
    invoke-static {p0, p1}, Lcom/google/common/reflect/TypeResolver;->expectArgument(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/reflect/TypeResolver;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 3

    .line 55
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static covariantly(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .registers 3

    .line 75
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    invoke-static {p0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->getTypeMappings(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method

.method private static expectArgument(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 272
    :catch_5
    move-exception v0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static invariantly(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .registers 3

    .line 91
    sget-object v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->INSTANCE:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v1}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    invoke-static {v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->getTypeMappings(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method

.method private static populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    :goto_6
    return-void

    .line 130
    :cond_7
    new-instance v0, Lcom/google/common/reflect/TypeResolver$1;

    invoke-direct {v0, p0, p2}, Lcom/google/common/reflect/TypeResolver$1;-><init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 208
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver$1;->visit([Ljava/lang/reflect/Type;)V

    goto :goto_6
.end method

.method private resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .registers 3

    .line 253
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .registers 5

    .line 259
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 260
    if-nez v0, :cond_1f

    const/4 v0, 0x0

    move-object v1, v0

    .line 261
    :goto_8
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 263
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 264
    invoke-direct {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 265
    check-cast v0, Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0

    .line 260
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v1, v0

    goto :goto_8
.end method

.method private resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 5

    .line 239
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 240
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 241
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 243
    :cond_12
    return-object v1
.end method

.method private resolveWildcardType(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;
    .registers 5

    .line 247
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 248
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 249
    new-instance v2, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v2
.end method


# virtual methods
.method public resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3

    .line 216
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_10

    .line 218
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/reflect/TypeResolver$TypeTable;

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeResolver$TypeTable;->resolve(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 227
    :cond_f
    :goto_f
    return-object p1

    .line 219
    :cond_10
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1b

    .line 220
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_f

    .line 221
    :cond_1b
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_26

    .line 222
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_f

    .line 223
    :cond_26
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_f

    .line 224
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveWildcardType(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    goto :goto_f
.end method

.method resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 4

    .line 232
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 233
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, p1, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_f
    return-object p1
.end method

.method public where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .registers 6

    .line 115
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 116
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-static {v2, v0, v1}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method

.method where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/TypeResolver;"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/reflect/TypeResolver$TypeTable;

    invoke-virtual {v1, p1}, Lcom/google/common/reflect/TypeResolver$TypeTable;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver$TypeTable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$TypeTable;)V

    return-object v0
.end method
