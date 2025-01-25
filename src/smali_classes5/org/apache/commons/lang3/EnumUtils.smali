.class public Lorg/apache/commons/lang3/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# static fields
.field private static final CANNOT_STORE_S_S_VALUES_IN_S_BITS:Ljava/lang/String; = "Cannot store %s %s values in %s bits"

.field private static final ENUM_CLASS_MUST_BE_DEFINED:Ljava/lang/String; = "EnumClass must be defined."

.field private static final NULL_ELEMENTS_NOT_PERMITTED:Ljava/lang/String; = "null elements not permitted"

.field private static final S_DOES_NOT_SEEM_TO_BE_AN_ENUM_TYPE:Ljava/lang/String; = "%s does not seem to be an Enum type"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    return-void
.end method

.method private static asEnum(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 51
    const-string v0, "EnumClass must be defined."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    const-string v1, "%s does not seem to be an Enum type"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-object p0
.end method

.method private static checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    const/16 v7, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 67
    array-length v1, v0

    if-gt v1, v7, :cond_2f

    move v1, v2

    :goto_12
    array-length v0, v0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 67
    const-string v5, "Cannot store %s %s values in %s bits"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    aput-object v4, v6, v2

    const/4 v0, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v1, v5, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-object p0

    :cond_2f
    move v1, v3

    .line 67
    goto :goto_12
.end method

.method public static generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)J"
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    .line 116
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-wide/16 v0, 0x0

    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 119
    const-string v1, "null elements not permitted"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-wide/16 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-long v0, v6, v0

    or-long/2addr v0, v2

    move-wide v2, v0

    .line 121
    goto :goto_d

    .line 122
    :cond_2c
    return-wide v2
.end method

.method public static varargs generateBitVector(Ljava/lang/Class;[Ljava/lang/Enum;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)J"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 92
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static generateBitVectors(Ljava/lang/Class;Ljava/lang/Iterable;)[J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)[J"
        }
    .end annotation

    .line 172
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 173
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 175
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 176
    const-string v3, "null elements not permitted"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 179
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [J

    .line 180
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 181
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    div-int/lit8 v3, v3, 0x40

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    goto :goto_39

    .line 183
    :cond_5a
    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 184
    return-object v2
.end method

.method public static varargs generateBitVectors(Ljava/lang/Class;[Ljava/lang/Enum;)[J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)[J"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 143
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 144
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 145
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 146
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [J

    .line 148
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    div-int/lit8 v3, v3, 0x40

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    goto :goto_20

    .line 151
    :cond_41
    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 152
    return-object v2
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .line 216
    if-nez p1, :cond_3

    .line 222
    :goto_2
    return-object p2

    .line 220
    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object p2

    goto :goto_2

    .line 221
    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 239
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/EnumUtils;->getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .line 256
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_9

    .line 264
    :cond_8
    :goto_8
    return-object p2

    .line 259
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 260
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object p2, v1

    .line 261
    goto :goto_8

    .line 259
    :cond_22
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_12
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    .line 290
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 291
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v3, :cond_1b

    aget-object v4, v0, v1

    .line 292
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 294
    :cond_1b
    return-object v2
.end method

.method public static isValidEnum(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 309
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isValidEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 326
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/EnumUtils;->getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static processBitVector(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;J)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .line 343
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 344
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[J)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .line 361
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 362
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v3

    .line 363
    invoke-static {v3}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 364
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v4, :cond_42

    aget-object v5, v0, v1

    .line 365
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    div-int/lit8 v6, v6, 0x40

    .line 366
    array-length v7, v3

    if-ge v6, v7, :cond_3f

    aget-wide v6, v3, v6

    const-wide/16 v8, 0x1

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    rem-int/lit8 v10, v10, 0x40

    shl-long/2addr v8, v10

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3f

    .line 367
    invoke-virtual {v2, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 370
    :cond_42
    return-object v2
.end method
