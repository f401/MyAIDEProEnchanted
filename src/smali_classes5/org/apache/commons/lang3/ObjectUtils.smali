.class public Lorg/apache/commons/lang3/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/ObjectUtils$Null;
    }
.end annotation


# static fields
.field private static final AT_SIGN:C = '@'

.field public static final NULL:Lorg/apache/commons/lang3/ObjectUtils$Null;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Lorg/apache/commons/lang3/ObjectUtils$Null;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ObjectUtils$Null;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ObjectUtils;->NULL:Lorg/apache/commons/lang3/ObjectUtils$Null;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    return-void
.end method

.method public static CONST(B)B
    .registers 1

    .line 379
    return p0
.end method

.method public static CONST(C)C
    .registers 1

    .line 400
    return p0
.end method

.method public static CONST(D)D
    .registers 2

    .line 421
    return-wide p0
.end method

.method public static CONST(F)F
    .registers 1

    .line 442
    return p0
.end method

.method public static CONST(I)I
    .registers 1

    .line 463
    return p0
.end method

.method public static CONST(J)J
    .registers 2

    .line 484
    return-wide p0
.end method

.method public static CONST(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 527
    return-object p0
.end method

.method public static CONST(S)S
    .registers 1

    .line 505
    return p0
.end method

.method public static CONST(Z)Z
    .registers 1

    .line 358
    return p0
.end method

.method public static CONST_BYTE(I)B
    .registers 3

    .line 551
    const/16 v0, -0x80

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_a

    .line 554
    int-to-byte v0, p0

    return v0

    .line 552
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplied value must be a valid byte literal between -128 and 127: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static CONST_SHORT(I)S
    .registers 3

    .line 578
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_a

    .line 581
    int-to-short v0, p0

    return v0

    .line 579
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplied value must be a valid byte literal between -32768 and 32767: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs allNotNull([Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 138
    if-nez p0, :cond_4

    .line 148
    :cond_3
    :goto_3
    return v0

    .line 142
    :cond_4
    array-length v2, p0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_f

    aget-object v3, p0, v1

    .line 143
    if-eqz v3, :cond_3

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 148
    :cond_f
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static varargs allNull([Ljava/lang/Object;)Z
    .registers 2

    .line 174
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->anyNotNull([Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs anyNotNull([Ljava/lang/Object;)Z
    .registers 2

    .line 201
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static varargs anyNull([Ljava/lang/Object;)Z
    .registers 2

    .line 229
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->allNotNull([Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 244
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_b6

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 249
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 250
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 251
    :goto_24
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_37

    .line 252
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v1, v2

    goto :goto_24

    .line 255
    :cond_31
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 278
    :cond_37
    :goto_37
    return-object v0

    .line 259
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 260
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_4b} :catch_91
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_4b} :catch_71
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_38 .. :try_end_4b} :catch_4d

    move-result-object v0

    goto :goto_37

    .line 268
    :catch_4d
    move-exception v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception cloning Cloneable type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/commons/lang3/exception/CloneFailedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 265
    :catch_71
    move-exception v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot clone Cloneable type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/commons/lang3/exception/CloneFailedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 261
    :catch_91
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloneable type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has no clone method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/commons/lang3/exception/CloneFailedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 278
    :cond_b6
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public static cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 298
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 299
    if-nez v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, v0

    goto :goto_6
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)I"
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 330
    if-ne p0, p1, :cond_6

    .line 331
    const/4 v0, 0x0

    .line 337
    :cond_5
    :goto_5
    return v0

    .line 332
    :cond_6
    if-nez p0, :cond_c

    .line 333
    if-nez p2, :cond_5

    move v0, v1

    goto :goto_5

    .line 334
    :cond_c
    if-nez p1, :cond_12

    .line 335
    if-eqz p2, :cond_17

    :goto_10
    move v0, v1

    goto :goto_5

    .line 337
    :cond_12
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_5

    :cond_17
    move v1, v0

    goto :goto_10
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 602
    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    move-object p0, p1

    goto :goto_2
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 630
    if-ne p0, p1, :cond_4

    .line 631
    const/4 v0, 0x1

    .line 636
    :goto_3
    return v0

    .line 633
    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    .line 634
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 636
    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static varargs firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 663
    if-eqz p0, :cond_10

    .line 664
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_10

    aget-object v0, p0, v1

    .line 665
    if-eqz v0, :cond_c

    .line 670
    :goto_b
    return-object v0

    .line 664
    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 670
    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static varargs getFirstNonNull([Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/function/Supplier",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 699
    if-eqz p0, :cond_16

    .line 700
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_16

    aget-object v0, p0, v1

    .line 701
    if-eqz v0, :cond_12

    .line 702
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_12

    .line 709
    :goto_11
    return-object v0

    .line 700
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 709
    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static getIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Supplier",
            "<TT;>;)TT;"
        }
    .end annotation

    .line 738
    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    if-nez p1, :cond_7

    const/4 p0, 0x0

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 759
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static varargs hashCodeMulti([Ljava/lang/Object;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 786
    .line 787
    if-eqz p0, :cond_13

    .line 788
    array-length v2, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_13

    aget-object v3, p0, v1

    .line 789
    invoke-static {v3}, Lorg/apache/commons/lang3/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v3

    .line 790
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    .line 788
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 793
    :cond_13
    return v0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 838
    if-nez p0, :cond_4

    .line 839
    const/4 v0, 0x0

    .line 849
    :goto_3
    return-object v0

    .line 841
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 845
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static identityToString(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    const-string v0, "object"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 815
    const/16 v1, 0x40

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    .line 816
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 817
    return-void
.end method

.method public static identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 6

    .line 896
    const-string v0, "object"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 899
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 900
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 902
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 903
    return-void
.end method

.method public static identityToString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 6

    .line 921
    const-string v0, "object"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 924
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 925
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    return-void
.end method

.method public static identityToString(Lorg/apache/commons/lang3/text/StrBuilder;Ljava/lang/Object;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 871
    const-string v0, "object"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 874
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 875
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 876
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 877
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 878
    return-void
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 980
    if-nez p0, :cond_5

    .line 995
    :cond_4
    :goto_4
    return v0

    .line 983
    :cond_5
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_13

    .line 984
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 986
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 987
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 989
    :cond_25
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_30

    .line 990
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    goto :goto_4

    .line 992
    :cond_30
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3b

    .line 993
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    goto :goto_4

    :cond_3b
    move v0, v1

    .line 995
    goto :goto_4
.end method

.method public static isNotEmpty(Ljava/lang/Object;)Z
    .registers 2

    .line 1024
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs max([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1042
    .line 1043
    if-eqz p0, :cond_14

    .line 1044
    array-length v4, p0

    move v2, v3

    :goto_6
    if-ge v2, v4, :cond_14

    aget-object v0, p0, v2

    .line 1045
    invoke-static {v0, v1, v3}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v5

    if-lez v5, :cond_15

    .line 1044
    :goto_10
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_6

    .line 1050
    :cond_14
    return-object v1

    :cond_15
    move-object v0, v1

    goto :goto_10
.end method

.method public static varargs median([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1089
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1090
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1091
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1092
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1094
    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Comparable;

    .line 1095
    return-object v0
.end method

.method public static varargs median(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;[TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v2, 0x0

    .line 1066
    const-string v0, "null/empty items"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1067
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1068
    const-string v0, "comparator"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1070
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1073
    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    .line 1074
    return-object v0
.end method

.method public static varargs min([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v1, 0x0

    .line 1115
    .line 1116
    if-eqz p0, :cond_15

    .line 1117
    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v3, :cond_15

    aget-object v0, p0, v2

    .line 1118
    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v4

    if-gez v4, :cond_16

    .line 1117
    :goto_11
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_6

    .line 1123
    :cond_15
    return-object v1

    :cond_16
    move-object v0, v1

    goto :goto_11
.end method

.method public static varargs mode([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1139
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1140
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1141
    array-length v5, p0

    move v1, v2

    :goto_10
    if-ge v1, v5, :cond_2d

    aget-object v6, p0, v1

    .line 1142
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 1143
    if-nez v0, :cond_29

    .line 1144
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    :goto_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 1146
    :cond_29
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_25

    .line 1151
    :cond_2d
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v4

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v1

    .line 1153
    if-ne v1, v2, :cond_52

    move v0, v2

    move-object v3, v4

    :goto_50
    move v2, v0

    .line 1159
    goto :goto_36

    .line 1155
    :cond_52
    if-le v1, v2, :cond_5d

    .line 1157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move v0, v1

    move-object v3, v2

    goto :goto_50

    :cond_5b
    move-object v3, v4

    .line 1162
    :cond_5c
    return-object v3

    :cond_5d
    move v0, v2

    goto :goto_50
.end method

.method public static notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 1185
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static requireNonEmpty(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1211
    const-string v0, "object"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1239
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1240
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1243
    return-object p0

    .line 1241
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1270
    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1295
    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1319
    if-nez p0, :cond_d

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static wait(Ljava/lang/Object;Ljava/time/Duration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1336
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/commons/lang3/ObjectUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ObjectUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/time/DurationUtils;->zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationUtils;->accept(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/time/Duration;)V

    .line 1337
    return-void
.end method
