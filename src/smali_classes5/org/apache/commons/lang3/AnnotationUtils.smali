.class public Lorg/apache/commons/lang3/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# static fields
.field private static final TO_STRING_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lorg/apache/commons/lang3/AnnotationUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/AnnotationUtils;->TO_STRING_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method private static annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z
    .registers 6

    const/4 v1, 0x0

    .line 317
    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_6

    .line 325
    :cond_5
    :goto_5
    return v1

    :cond_6
    move v0, v1

    .line 320
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_17

    .line 321
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 325
    :cond_17
    const/4 v1, 0x1

    goto :goto_5
.end method

.method private static arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 280
    check-cast p1, [Ljava/lang/annotation/Annotation;

    check-cast p2, [Ljava/lang/annotation/Annotation;

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/AnnotationUtils;->annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z

    move-result v0

    .line 306
    :goto_e
    return v0

    .line 282
    :cond_f
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 283
    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_e

    .line 285
    :cond_20
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 286
    check-cast p1, [S

    check-cast p2, [S

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    goto :goto_e

    .line 288
    :cond_31
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 289
    check-cast p1, [I

    check-cast p2, [I

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_e

    .line 291
    :cond_42
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 292
    check-cast p1, [C

    check-cast p2, [C

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_e

    .line 294
    :cond_53
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 295
    check-cast p1, [J

    check-cast p2, [J

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_e

    .line 297
    :cond_64
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 298
    check-cast p1, [F

    check-cast p2, [F

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_e

    .line 300
    :cond_75
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 301
    check-cast p1, [D

    check-cast p2, [D

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_e

    .line 303
    :cond_86
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 304
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto/16 :goto_e

    .line 306
    :cond_98
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_e
.end method

.method private static arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 336
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 337
    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 360
    :goto_e
    return v0

    .line 339
    :cond_f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 340
    check-cast p1, [S

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    goto :goto_e

    .line 342
    :cond_1e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 343
    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_e

    .line 345
    :cond_2d
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 346
    check-cast p1, [C

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    goto :goto_e

    .line 348
    :cond_3c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 349
    check-cast p1, [J

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_e

    .line 351
    :cond_4b
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 352
    check-cast p1, [F

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_e

    .line 354
    :cond_5a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 355
    check-cast p1, [D

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_e

    .line 357
    :cond_69
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 358
    check-cast p1, [Z

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_e

    .line 360
    :cond_78
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_e
.end method

.method public static equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    if-ne p0, p1, :cond_5

    .line 142
    :cond_4
    :goto_4
    return v0

    .line 119
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 120
    goto :goto_4

    .line 122
    :cond_b
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    .line 123
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 124
    const-string v4, "Annotation %s with null annotationType()"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v2, v4, v5}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v4, "Annotation %s with null annotationType()"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v3, v4, v5}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    move v0, v1

    .line 127
    goto :goto_4

    .line 130
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_32} :catch_65
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_32} :catch_68

    move v2, v1

    :goto_33
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 131
    :try_start_37
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_62

    .line 132
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/lang3/AnnotationUtils;->isValidAnnotationMemberType(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 133
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 134
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 135
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v6, v7}, Lorg/apache/commons/lang3/AnnotationUtils;->memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_5d} :catch_65
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_5d} :catch_68

    move-result v5

    if-nez v5, :cond_62

    move v0, v1

    .line 136
    goto :goto_4

    .line 130
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 140
    :catch_65
    move-exception v0

    :goto_66
    move v0, v1

    .line 141
    goto :goto_4

    .line 140
    :catch_68
    move-exception v0

    goto :goto_66
.end method

.method public static hashCode(Ljava/lang/annotation/Annotation;)I
    .registers 7

    const/4 v1, 0x0

    .line 159
    .line 160
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_41

    aget-object v1, v3, v2

    .line 163
    const/4 v5, 0x0

    :try_start_11
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 164
    if-eqz v5, :cond_26

    .line 168
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/apache/commons/lang3/AnnotationUtils;->hashMember(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 165
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 166
    const-string v2, "Annotation method %s returned null"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_38} :catch_38
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_38} :catch_3a

    .line 169
    :catch_38
    move-exception v0

    .line 170
    throw v0

    .line 171
    :catch_3a
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 175
    :cond_41
    return v0
.end method

.method private static hashMember(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 4

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7f

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang3/AnnotationUtils;->arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 241
    :goto_1d
    return v0

    .line 238
    :cond_1e
    instance-of v1, p1, Ljava/lang/annotation/Annotation;

    if-eqz v1, :cond_2a

    .line 239
    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-static {p1}, Lorg/apache/commons/lang3/AnnotationUtils;->hashCode(Ljava/lang/annotation/Annotation;)I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_1d

    .line 241
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_1d
.end method

.method public static isValidAnnotationMemberType(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    if-nez p0, :cond_4

    .line 221
    :cond_3
    :goto_3
    return v0

    .line 218
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 219
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 221
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-nez v1, :cond_30

    .line 222
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-class v1, Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_30
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 255
    if-ne p1, p2, :cond_4

    .line 256
    const/4 v0, 0x1

    .line 267
    :goto_3
    return v0

    .line 258
    :cond_4
    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    .line 259
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 261
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 262
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/AnnotationUtils;->arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 264
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 265
    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p2, Ljava/lang/annotation/Annotation;

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    goto :goto_3

    .line 267
    :cond_28
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static toString(Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 187
    new-instance v1, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v2, Lorg/apache/commons/lang3/AnnotationUtils;->TO_STRING_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    .line 188
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_11
    if-ge v0, v3, :cond_37

    aget-object v4, v2, v0

    .line 189
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1f

    .line 198
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 193
    :cond_1f
    :try_start_1f
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_30

    goto :goto_1c

    .line 194
    :catch_2e
    move-exception v0

    .line 195
    throw v0

    .line 196
    :catch_30
    move-exception v0

    .line 197
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 200
    :cond_37
    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
