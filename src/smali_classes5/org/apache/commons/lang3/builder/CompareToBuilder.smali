.class public Lorg/apache/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 112
    return-void
.end method

.method private appendArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)V"
        }
    .end annotation

    .line 440
    instance-of v0, p1, [J

    if-eqz v0, :cond_c

    .line 441
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([J[J)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 461
    :goto_b
    return-void

    .line 442
    :cond_c
    instance-of v0, p1, [I

    if-eqz v0, :cond_18

    .line 443
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([I[I)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_b

    .line 444
    :cond_18
    instance-of v0, p1, [S

    if-eqz v0, :cond_24

    .line 445
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([S[S)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_b

    .line 446
    :cond_24
    instance-of v0, p1, [C

    if-eqz v0, :cond_30

    .line 447
    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([C[C)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_b

    .line 448
    :cond_30
    instance-of v0, p1, [B

    if-eqz v0, :cond_3c

    .line 449
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([B[B)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_b

    .line 450
    :cond_3c
    instance-of v0, p1, [D

    if-eqz v0, :cond_48

    .line 451
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([D[D)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_b

    .line 452
    :cond_48
    instance-of v0, p1, [F

    if-eqz v0, :cond_54

    .line 453
    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([F[F)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_b

    .line 454
    :cond_54
    instance-of v0, p1, [Z

    if-eqz v0, :cond_60

    .line 455
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_b

    .line 459
    :cond_60
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_b
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/lang3/builder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 320
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 321
    const/4 v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 322
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_55

    iget v2, p3, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v2, :cond_55

    .line 323
    aget-object v2, v1, v0

    .line 324
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 325
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    if-nez p4, :cond_34

    .line 326
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_49

    .line 327
    :cond_34
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_49

    .line 329
    :try_start_3e
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    :try_end_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_49} :catch_4c

    .line 322
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 330
    :catch_4c
    move-exception v0

    .line 333
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_55
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    const/4 v2, 0x0

    .line 142
    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 207
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .registers 5

    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 282
    if-ne p0, p1, :cond_4

    .line 283
    const/4 v0, 0x0

    .line 298
    :goto_3
    return v0

    .line 285
    :cond_4
    const-string v0, "lhs"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    const-string v0, "rhs"

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 289
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 292
    new-instance v3, Lorg/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 293
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    .line 294
    :goto_24
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_38

    if-eq v2, p3, :cond_38

    .line 295
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 296
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_24

    .line 298
    :cond_38
    invoke-virtual {v3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    goto :goto_3

    .line 290
    :cond_3d
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 5

    .line 240
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 537
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 541
    :goto_4
    return-object p0

    .line 540
    :cond_5
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder$$ExternalSyntheticBackport0;->m(BB)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(CC)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 521
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 525
    :goto_4
    return-object p0

    .line 524
    :cond_5
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder$$ExternalSyntheticBackport1;->m(CC)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(DD)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6

    .line 558
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 562
    :goto_4
    return-object p0

    .line 561
    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(FF)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 579
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 583
    :goto_4
    return-object p0

    .line 582
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(II)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 489
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 493
    :goto_4
    return-object p0

    .line 492
    :cond_5
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder$$ExternalSyntheticBackport2;->m(II)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6

    .line 473
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 477
    :goto_4
    return-object p0

    .line 476
    :cond_5
    cmp-long v0, p1, p3

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lorg/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .line 406
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 433
    :cond_4
    :goto_4
    return-object p0

    .line 409
    :cond_5
    if-eq p1, p2, :cond_4

    .line 412
    if-nez p1, :cond_d

    .line 413
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    .line 416
    :cond_d
    if-nez p2, :cond_13

    .line 417
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    .line 420
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 422
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->appendArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_4

    .line 424
    :cond_21
    if-nez p3, :cond_2c

    .line 426
    check-cast p1, Ljava/lang/Comparable;

    .line 427
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    .line 430
    :cond_2c
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(SS)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 505
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 509
    :goto_4
    return-object p0

    .line 508
    :cond_5
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder$$ExternalSyntheticBackport3;->m(SS)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 595
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 606
    :cond_4
    :goto_4
    return-object p0

    .line 598
    :cond_5
    if-eq p1, p2, :cond_4

    .line 601
    if-eqz p1, :cond_d

    .line 602
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    .line 604
    :cond_d
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append([B[B)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 858
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_7

    .line 879
    :cond_6
    :goto_6
    return-object p0

    .line 861
    :cond_7
    if-eq p1, p2, :cond_6

    .line 864
    if-nez p1, :cond_e

    .line 865
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 868
    :cond_e
    if-nez p2, :cond_13

    .line 869
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 872
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 873
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 876
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 877
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(BB)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([C[C)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 818
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_7

    .line 839
    :cond_6
    :goto_6
    return-object p0

    .line 821
    :cond_7
    if-eq p1, p2, :cond_6

    .line 824
    if-nez p1, :cond_e

    .line 825
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 828
    :cond_e
    if-nez p2, :cond_13

    .line 829
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 832
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 833
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 836
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 837
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(CC)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([D[D)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 9

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 898
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_7

    .line 919
    :cond_6
    :goto_6
    return-object p0

    .line 901
    :cond_7
    if-eq p1, p2, :cond_6

    .line 904
    if-nez p1, :cond_e

    .line 905
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 908
    :cond_e
    if-nez p2, :cond_13

    .line 909
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 912
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 913
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 916
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 917
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(DD)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([F[F)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 938
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_7

    .line 959
    :cond_6
    :goto_6
    return-object p0

    .line 941
    :cond_7
    if-eq p1, p2, :cond_6

    .line 944
    if-nez p1, :cond_e

    .line 945
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 948
    :cond_e
    if-nez p2, :cond_13

    .line 949
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 952
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 953
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 956
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 957
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(FF)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([I[I)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 738
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_7

    .line 759
    :cond_6
    :goto_6
    return-object p0

    .line 741
    :cond_7
    if-eq p1, p2, :cond_6

    .line 744
    if-nez p1, :cond_e

    .line 745
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 748
    :cond_e
    if-nez p2, :cond_13

    .line 749
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 752
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 753
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 756
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 757
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(II)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([J[J)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 9

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 698
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_7

    .line 719
    :cond_6
    :goto_6
    return-object p0

    .line 701
    :cond_7
    if-eq p1, p2, :cond_6

    .line 704
    if-nez p1, :cond_e

    .line 705
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 708
    :cond_e
    if-nez p2, :cond_13

    .line 709
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 712
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 713
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 716
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 717
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lorg/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 658
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_7

    .line 679
    :cond_6
    :goto_6
    return-object p0

    .line 661
    :cond_7
    if-eq p1, p2, :cond_6

    .line 664
    if-nez p1, :cond_e

    .line 665
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 668
    :cond_e
    if-nez p2, :cond_13

    .line 669
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 672
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 673
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 676
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 677
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([S[S)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 778
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_7

    .line 799
    :cond_6
    :goto_6
    return-object p0

    .line 781
    :cond_7
    if-eq p1, p2, :cond_6

    .line 784
    if-nez p1, :cond_e

    .line 785
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 788
    :cond_e
    if-nez p2, :cond_13

    .line 789
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 792
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 793
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 796
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 797
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(SS)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([Z[Z)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 978
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_7

    .line 999
    :cond_6
    :goto_6
    return-object p0

    .line 981
    :cond_7
    if-eq p1, p2, :cond_6

    .line 984
    if-nez p1, :cond_e

    .line 985
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 988
    :cond_e
    if-nez p2, :cond_13

    .line 989
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    .line 992
    :cond_13
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_20

    .line 993
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_1b
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v0, v1

    goto :goto_1b

    .line 996
    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 997
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public appendSuper(I)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 3

    .line 349
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    .line 353
    :goto_4
    return-object p0

    .line 352
    :cond_5
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public build()Ljava/lang/Integer;
    .registers 2

    .line 1028
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toComparison()I
    .registers 2

    .line 1013
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
