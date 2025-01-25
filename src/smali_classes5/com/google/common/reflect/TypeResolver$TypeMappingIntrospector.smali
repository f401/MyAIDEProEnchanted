.class final Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
.super Lcom/google/common/reflect/TypeVisitor;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeMappingIntrospector"
.end annotation


# instance fields
.field private final mappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 373
    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    .line 375
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    return-void
.end method

.method static getTypeMappings(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 382
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;-><init>()V

    .line 384
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 385
    iget-object v0, v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private map(Lcom/google/common/reflect/TypeResolver$TypeVariableKey;Ljava/lang/reflect/Type;)V
    .registers 5

    .line 418
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 438
    :cond_8
    :goto_8
    return-void

    :cond_9
    move-object v0, p2

    .line 427
    :goto_a
    if-eqz v0, :cond_2f

    .line 428
    invoke-virtual {p1, v0}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->equalsType(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 433
    :goto_12
    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-static {p2}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->forLookup(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    move-object p2, v0

    goto :goto_12

    .line 427
    :cond_22
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->forLookup(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_a

    .line 437
    :cond_2f
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method


# virtual methods
.method visitClass(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 390
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 391
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 392
    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 396
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 397
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 398
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 399
    array-length v1, v4

    array-length v6, v5

    if-ne v1, v6, :cond_2b

    move v1, v2

    :goto_15
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    move v1, v3

    .line 400
    :goto_19
    array-length v6, v4

    if-ge v1, v6, :cond_2d

    .line 401
    new-instance v6, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    aget-object v7, v4, v1

    invoke-direct {v6, v7}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    aget-object v7, v5, v1

    invoke-direct {p0, v6, v7}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->map(Lcom/google/common/reflect/TypeResolver$TypeVariableKey;Ljava/lang/reflect/Type;)V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2b
    move v1, v3

    .line 399
    goto :goto_15

    .line 403
    :cond_2d
    new-array v1, v2, [Ljava/lang/reflect/Type;

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 404
    new-array v0, v2, [Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 405
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .line 409
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 410
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .registers 3

    .line 414
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 415
    return-void
.end method
