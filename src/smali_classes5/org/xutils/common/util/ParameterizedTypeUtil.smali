.class public Lorg/xutils/common/util/ParameterizedTypeUtil;
.super Ljava/lang/Object;
.source "ParameterizedTypeUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 20
    .line 24
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_20

    move-object v0, p0

    .line 25
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 26
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 27
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    .line 32
    :goto_19
    if-ne p1, v3, :cond_2a

    .line 33
    if-eqz v5, :cond_27

    .line 34
    aget-object v0, v5, p2

    .line 59
    :goto_1f
    return-object v0

    :cond_20
    move-object v0, p0

    .line 30
    check-cast v0, Ljava/lang/Class;

    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    goto :goto_19

    .line 36
    :cond_27
    const-class v0, Ljava/lang/Object;

    goto :goto_1f

    .line 39
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 40
    if-eqz v6, :cond_5f

    .line 41
    const/4 v0, 0x0

    move v2, v0

    :goto_32
    array-length v0, v6

    if-ge v2, v0, :cond_5f

    .line 42
    aget-object v1, v6, v2

    .line 43
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5b

    move-object v0, v1

    .line 44
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 47
    :try_start_4a
    invoke-static {v1, p1, p2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getTrueType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_53

    move-result-object v0

    goto :goto_1f

    .line 48
    :catchall_53
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_5b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_32

    .line 56
    :cond_5f
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_78

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 59
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getTrueType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_1f

    .line 65
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FindGenericType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", declaredClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTrueType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 77
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_23

    .line 78
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 79
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    .line 80
    if-eqz p2, :cond_1f

    move v0, v1

    .line 81
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 82
    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 83
    aget-object p0, p2, v0

    .line 94
    :cond_1f
    :goto_1f
    return-object p0

    .line 81
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 88
    :cond_23
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1f

    move-object v0, p0

    .line 89
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 90
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1f

    .line 91
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1f
.end method
