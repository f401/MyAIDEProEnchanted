.class public Lorg/apache/commons/lang3/reflect/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;
    }
.end annotation


# static fields
.field public static final WILDCARD_ALL:Ljava/lang/reflect/WildcardType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 285
    invoke-static {}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wildcardType()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->withUpperBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->build()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils;->WILDCARD_ALL:Ljava/lang/reflect/WildcardType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1930
    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z
    .registers 3

    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z
    .registers 3

    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .registers 3

    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method private static varargs appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "[TT;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 298
    invoke-static {p2}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    array-length v0, p2

    if-lez v0, :cond_27

    .line 300
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/4 v0, 0x1

    :goto_15
    array-length v1, p2

    if-ge v0, v1, :cond_27

    .line 302
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 305
    :cond_27
    return-object p0
.end method

.method private static appendRecursiveTypes(Ljava/lang/StringBuilder;[I[Ljava/lang/reflect/Type;)V
    .registers 10

    const/16 v6, 0x3e

    const/16 v5, 0x3c

    const/4 v1, 0x0

    .line 310
    move v0, v1

    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_23

    .line 311
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 314
    :cond_23
    invoke-static {p2, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    .line 316
    array-length v1, v0

    if-lez v1, :cond_38

    .line 317
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :cond_38
    return-void
.end method

.method private static classToString(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_1f
    return-object v0

    .line 333
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 336
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->classToString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :goto_42
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_5c

    .line 341
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, ", "

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 338
    :cond_61
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42
.end method

.method public static containsTypeVariables(Ljava/lang/reflect/Type;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 356
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_7

    .line 378
    :cond_6
    :goto_6
    return v0

    .line 359
    :cond_7
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_16

    .line 360
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 362
    :cond_16
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_31

    .line 363
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_22
    if-ge v2, v4, :cond_2f

    aget-object v5, v3, v2

    .line 364
    invoke-static {v5}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2f
    move v0, v1

    .line 368
    goto :goto_6

    .line 370
    :cond_31
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_52

    .line 371
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 372
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 373
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_4f
    move v1, v0

    :cond_50
    move v0, v1

    .line 372
    goto :goto_6

    .line 375
    :cond_52
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_61

    .line 376
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_6

    :cond_61
    move v0, v1

    .line 378
    goto :goto_6
.end method

.method private static containsVariableTypeSameParametrizedTypeBound(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/ParameterizedType;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")Z"
        }
    .end annotation

    .line 383
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 419
    const-string v1, "cls"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v1, "superParameterizedType"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    .line 425
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 449
    :goto_1a
    return-object v0

    .line 429
    :cond_1b
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 430
    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1a

    .line 434
    :cond_26
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 437
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_35

    .line 438
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1a

    .line 441
    :cond_35
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 442
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    .line 445
    invoke-static {v1, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v1

    .line 447
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    move-object v0, v1

    .line 449
    goto :goto_1a
.end method

.method private static equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z
    .registers 4

    .line 461
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_16

    .line 462
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 461
    :goto_15
    return v0

    .line 462
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static equals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z
    .registers 4

    .line 474
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2f

    .line 475
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 476
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 477
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 478
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v0

    .line 481
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 3

    .line 493
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/concurrent/ConstantInitializer$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 494
    const/4 v0, 0x1

    .line 505
    :goto_7
    return v0

    .line 496
    :cond_8
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_13

    .line 497
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_7

    .line 499
    :cond_13
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1e

    .line 500
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_7

    .line 502
    :cond_1e
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_29

    .line 503
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_7

    .line 505
    :cond_29
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .registers 5

    const/4 v0, 0x0

    .line 537
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_24

    .line 538
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 539
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 540
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 542
    :cond_24
    return v0
.end method

.method private static equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z
    .registers 6

    const/4 v1, 0x0

    .line 517
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    move v0, v1

    .line 518
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_17

    .line 519
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 525
    :cond_13
    :goto_13
    return v1

    .line 518
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 523
    :cond_17
    const/4 v1, 0x1

    goto :goto_13
.end method

.method private static extractTypeArgumentsFrom(Ljava/util/Map;[Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 553
    array-length v0, p1

    new-array v4, v0, [Ljava/lang/reflect/Type;

    .line 555
    array-length v5, p1

    move v1, v2

    move v3, v2

    :goto_7
    if-ge v1, v5, :cond_2b

    aget-object v0, p1, v1

    .line 556
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "missing argument mapping for %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6, v7, v8}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    aput-object v0, v4, v3

    .line 555
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_7

    .line 559
    :cond_2b
    return-object v4
.end method

.method private static findRecursiveTypes(Ljava/lang/reflect/ParameterizedType;)[I
    .registers 5

    const/4 v1, 0x0

    .line 563
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 564
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v2, v2

    .line 563
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    .line 565
    new-array v2, v1, [I

    move v3, v1

    .line 566
    :goto_13
    array-length v1, v0

    if-ge v3, v1, :cond_2e

    .line 567
    aget-object v1, v0, v3

    instance-of v1, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_2f

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-static {v1, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsVariableTypeSameParametrizedTypeBound(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/ParameterizedType;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 569
    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->add([II)[I

    move-result-object v1

    .line 566
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    goto :goto_13

    .line 572
    :cond_2e
    return-object v2

    :cond_2f
    move-object v1, v2

    goto :goto_2a
.end method

.method public static genericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .registers 4

    .line 584
    new-instance v1, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;

    const-string v0, "componentType"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v1
.end method

.method private static genericArrayTypeToString(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/String;
    .registers 5

    .line 595
    const-string v0, "%s[]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3

    const/4 v0, 0x0

    .line 605
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_12

    .line 606
    check-cast p0, Ljava/lang/Class;

    .line 607
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 612
    :cond_11
    :goto_11
    return-object v0

    .line 609
    :cond_12
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_11

    .line 610
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_11
.end method

.method private static getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 625
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 627
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 629
    const/4 v2, 0x0

    .line 632
    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_e
    if-ge v3, v5, :cond_4d

    aget-object v1, v4, v3

    .line 633
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2e

    move-object v0, v1

    .line 636
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 646
    :goto_1d
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 647
    invoke-static {v2, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 632
    :goto_29
    add-int/lit8 v0, v3, 0x1

    move-object v2, v1

    move v3, v0

    goto :goto_e

    .line 637
    :cond_2e
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_36

    move-object v0, v1

    .line 638
    check-cast v0, Ljava/lang/Class;

    goto :goto_1d

    .line 640
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected generic interface type found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 653
    :cond_4d
    if-eqz v2, :cond_50

    .line 660
    :goto_4f
    return-object v2

    :cond_50
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_4f

    :cond_55
    move-object v1, v2

    goto :goto_29
.end method

.method public static getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 673
    const-string v0, "typeVariable"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 676
    array-length v1, v0

    if-nez v1, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v2

    :goto_16
    return-object v0

    :cond_17
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_16
.end method

.method public static getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .registers 4

    const/4 v2, 0x0

    .line 689
    const-string v0, "wildcardType"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 692
    array-length v1, v0

    if-nez v1, :cond_15

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_15
    return-object v0
.end method

.method public static getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .registers 4

    const/4 v2, 0x0

    .line 706
    const-string v0, "wildcardType"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 709
    array-length v1, v0

    if-nez v1, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v2

    :goto_16
    return-object v0

    :cond_17
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_16
.end method

.method private static getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 720
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 727
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_b

    .line 731
    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 728
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait... What!? Type of rawType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 747
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 749
    check-cast p0, Ljava/lang/Class;

    .line 804
    :goto_7
    return-object p0

    .line 752
    :cond_8
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_13

    .line 754
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_7

    .line 757
    :cond_13
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_41

    .line 758
    if-nez p1, :cond_1b

    move-object p0, v1

    .line 759
    goto :goto_7

    :cond_1b
    move-object v0, p0

    .line 763
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 767
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_28

    move-object p0, v1

    .line 768
    goto :goto_7

    .line 773
    :cond_28
    check-cast v0, Ljava/lang/Class;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 778
    if-nez v0, :cond_32

    move-object p0, v1

    .line 779
    goto :goto_7

    .line 783
    :cond_32
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 785
    if-nez v0, :cond_3c

    move-object p0, v1

    .line 786
    goto :goto_7

    .line 790
    :cond_3c
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_7

    .line 793
    :cond_41
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_59

    .line 795
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 796
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 795
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 799
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_7

    .line 803
    :cond_59
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5f

    move-object p0, v1

    .line 804
    goto :goto_7

    .line 807
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 821
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 822
    const/4 v0, 0x0

    .line 848
    :cond_7
    :goto_7
    return-object v0

    .line 826
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 828
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_7

    .line 835
    :cond_1a
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 839
    :cond_1e
    new-instance v0, Ljava/util/HashMap;

    if-nez p2, :cond_34

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 843
    :goto_25
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 848
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_7

    .line 839
    :cond_34
    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_25
.end method

.method public static getTypeArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 864
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 878
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    .line 881
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 882
    const/4 v0, 0x0

    .line 919
    :cond_b
    :goto_b
    return-object v0

    .line 885
    :cond_c
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 888
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_38

    .line 890
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 891
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 900
    :goto_1e
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 902
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 905
    const/4 v1, 0x0

    :goto_27
    array-length v5, v4

    if-ge v1, v5, :cond_44

    .line 906
    aget-object v5, v3, v1

    .line 907
    aget-object v6, v4, v1

    .line 909
    invoke-interface {v0, v5, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 907
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 895
    :cond_38
    new-instance v0, Ljava/util/HashMap;

    if-nez p2, :cond_40

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1e

    :cond_40
    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1e

    .line 913
    :cond_44
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 919
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_b
.end method

.method public static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 961
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 974
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_d

    .line 975
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1008
    :cond_c
    :goto_c
    return-object v0

    .line 978
    :cond_d
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_18

    .line 979
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_c

    .line 982
    :cond_18
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_31

    .line 983
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 984
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 983
    :cond_2c
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_c

    .line 989
    :cond_31
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_4e

    .line 990
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    :goto_3c
    if-ge v1, v3, :cond_c

    aget-object v4, v2, v1

    .line 992
    invoke-static {v4, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 993
    invoke-static {v4, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_c

    .line 990
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1000
    :cond_4e
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_6b

    .line 1001
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    :goto_59
    if-ge v1, v3, :cond_c

    aget-object v4, v2, v1

    .line 1003
    invoke-static {v4, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1004
    invoke-static {v4, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_c

    .line 1001
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 1010
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found an unhandled type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isArrayType(Ljava/lang/reflect/Type;)Z
    .registers 2

    .line 1020
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1032
    if-nez p0, :cond_f

    .line 1034
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1083
    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    .line 1034
    goto :goto_c

    .line 1039
    :cond_f
    if-nez p1, :cond_13

    move v0, v1

    .line 1040
    goto :goto_c

    .line 1044
    :cond_13
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1048
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_24

    .line 1050
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    goto :goto_c

    .line 1053
    :cond_24
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_33

    .line 1055
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    goto :goto_c

    .line 1059
    :cond_33
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_4e

    .line 1062
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_3f
    if-ge v2, v4, :cond_4c

    aget-object v5, v3, v2

    .line 1063
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1062
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_4c
    move v0, v1

    .line 1068
    goto :goto_c

    .line 1073
    :cond_4e
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_72

    .line 1074
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1075
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_70

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 1076
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1077
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 1076
    invoke-static {v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_70
    move v0, v1

    goto :goto_c

    .line 1082
    :cond_72
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_78

    move v0, v1

    .line 1083
    goto :goto_c

    .line 1086
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found an unhandled type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1101
    if-nez p0, :cond_5

    .line 1159
    :cond_4
    :goto_4
    return v0

    .line 1107
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 1108
    goto :goto_4

    .line 1112
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1116
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1118
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_2b

    .line 1119
    check-cast p0, Ljava/lang/Class;

    .line 1122
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1123
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4

    .line 1126
    :cond_2b
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_3a

    .line 1128
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    goto :goto_4

    .line 1132
    :cond_3a
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_55

    .line 1134
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_46
    if-ge v2, v4, :cond_53

    aget-object v5, v3, v2

    .line 1135
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1134
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_53
    move v0, v1

    .line 1140
    goto :goto_4

    .line 1143
    :cond_55
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_70

    .line 1146
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_61
    if-ge v2, v4, :cond_6e

    aget-object v5, v3, v2

    .line 1147
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1146
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_6e
    move v0, v1

    .line 1152
    goto :goto_4

    .line 1155
    :cond_70
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_76

    move v0, v1

    .line 1159
    goto :goto_4

    .line 1162
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found an unhandled type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1176
    if-nez p0, :cond_6

    move v0, v1

    .line 1237
    :goto_5
    return v0

    .line 1182
    :cond_6
    if-nez p1, :cond_a

    move v0, v2

    .line 1183
    goto :goto_5

    .line 1187
    :cond_a
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_10

    move v0, v2

    .line 1188
    goto :goto_5

    .line 1192
    :cond_10
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    .line 1193
    goto :goto_5

    .line 1197
    :cond_18
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 1200
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 1203
    if-nez v3, :cond_25

    move v0, v2

    .line 1204
    goto :goto_5

    .line 1210
    :cond_25
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    move v0, v1

    .line 1211
    goto :goto_5

    .line 1215
    :cond_2d
    invoke-static {p1, v0, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 1219
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 1220
    invoke-static {v0, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariableAssignments(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 1221
    invoke-static {v0, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariableAssignments(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1223
    if-nez v6, :cond_53

    instance-of v7, v0, Ljava/lang/Class;

    if-nez v7, :cond_39

    .line 1230
    :cond_53
    if-eqz v0, :cond_39

    if-eqz v6, :cond_39

    .line 1231
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    instance-of v7, v6, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_67

    .line 1232
    invoke-static {v0, v6, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_67
    move v0, v2

    .line 1234
    goto :goto_5

    :cond_69
    move v0, v1

    .line 1237
    goto :goto_5
.end method

.method public static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 3

    .line 1251
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 1265
    if-eqz p1, :cond_6

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_d

    .line 1266
    :cond_6
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    .line 1282
    :goto_c
    return v0

    .line 1269
    :cond_d
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_18

    .line 1270
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_c

    .line 1273
    :cond_18
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_23

    .line 1274
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_c

    .line 1277
    :cond_23
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2e

    .line 1278
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_c

    .line 1281
    :cond_2e
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_39

    .line 1282
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v0

    goto :goto_c

    .line 1285
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found an unhandled type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1300
    if-nez p0, :cond_6

    move v0, v1

    .line 1330
    :goto_5
    return v0

    .line 1306
    :cond_6
    if-nez p1, :cond_a

    move v0, v2

    .line 1307
    goto :goto_5

    .line 1311
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 1312
    goto :goto_5

    .line 1315
    :cond_12
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2e

    move-object v0, p0

    .line 1319
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1321
    array-length v4, v3

    move v0, v2

    :goto_1f
    if-ge v0, v4, :cond_2e

    aget-object v5, v3, v0

    .line 1322
    invoke-static {v5, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_2b

    move v0, v1

    .line 1323
    goto :goto_5

    .line 1321
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1328
    :cond_2e
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_3e

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_3e

    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_3e

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_40

    :cond_3e
    move v0, v2

    .line 1330
    goto :goto_5

    .line 1333
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found an unhandled type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1348
    if-nez p0, :cond_5

    .line 1420
    :cond_4
    :goto_4
    return v0

    .line 1354
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 1355
    goto :goto_4

    .line 1359
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1363
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1364
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1366
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_62

    .line 1367
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 1368
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 1369
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 1371
    array-length v8, v4

    move v3, v1

    :goto_27
    if-ge v3, v8, :cond_44

    aget-object v2, v4, v3

    .line 1374
    invoke-static {v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 1379
    array-length v10, v6

    move v2, v1

    :goto_31
    if-ge v2, v10, :cond_40

    aget-object v11, v6, v2

    .line 1380
    invoke-static {v11, v9, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_3d

    move v0, v1

    .line 1381
    goto :goto_4

    .line 1379
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1371
    :cond_40
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_27

    .line 1386
    :cond_44
    array-length v4, v5

    move v2, v1

    :goto_46
    if-ge v2, v4, :cond_4

    aget-object v3, v5, v2

    .line 1389
    invoke-static {v3, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 1394
    array-length v8, v7

    move v3, v1

    :goto_50
    if-ge v3, v8, :cond_5f

    aget-object v9, v7, v3

    .line 1395
    invoke-static {v6, v9, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_5c

    move v0, v1

    .line 1396
    goto :goto_4

    .line 1394
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 1386
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1403
    :cond_62
    array-length v3, v4

    move v2, v1

    :goto_64
    if-ge v2, v3, :cond_77

    aget-object v6, v4, v2

    .line 1406
    invoke-static {v6, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {p0, v6, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_74

    move v0, v1

    .line 1408
    goto :goto_4

    .line 1403
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1412
    :cond_77
    array-length v3, v5

    move v2, v1

    :goto_79
    if-ge v2, v3, :cond_4

    aget-object v4, v5, v2

    .line 1415
    invoke-static {v4, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, p0, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_8a

    move v0, v1

    .line 1417
    goto/16 :goto_4

    .line 1412
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_79
.end method

.method public static isInstance(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1432
    if-nez p1, :cond_4

    .line 1436
    :cond_3
    :goto_3
    return v0

    :cond_4
    if-nez p0, :cond_14

    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_12

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_12
    const/4 v0, 0x1

    goto :goto_3

    .line 1437
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    goto :goto_3
.end method

.method static synthetic lambda$wrap$0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 1

    .line 1917
    return-object p0
.end method

.method private static mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 1451
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1453
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_d

    .line 1455
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    .line 1462
    :cond_d
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1466
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 1469
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1472
    const/4 v0, 0x0

    move v1, v0

    :goto_23
    array-length v0, v2

    if-ge v1, v0, :cond_43

    .line 1473
    aget-object v5, v3, v1

    .line 1474
    aget-object v0, v2, v1

    .line 1477
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1480
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1482
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_3f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    .line 1485
    :cond_43
    return-void
.end method

.method public static normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 10

    const/4 v1, 0x0

    .line 1512
    const-string v0, "bounds"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    array-length v0, p0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_d

    .line 1535
    :goto_c
    return-object p0

    .line 1518
    :cond_d
    new-instance v3, Ljava/util/HashSet;

    array-length v0, p0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1520
    array-length v4, p0

    move v2, v1

    :goto_15
    if-ge v2, v4, :cond_35

    aget-object v5, p0, v2

    .line 1523
    array-length v6, p0

    move v0, v1

    :goto_1b
    if-ge v0, v6, :cond_3f

    aget-object v7, p0, v0

    .line 1524
    if-eq v5, v7, :cond_32

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 1525
    const/4 v0, 0x1

    .line 1530
    :goto_29
    if-nez v0, :cond_2e

    .line 1531
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1520
    :cond_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 1523
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1535
    :cond_35
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    move-object p0, v0

    goto :goto_c

    :cond_3f
    move v0, v1

    goto :goto_29
.end method

.method public static final parameterize(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 1548
    const-string v0, "rawClass"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    const-string v0, "typeVariableMap"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->extractTypeArgumentsFrom(Ljava/util/Map;[Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parameterize(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .line 1563
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static final parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 1612
    const-string v0, "rawClass"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    const-string v0, "typeVariableMap"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->extractTypeArgumentsFrom(Ljava/util/Map;[Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1630
    const-string v0, "rawClass"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 1633
    if-nez p0, :cond_4d

    move v0, v1

    :goto_14
    const-string v4, "no owner allowed for top-level %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v3

    .line 1640
    :goto_1e
    const-string v0, "null type argument at index %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v4}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1643
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    array-length v4, p2

    if-ne v0, v4, :cond_6a

    move v0, v1

    .line 1644
    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    array-length v4, v4

    array-length v5, p2

    .line 1645
    const-string v6, "invalid number of type parameters specified: expected %d, got %d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0, v6, v7}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;

    invoke-direct {v0, p1, p0, p2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v0

    :cond_4d
    move v0, v2

    .line 1633
    goto :goto_14

    .line 1635
    :cond_4f
    if-nez p0, :cond_56

    .line 1636
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1e

    .line 1638
    :cond_56
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    const-string v4, "%s is invalid owner type for parameterized %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object p1, v5, v1

    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    :cond_6a
    move v0, v2

    .line 1643
    goto :goto_2e
.end method

.method private static parameterizedTypeToString(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/String;
    .registers 5

    .line 1574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1576
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1577
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1579
    if-nez v1, :cond_2b

    .line 1580
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    :goto_18
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->findRecursiveTypes(Ljava/lang/reflect/ParameterizedType;)[I

    move-result-object v0

    .line 1592
    array-length v1, v0

    if-lez v1, :cond_4d

    .line 1593
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendRecursiveTypes(Ljava/lang/StringBuilder;[I[Ljava/lang/reflect/Type;)V

    .line 1598
    :goto_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1582
    :cond_2b
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_45

    .line 1583
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    :goto_38
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 1585
    :cond_45
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 1595
    :cond_4d
    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26
.end method

.method private static substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1659
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 1660
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 1662
    if-eqz v0, :cond_f

    .line 1668
    :goto_e
    return-object v0

    .line 1663
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing assignment type for type variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    move-object v0, p0

    .line 1668
    goto :goto_e
.end method

.method public static toLongString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 1679
    const-string v0, "typeVariable"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1681
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 1682
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_47

    .line 1683
    check-cast v0, Ljava/lang/Class;

    .line 1685
    :goto_17
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_35

    .line 1686
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    :goto_24
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->typeVariableToString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1689
    :cond_35
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1690
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_17

    .line 1692
    :cond_47
    instance-of v2, v0, Ljava/lang/reflect/Type;

    if-eqz v2, :cond_55

    .line 1693
    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1695
    :cond_55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_24
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1701
    instance-of v0, p0, Ljava/lang/reflect/Type;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/reflect/Type;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static toString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 3

    .line 1712
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_e

    .line 1714
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->classToString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1726
    :goto_d
    return-object v0

    .line 1716
    :cond_e
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_19

    .line 1717
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizedTypeToString(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1719
    :cond_19
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_24

    .line 1720
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wildcardTypeToString(Ljava/lang/reflect/WildcardType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1722
    :cond_24
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2f

    .line 1723
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->typeVariableToString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1725
    :cond_2f
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3a

    .line 1726
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->genericArrayTypeToString(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1728
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static typeVariableToString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1771
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1772
    array-length v2, v1

    if-lez v2, :cond_2d

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1773
    :cond_1f
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    const-string v1, " & "

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1776
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static typesSatisfyVariables(Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    .line 1745
    const-string v0, "typeVariableMap"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1749
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 1750
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 1752
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_2e
    if-ge v1, v5, :cond_10

    aget-object v6, v4, v1

    .line 1753
    invoke-static {v6, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v0, v6, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_3e

    move v0, v2

    .line 1759
    :goto_3d
    return v0

    .line 1752
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1759
    :cond_41
    const/4 v0, 0x1

    goto :goto_3d
.end method

.method private static unrollBounds(Ljava/util/Map;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;[",
            "Ljava/lang/reflect/Type;",
            ")[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1788
    const/4 v0, 0x0

    move v1, v0

    .line 1790
    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_1d

    .line 1791
    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1792
    if-nez v0, :cond_1a

    .line 1793
    invoke-static {p1, v1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    add-int/lit8 v1, v1, -0x1

    move-object p1, v0

    .line 1790
    :goto_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1795
    :cond_1a
    aput-object v0, p1, v1

    goto :goto_16

    .line 1798
    :cond_1d
    return-object p1
.end method

.method private static unrollVariableAssignments(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1814
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 1815
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_14

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1816
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object p0, v0

    .line 1817
    goto :goto_0

    .line 1821
    :cond_14
    return-object v0
.end method

.method public static unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1833
    if-nez p0, :cond_6

    .line 1834
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    .line 1836
    :cond_6
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1837
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1b

    .line 1838
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1864
    :cond_1a
    :goto_1a
    return-object p1

    .line 1840
    :cond_1b
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_59

    .line 1841
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 1843
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 1849
    :goto_27
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1850
    const/4 v0, 0x0

    :goto_2c
    array-length v2, v1

    if-ge v0, v2, :cond_4a

    .line 1851
    aget-object v2, v1, v0

    invoke-static {p0, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1852
    if-eqz v2, :cond_39

    .line 1853
    aput-object v2, v1, v0

    .line 1850
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1846
    :cond_3c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1847
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_27

    .line 1856
    :cond_4a
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v2, v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_1a

    .line 1858
    :cond_59
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1a

    .line 1859
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 1860
    invoke-static {}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wildcardType()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollBounds(Ljava/util/Map;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->withUpperBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    .line 1861
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollBounds(Ljava/util/Map;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->withLowerBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->build()Ljava/lang/reflect/WildcardType;

    move-result-object p1

    goto :goto_1a
.end method

.method public static wildcardType()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    .registers 2

    .line 1874
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;-><init>(Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v0
.end method

.method private static wildcardTypeToString(Ljava/lang/reflect/WildcardType;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1886
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1887
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1888
    array-length v3, v1

    if-gt v3, v4, :cond_1f

    array-length v3, v1

    if-ne v3, v4, :cond_2e

    aget-object v3, v1, v5

    if-eqz v3, :cond_2e

    .line 1889
    :cond_1f
    const-string v2, " super "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1893
    :cond_29
    :goto_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1890
    :cond_2e
    array-length v1, v2

    if-gt v1, v4, :cond_3e

    array-length v1, v2

    if-ne v1, v4, :cond_29

    const-class v1, Ljava/lang/Object;

    aget-object v3, v2, v5

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1891
    :cond_3e
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_29
.end method

.method public static wrap(Ljava/lang/Class;)Lorg/apache/commons/lang3/reflect/Typed;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/apache/commons/lang3/reflect/Typed",
            "<TT;>;"
        }
    .end annotation

    .line 1905
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wrap(Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/Typed;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/Typed;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/apache/commons/lang3/reflect/Typed",
            "<TT;>;"
        }
    .end annotation

    .line 1917
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method
