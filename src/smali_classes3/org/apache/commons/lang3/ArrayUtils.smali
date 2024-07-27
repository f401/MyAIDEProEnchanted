.class public Lorg/apache/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FIELD_ARRAY:[Ljava/lang/reflect/Field;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_METHOD_ARRAY:[Ljava/lang/reflect/Method;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

.field public static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 54
    new-array v0, v1, [Z

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 59
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 64
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 69
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 74
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 79
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 84
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 89
    new-array v0, v1, [D

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 94
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 101
    new-array v0, v1, [Ljava/lang/reflect/Field;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FIELD_ARRAY:[Ljava/lang/reflect/Field;

    .line 106
    new-array v0, v1, [F

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 111
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 116
    new-array v0, v1, [I

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 121
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 126
    new-array v0, v1, [J

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 131
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 138
    new-array v0, v1, [Ljava/lang/reflect/Method;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_METHOD_ARRAY:[Ljava/lang/reflect/Method;

    .line 143
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 148
    new-array v0, v1, [S

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 153
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 158
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 165
    new-array v0, v1, [Ljava/lang/Throwable;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    .line 172
    new-array v0, v1, [Ljava/lang/reflect/Type;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9653
    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 627
    if-nez p0, :cond_2

    .line 628
    if-nez p1, :cond_1

    .line 631
    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 632
    invoke-static {v0, v2, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 645
    :cond_0
    :goto_0
    return-object v0

    .line 629
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 635
    :cond_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 636
    if-gt p1, v1, :cond_3

    if-ltz p1, :cond_3

    .line 639
    add-int/lit8 v0, v1, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 640
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 642
    if-ge p1, v1, :cond_0

    .line 643
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 637
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static add([BB)[B
    .registers 4

    .line 264
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 265
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 266
    return-object v0
.end method

.method public static add([BIB)[B
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .registers 4

    .line 326
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 327
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 328
    return-object v0
.end method

.method public static add([CIC)[C
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .registers 6

    .line 389
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 390
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 391
    return-object v0
.end method

.method public static add([DID)[D
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .registers 4

    .line 451
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 452
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 453
    return-object v0
.end method

.method public static add([FIF)[F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .registers 4

    .line 513
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 514
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 515
    return-object v0
.end method

.method public static add([III)[I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 550
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .registers 6

    .line 610
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 611
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 612
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 745
    if-eqz p0, :cond_0

    .line 747
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 754
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 755
    return-object v0

    .line 748
    :cond_0
    if-eqz p2, :cond_1

    .line 749
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 751
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array and element cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 789
    if-eqz p0, :cond_0

    .line 790
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 798
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 799
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 800
    return-object v0

    .line 791
    :cond_0
    if-eqz p1, :cond_1

    .line 792
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([SIS)[S
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .registers 4

    .line 705
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 706
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 707
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .registers 4

    .line 203
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 204
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 205
    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .registers 6

    const/4 v3, 0x0

    .line 850
    if-nez p0, :cond_0

    .line 851
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 858
    :goto_0
    return-object v0

    .line 852
    :cond_0
    if-nez p1, :cond_1

    .line 853
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 855
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 856
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([C[C)[C
    .registers 6

    const/4 v3, 0x0

    .line 879
    if-nez p0, :cond_0

    .line 880
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 887
    :goto_0
    return-object v0

    .line 881
    :cond_0
    if-nez p1, :cond_1

    .line 882
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    .line 884
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 885
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([D[D)[D
    .registers 6

    const/4 v3, 0x0

    .line 908
    if-nez p0, :cond_0

    .line 909
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 916
    :goto_0
    return-object v0

    .line 910
    :cond_0
    if-nez p1, :cond_1

    .line 911
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    .line 913
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 914
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([F[F)[F
    .registers 6

    const/4 v3, 0x0

    .line 937
    if-nez p0, :cond_0

    .line 938
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 945
    :goto_0
    return-object v0

    .line 939
    :cond_0
    if-nez p1, :cond_1

    .line 940
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    .line 942
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 943
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 944
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([I[I)[I
    .registers 6

    const/4 v3, 0x0

    .line 966
    if-nez p0, :cond_0

    .line 967
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 974
    :goto_0
    return-object v0

    .line 968
    :cond_0
    if-nez p1, :cond_1

    .line 969
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    .line 971
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 972
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 973
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([J[J)[J
    .registers 6

    const/4 v3, 0x0

    .line 995
    if-nez p0, :cond_0

    .line 996
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 1003
    :goto_0
    return-object v0

    .line 997
    :cond_0
    if-nez p1, :cond_1

    .line 998
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    .line 1000
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 1001
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1002
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 1060
    if-nez p0, :cond_0

    .line 1061
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1084
    :goto_0
    return-object v0

    .line 1062
    :cond_0
    if-nez p1, :cond_1

    .line 1063
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1065
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1067
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1068
    array-length v2, p0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1070
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    array-length v4, p1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1078
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 1079
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot store "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in an array of "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1083
    :cond_2
    throw v0
.end method

.method public static varargs addAll([S[S)[S
    .registers 6

    const/4 v3, 0x0

    .line 1024
    if-nez p0, :cond_0

    .line 1025
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 1032
    :goto_0
    return-object v0

    .line 1026
    :cond_0
    if-nez p1, :cond_1

    .line 1027
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    .line 1029
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 1030
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1031
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Z[Z)[Z
    .registers 6

    const/4 v3, 0x0

    .line 821
    if-nez p0, :cond_0

    .line 822
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 829
    :goto_0
    return-object v0

    .line 823
    :cond_0
    if-nez p1, :cond_1

    .line 824
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 827
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static addFirst([BB)[B
    .registers 4

    const/4 v1, 0x0

    .line 1143
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([BB)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static addFirst([CC)[C
    .registers 4

    const/4 v1, 0x0

    .line 1172
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([CC)[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    aput-char p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[C[C)[C

    move-result-object v0

    goto :goto_0
.end method

.method public static addFirst([DD)[D
    .registers 6

    const/4 v1, 0x0

    .line 1201
    if-nez p0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->add([DD)[D

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [D

    aput-wide p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[D[D)[D

    move-result-object v0

    goto :goto_0
.end method

.method public static addFirst([FF)[F
    .registers 4

    const/4 v1, 0x0

    .line 1230
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([FF)[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    aput p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[F[F)[F

    move-result-object v0

    goto :goto_0
.end method

.method public static addFirst([II)[I
    .registers 4

    const/4 v1, 0x0

    .line 1259
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([II)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[I[I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static addFirst([JJ)[J
    .registers 6

    const/4 v1, 0x0

    .line 1288
    if-nez p0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->add([JJ)[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [J

    aput-wide p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[J[J)[J

    move-result-object v0

    goto :goto_0
.end method

.method public static addFirst([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1351
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static addFirst([SS)[S
    .registers 4

    const/4 v1, 0x0

    .line 1317
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([SS)[S

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [S

    aput-short p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[S[S)[S

    move-result-object v0

    goto :goto_0
.end method

.method public static addFirst([ZZ)[Z
    .registers 4

    const/4 v1, 0x0

    .line 1114
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([ZZ)[Z

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[Z[Z)[Z

    move-result-object v0

    goto :goto_0
.end method

.method public static clone([B)[B
    .registers 2

    .line 1380
    if-nez p0, :cond_0

    .line 1381
    const/4 v0, 0x0

    .line 1383
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public static clone([C)[C
    .registers 2

    .line 1396
    if-nez p0, :cond_0

    .line 1397
    const/4 v0, 0x0

    .line 1399
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public static clone([D)[D
    .registers 2

    .line 1412
    if-nez p0, :cond_0

    .line 1413
    const/4 v0, 0x0

    .line 1415
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public static clone([F)[F
    .registers 2

    .line 1428
    if-nez p0, :cond_0

    .line 1429
    const/4 v0, 0x0

    .line 1431
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0
.end method

.method public static clone([I)[I
    .registers 2

    .line 1444
    if-nez p0, :cond_0

    .line 1445
    const/4 v0, 0x0

    .line 1447
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static clone([J)[J
    .registers 2

    .line 1460
    if-nez p0, :cond_0

    .line 1461
    const/4 v0, 0x0

    .line 1463
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1498
    if-nez p0, :cond_0

    .line 1499
    const/4 v0, 0x0

    .line 1501
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clone([S)[S
    .registers 2

    .line 1476
    if-nez p0, :cond_0

    .line 1477
    const/4 v0, 0x0

    .line 1479
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0
.end method

.method public static clone([Z)[Z
    .registers 2

    .line 1364
    if-nez p0, :cond_0

    .line 1365
    const/4 v0, 0x0

    .line 1367
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static contains([BB)Z
    .registers 4

    .line 1527
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .registers 4

    .line 1541
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .registers 6

    .line 1554
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DDD)Z
    .registers 12

    const/4 v3, 0x0

    .line 1571
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static contains([FF)Z
    .registers 4

    .line 1584
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .registers 4

    .line 1597
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .registers 6

    .line 1610
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 1623
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([SS)Z
    .registers 4

    .line 1636
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .registers 4

    .line 1514
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 1649
    if-eqz p0, :cond_0

    .line 1650
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 1651
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 1652
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1655
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static get([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    .line 1668
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->get([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)TT;"
        }
    .end annotation

    .line 1682
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayIndexValid([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object p2, p0, p1

    :cond_0
    return-object p2
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 2

    .line 1707
    if-nez p0, :cond_0

    .line 1708
    const/4 v0, 0x0

    .line 1710
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2

    .line 1722
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .registers 3

    .line 2307
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .registers 5

    const/4 v0, -0x1

    .line 2325
    if-nez p0, :cond_1

    move p2, v0

    .line 2336
    :cond_0
    :goto_0
    return p2

    .line 2328
    :cond_1
    if-gez p2, :cond_2

    .line 2329
    const/4 p2, 0x0

    .line 2331
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2332
    aget-byte v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2331
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2336
    goto :goto_0
.end method

.method public static indexOf([CC)I
    .registers 3

    .line 2353
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .registers 5

    const/4 v0, -0x1

    .line 2372
    if-nez p0, :cond_1

    move p2, v0

    .line 2383
    :cond_0
    :goto_0
    return p2

    .line 2375
    :cond_1
    if-gez p2, :cond_2

    .line 2376
    const/4 p2, 0x0

    .line 2378
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2379
    aget-char v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2378
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2383
    goto :goto_0
.end method

.method public static indexOf([DD)I
    .registers 4

    .line 2399
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .registers 12

    .line 2416
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .registers 9

    const/4 v0, -0x1

    .line 2434
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    move p3, v0

    .line 2447
    :cond_0
    :goto_0
    return p3

    .line 2437
    :cond_1
    if-gez p3, :cond_2

    .line 2438
    const/4 p3, 0x0

    .line 2440
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    .line 2441
    :goto_1
    array-length v2, p0

    if-ge p3, v2, :cond_4

    .line 2442
    aget-wide v2, p0, p3

    .line 2443
    cmpl-double v4, p1, v2

    if-eqz v4, :cond_0

    if-eqz v1, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2441
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    move p3, v0

    .line 2447
    goto :goto_0
.end method

.method public static indexOf([DDID)I
    .registers 12

    const/4 v0, -0x1

    .line 2468
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    move p3, v0

    .line 2481
    :cond_0
    :goto_0
    return p3

    .line 2471
    :cond_1
    if-gez p3, :cond_2

    .line 2472
    const/4 p3, 0x0

    .line 2474
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p3, v1, :cond_4

    .line 2477
    aget-wide v2, p0, p3

    sub-double v4, p1, p4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_3

    aget-wide v2, p0, p3

    add-double v4, p1, p4

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    .line 2476
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    move p3, v0

    .line 2481
    goto :goto_0
.end method

.method public static indexOf([FF)I
    .registers 3

    .line 2497
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .registers 7

    const/4 v0, -0x1

    .line 2515
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    .line 2528
    :cond_0
    :goto_0
    return p2

    .line 2518
    :cond_1
    if-gez p2, :cond_2

    .line 2519
    const/4 p2, 0x0

    .line 2521
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    .line 2522
    :goto_1
    array-length v2, p0

    if-ge p2, v2, :cond_4

    .line 2523
    aget v2, p0, p2

    .line 2524
    cmpl-float v3, p1, v2

    if-eqz v3, :cond_0

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2522
    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    move p2, v0

    .line 2528
    goto :goto_0
.end method

.method public static indexOf([II)I
    .registers 3

    .line 2544
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .registers 5

    const/4 v0, -0x1

    .line 2562
    if-nez p0, :cond_1

    move p2, v0

    .line 2573
    :cond_0
    :goto_0
    return p2

    .line 2565
    :cond_1
    if-gez p2, :cond_2

    .line 2566
    const/4 p2, 0x0

    .line 2568
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2569
    aget v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2568
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2573
    goto :goto_0
.end method

.method public static indexOf([JJ)I
    .registers 4

    .line 2589
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .registers 9

    const/4 v0, -0x1

    .line 2607
    if-nez p0, :cond_1

    move p3, v0

    .line 2618
    :cond_0
    :goto_0
    return p3

    .line 2610
    :cond_1
    if-gez p3, :cond_2

    .line 2611
    const/4 p3, 0x0

    .line 2613
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p3, v1, :cond_3

    .line 2614
    aget-wide v2, p0, p3

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 2613
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    move p3, v0

    .line 2618
    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 2634
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6

    const/4 v1, -0x1

    .line 2652
    if-nez p0, :cond_1

    move v0, v1

    .line 2671
    :cond_0
    :goto_0
    return v0

    .line 2655
    :cond_1
    if-gez p2, :cond_5

    .line 2656
    const/4 v0, 0x0

    .line 2658
    :goto_1
    if-nez p1, :cond_3

    .line 2659
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 2660
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 2659
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2665
    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 2666
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2671
    goto :goto_0

    :cond_5
    move v0, p2

    goto :goto_1
.end method

.method public static indexOf([SS)I
    .registers 3

    .line 2687
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .registers 5

    const/4 v0, -0x1

    .line 2705
    if-nez p0, :cond_1

    move p2, v0

    .line 2716
    :cond_0
    :goto_0
    return p2

    .line 2708
    :cond_1
    if-gez p2, :cond_2

    .line 2709
    const/4 p2, 0x0

    .line 2711
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2712
    aget-short v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2711
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2716
    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .registers 3

    .line 2261
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .registers 5

    const/4 v0, -0x1

    .line 2280
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    .line 2291
    :cond_0
    :goto_0
    return p2

    .line 2283
    :cond_1
    if-gez p2, :cond_2

    .line 2284
    const/4 p2, 0x0

    .line 2286
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2287
    aget-boolean v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2286
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2291
    goto :goto_0
.end method

.method public static indexesOf([BB)Ljava/util/BitSet;
    .registers 3

    .line 1789
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([BBI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([BBI)Ljava/util/BitSet;
    .registers 6

    .line 1808
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1810
    if-nez p0, :cond_2

    .line 1825
    :cond_0
    :goto_0
    return-object v0

    .line 1821
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1822
    add-int/lit8 p2, v1, 0x1

    .line 1814
    :cond_2
    array-length v1, p0

    if-ge p2, v1, :cond_0

    .line 1815
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v1

    .line 1817
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static indexesOf([CC)Ljava/util/BitSet;
    .registers 3

    .line 1840
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([CCI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([CCI)Ljava/util/BitSet;
    .registers 6

    .line 1859
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1861
    if-nez p0, :cond_2

    .line 1876
    :cond_0
    :goto_0
    return-object v0

    .line 1872
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1873
    add-int/lit8 p2, v1, 0x1

    .line 1865
    :cond_2
    array-length v1, p0

    if-ge p2, v1, :cond_0

    .line 1866
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v1

    .line 1868
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static indexesOf([DD)Ljava/util/BitSet;
    .registers 4

    .line 1891
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([DDI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([DDD)Ljava/util/BitSet;
    .registers 12

    .line 1912
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([DDID)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([DDI)Ljava/util/BitSet;
    .registers 7

    .line 1931
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1933
    if-nez p0, :cond_2

    .line 1948
    :cond_0
    :goto_0
    return-object v0

    .line 1944
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1945
    add-int/lit8 p3, v1, 0x1

    .line 1937
    :cond_2
    array-length v1, p0

    if-ge p3, v1, :cond_0

    .line 1938
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v1

    .line 1940
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static indexesOf([DDID)Ljava/util/BitSet;
    .registers 13

    .line 1973
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 1975
    if-nez p0, :cond_2

    move-object v0, v6

    .line 1990
    :goto_0
    return-object v0

    .line 1986
    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 1987
    add-int/lit8 v3, v0, 0x1

    .line 1979
    :goto_1
    array-length v0, p0

    if-ge v3, v0, :cond_1

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p4

    .line 1980
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    .line 1982
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :cond_1
    move-object v0, v6

    .line 1990
    goto :goto_0

    :cond_2
    move v3, p3

    goto :goto_1
.end method

.method public static indexesOf([FF)Ljava/util/BitSet;
    .registers 3

    .line 2005
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([FFI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([FFI)Ljava/util/BitSet;
    .registers 6

    .line 2024
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2026
    if-nez p0, :cond_2

    .line 2041
    :cond_0
    :goto_0
    return-object v0

    .line 2037
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2038
    add-int/lit8 p2, v1, 0x1

    .line 2030
    :cond_2
    array-length v1, p0

    if-ge p2, v1, :cond_0

    .line 2031
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v1

    .line 2033
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static indexesOf([II)Ljava/util/BitSet;
    .registers 3

    .line 2056
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([III)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([III)Ljava/util/BitSet;
    .registers 6

    .line 2075
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2077
    if-nez p0, :cond_2

    .line 2092
    :cond_0
    :goto_0
    return-object v0

    .line 2088
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2089
    add-int/lit8 p2, v1, 0x1

    .line 2081
    :cond_2
    array-length v1, p0

    if-ge p2, v1, :cond_0

    .line 2082
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v1

    .line 2084
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static indexesOf([JJ)Ljava/util/BitSet;
    .registers 4

    .line 2107
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([JJI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([JJI)Ljava/util/BitSet;
    .registers 7

    .line 2126
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2128
    if-nez p0, :cond_2

    .line 2143
    :cond_0
    :goto_0
    return-object v0

    .line 2139
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2140
    add-int/lit8 p3, v1, 0x1

    .line 2132
    :cond_2
    array-length v1, p0

    if-ge p3, v1, :cond_0

    .line 2133
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v1

    .line 2135
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static indexesOf([Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/BitSet;
    .registers 3

    .line 2158
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/BitSet;
    .registers 6

    .line 2177
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2179
    if-nez p0, :cond_2

    .line 2194
    :cond_0
    :goto_0
    return-object v0

    .line 2190
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2191
    add-int/lit8 p2, v1, 0x1

    .line 2183
    :cond_2
    array-length v1, p0

    if-ge p2, v1, :cond_0

    .line 2184
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v1

    .line 2186
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static indexesOf([SS)Ljava/util/BitSet;
    .registers 3

    .line 2209
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([SSI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([SSI)Ljava/util/BitSet;
    .registers 6

    .line 2228
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2230
    if-nez p0, :cond_2

    .line 2245
    :cond_0
    :goto_0
    return-object v0

    .line 2241
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2242
    add-int/lit8 p2, v1, 0x1

    .line 2234
    :cond_2
    array-length v1, p0

    if-ge p2, v1, :cond_0

    .line 2235
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v1

    .line 2237
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static indexesOf([ZZ)Ljava/util/BitSet;
    .registers 3

    .line 1737
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([ZZI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([ZZI)Ljava/util/BitSet;
    .registers 6

    .line 1757
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1759
    if-nez p0, :cond_2

    .line 1774
    :cond_0
    :goto_0
    return-object v0

    .line 1770
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1771
    add-int/lit8 p2, v1, 0x1

    .line 1763
    :cond_2
    array-length v1, p0

    if-ge p2, v1, :cond_0

    .line 1764
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v1

    .line 1766
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static varargs insert(I[B[B)[B
    .registers 6

    const/4 v2, 0x0

    .line 2781
    if-nez p1, :cond_1

    .line 2782
    const/4 v0, 0x0

    .line 2800
    :cond_0
    :goto_0
    return-object v0

    .line 2784
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2785
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 2787
    :cond_2
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2791
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2793
    array-length v1, p2

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2794
    if-lez p0, :cond_3

    .line 2795
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2797
    :cond_3
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 2798
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2788
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs insert(I[C[C)[C
    .registers 6

    const/4 v2, 0x0

    .line 2823
    if-nez p1, :cond_1

    .line 2824
    const/4 v0, 0x0

    .line 2842
    :cond_0
    :goto_0
    return-object v0

    .line 2826
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2827
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    .line 2829
    :cond_2
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2833
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 2835
    array-length v1, p2

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2836
    if-lez p0, :cond_3

    .line 2837
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2839
    :cond_3
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 2840
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2830
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs insert(I[D[D)[D
    .registers 6

    const/4 v2, 0x0

    .line 2865
    if-nez p1, :cond_1

    .line 2866
    const/4 v0, 0x0

    .line 2884
    :cond_0
    :goto_0
    return-object v0

    .line 2868
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2869
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    .line 2871
    :cond_2
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2875
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 2877
    array-length v1, p2

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2878
    if-lez p0, :cond_3

    .line 2879
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2881
    :cond_3
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 2882
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2872
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs insert(I[F[F)[F
    .registers 6

    const/4 v2, 0x0

    .line 2907
    if-nez p1, :cond_1

    .line 2908
    const/4 v0, 0x0

    .line 2926
    :cond_0
    :goto_0
    return-object v0

    .line 2910
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2911
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    .line 2913
    :cond_2
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2917
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 2919
    array-length v1, p2

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2920
    if-lez p0, :cond_3

    .line 2921
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2923
    :cond_3
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 2924
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2914
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs insert(I[I[I)[I
    .registers 6

    const/4 v2, 0x0

    .line 2949
    if-nez p1, :cond_1

    .line 2950
    const/4 v0, 0x0

    .line 2968
    :cond_0
    :goto_0
    return-object v0

    .line 2952
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2953
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    .line 2955
    :cond_2
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2959
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 2961
    array-length v1, p2

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2962
    if-lez p0, :cond_3

    .line 2963
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2965
    :cond_3
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 2966
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2956
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs insert(I[J[J)[J
    .registers 6

    const/4 v2, 0x0

    .line 2991
    if-nez p1, :cond_1

    .line 2992
    const/4 v0, 0x0

    .line 3010
    :cond_0
    :goto_0
    return-object v0

    .line 2994
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2995
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    .line 2997
    :cond_2
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 3001
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 3003
    array-length v1, p2

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3004
    if-lez p0, :cond_3

    .line 3005
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3007
    :cond_3
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 3008
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2998
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs insert(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v3, 0x0

    .line 3085
    if-nez p1, :cond_1

    .line 3086
    const/4 v0, 0x0

    .line 3107
    :cond_0
    :goto_0
    return-object v0

    .line 3088
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3089
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3091
    :cond_2
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 3095
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 3098
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 3100
    array-length v1, p2

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3101
    if-lez p0, :cond_3

    .line 3102
    invoke-static {p1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3104
    :cond_3
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 3105
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3092
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs insert(I[S[S)[S
    .registers 6

    const/4 v2, 0x0

    .line 3033
    if-nez p1, :cond_1

    .line 3034
    const/4 v0, 0x0

    .line 3052
    :cond_0
    :goto_0
    return-object v0

    .line 3036
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3037
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    .line 3039
    :cond_2
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 3043
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 3045
    array-length v1, p2

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3046
    if-lez p0, :cond_3

    .line 3047
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3049
    :cond_3
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 3050
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3040
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs insert(I[Z[Z)[Z
    .registers 6

    const/4 v2, 0x0

    .line 2739
    if-nez p1, :cond_1

    .line 2740
    const/4 v0, 0x0

    .line 2758
    :cond_0
    :goto_0
    return-object v0

    .line 2742
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2743
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    .line 2745
    :cond_2
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2749
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 2751
    array-length v1, p2

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2752
    if-lez p0, :cond_3

    .line 2753
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2755
    :cond_3
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 2756
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2746
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isArrayIndexValid([Ljava/lang/Object;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)Z"
        }
    .end annotation

    .line 3126
    if-ltz p1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .registers 2

    .line 3148
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([C)Z
    .registers 2

    .line 3162
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([D)Z
    .registers 2

    .line 3173
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([F)Z
    .registers 2

    .line 3184
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .registers 2

    .line 3195
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .registers 2

    .line 3208
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 2

    .line 3220
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([S)Z
    .registers 2

    .line 3231
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .registers 2

    .line 3137
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3248
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .registers 2

    .line 3270
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([C)Z
    .registers 2

    .line 3281
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([D)Z
    .registers 2

    .line 3292
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([F)Z
    .registers 2

    .line 3303
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([I)Z
    .registers 2

    .line 3314
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([J)Z
    .registers 2

    .line 3325
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 3349
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([S)Z
    .registers 2

    .line 3336
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([Z)Z
    .registers 2

    .line 3259
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSameLength(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 3456
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([B[B)Z
    .registers 4

    .line 3375
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([C[C)Z
    .registers 4

    .line 3388
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([D[D)Z
    .registers 4

    .line 3401
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([F[F)Z
    .registers 4

    .line 3414
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([I[I)Z
    .registers 4

    .line 3427
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([J[J)Z
    .registers 4

    .line 3440
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 4

    .line 3472
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([S[S)Z
    .registers 4

    .line 3485
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([Z[Z)Z
    .registers 4

    .line 3362
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 3498
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3501
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3499
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSorted([B)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3538
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3552
    :cond_1
    :goto_0
    return v0

    .line 3542
    :cond_2
    aget-byte v3, p0, v0

    .line 3543
    array-length v5, p0

    move v2, v1

    .line 3544
    :goto_1
    if-ge v2, v5, :cond_3

    .line 3545
    aget-byte v4, p0, v2

    .line 3546
    invoke-static {v3, v4}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(BB)I

    move-result v3

    if-gtz v3, :cond_1

    .line 3544
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3552
    goto :goto_0
.end method

.method public static isSorted([C)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3563
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3577
    :cond_1
    :goto_0
    return v0

    .line 3567
    :cond_2
    aget-char v3, p0, v0

    .line 3568
    array-length v5, p0

    move v2, v1

    .line 3569
    :goto_1
    if-ge v2, v5, :cond_3

    .line 3570
    aget-char v4, p0, v2

    .line 3571
    invoke-static {v3, v4}, Lorg/apache/commons/lang3/CharUtils;->compare(CC)I

    move-result v3

    if-gtz v3, :cond_1

    .line 3569
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3577
    goto :goto_0
.end method

.method public static isSorted([D)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3588
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3602
    :cond_1
    :goto_0
    return v0

    .line 3592
    :cond_2
    aget-wide v4, p0, v0

    .line 3593
    array-length v3, p0

    move v2, v1

    .line 3594
    :goto_1
    if-ge v2, v3, :cond_3

    .line 3595
    aget-wide v6, p0, v2

    .line 3596
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-gtz v4, :cond_1

    .line 3594
    add-int/lit8 v2, v2, 0x1

    move-wide v4, v6

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3602
    goto :goto_0
.end method

.method public static isSorted([F)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3613
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3627
    :cond_1
    :goto_0
    return v0

    .line 3617
    :cond_2
    aget v3, p0, v0

    .line 3618
    array-length v5, p0

    move v2, v1

    .line 3619
    :goto_1
    if-ge v2, v5, :cond_3

    .line 3620
    aget v4, p0, v2

    .line 3621
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gtz v3, :cond_1

    .line 3619
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3627
    goto :goto_0
.end method

.method public static isSorted([I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3638
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3652
    :cond_1
    :goto_0
    return v0

    .line 3642
    :cond_2
    aget v2, p0, v0

    .line 3643
    array-length v5, p0

    move v4, v1

    .line 3644
    :goto_1
    if-ge v4, v5, :cond_3

    .line 3645
    aget v3, p0, v4

    .line 3646
    invoke-static {v2, v3}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(II)I

    move-result v2

    if-gtz v2, :cond_1

    .line 3644
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3652
    goto :goto_0
.end method

.method public static isSorted([J)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3663
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3677
    :cond_1
    :goto_0
    return v0

    .line 3667
    :cond_2
    aget-wide v2, p0, v0

    .line 3668
    array-length v7, p0

    move v6, v1

    .line 3669
    :goto_1
    if-ge v6, v7, :cond_3

    .line 3670
    aget-wide v4, p0, v6

    .line 3671
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(JJ)I

    move-result v2

    if-gtz v2, :cond_1

    .line 3669
    add-int/lit8 v6, v6, 0x1

    move-wide v2, v4

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3677
    goto :goto_0
.end method

.method public static isSorted([Ljava/lang/Comparable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)Z"
        }
    .end annotation

    .line 3715
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda0;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method public static isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3728
    if-eqz p1, :cond_4

    .line 3732
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3746
    :cond_1
    :goto_0
    return v0

    .line 3736
    :cond_2
    aget-object v2, p0, v0

    .line 3737
    array-length v5, p0

    move v4, v1

    .line 3738
    :goto_1
    if-ge v4, v5, :cond_3

    .line 3739
    aget-object v3, p0, v4

    .line 3740
    invoke-interface {p1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 3738
    add-int/lit8 v4, v4, 0x1

    move-object v2, v3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3746
    goto :goto_0

    .line 3729
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparator should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSorted([S)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3688
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3702
    :cond_1
    :goto_0
    return v0

    .line 3692
    :cond_2
    aget-short v3, p0, v0

    .line 3693
    array-length v5, p0

    move v2, v1

    .line 3694
    :goto_1
    if-ge v2, v5, :cond_3

    .line 3695
    aget-short v4, p0, v2

    .line 3696
    invoke-static {v3, v4}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(SS)I

    move-result v3

    if-gtz v3, :cond_1

    .line 3694
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3702
    goto :goto_0
.end method

.method public static isSorted([Z)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3513
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3527
    :cond_1
    :goto_0
    return v0

    .line 3517
    :cond_2
    aget-boolean v2, p0, v0

    .line 3518
    array-length v5, p0

    move v4, v1

    .line 3519
    :goto_1
    if-ge v4, v5, :cond_3

    .line 3520
    aget-boolean v3, p0, v4

    .line 3521
    invoke-static {v2, v3}, Lorg/apache/commons/lang3/BooleanUtils;->compare(ZZ)I

    move-result v2

    if-gtz v2, :cond_1

    .line 3519
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3527
    goto :goto_0
.end method

.method public static lastIndexOf([BB)I
    .registers 3

    .line 3806
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .registers 6

    const/4 v0, -0x1

    .line 3824
    if-nez p0, :cond_1

    .line 3837
    :cond_0
    :goto_0
    return v0

    .line 3827
    :cond_1
    if-ltz p2, :cond_0

    .line 3829
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 3830
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_2
    move v1, p2

    .line 3832
    :goto_1
    if-ltz v1, :cond_0

    .line 3833
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 3834
    goto :goto_0

    .line 3832
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([CC)I
    .registers 3

    .line 3852
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .registers 6

    const/4 v0, -0x1

    .line 3871
    if-nez p0, :cond_1

    .line 3884
    :cond_0
    :goto_0
    return v0

    .line 3874
    :cond_1
    if-ltz p2, :cond_0

    .line 3876
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 3877
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_2
    move v1, p2

    .line 3879
    :goto_1
    if-ltz v1, :cond_0

    .line 3880
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 3881
    goto :goto_0

    .line 3879
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([DD)I
    .registers 4

    .line 3898
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .registers 12

    .line 3915
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .registers 9

    const/4 v0, -0x1

    .line 3933
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3946
    :cond_0
    :goto_0
    return v0

    .line 3936
    :cond_1
    if-ltz p3, :cond_0

    .line 3938
    array-length v1, p0

    if-lt p3, v1, :cond_3

    .line 3939
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 3941
    :goto_1
    if-ltz v1, :cond_0

    .line 3942
    aget-wide v2, p0, v1

    cmpl-double v2, p1, v2

    if-nez v2, :cond_2

    move v0, v1

    .line 3943
    goto :goto_0

    .line 3941
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p3

    goto :goto_1
.end method

.method public static lastIndexOf([DDID)I
    .registers 12

    const/4 v0, -0x1

    .line 3967
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3982
    :cond_0
    :goto_0
    return v0

    .line 3970
    :cond_1
    if-ltz p3, :cond_0

    .line 3972
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 3973
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    :cond_2
    move v1, p3

    .line 3975
    :goto_1
    if-ltz v1, :cond_0

    .line 3978
    aget-wide v2, p0, v1

    sub-double v4, p1, p4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    aget-wide v2, p0, v1

    add-double v4, p1, p4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    move v0, v1

    .line 3979
    goto :goto_0

    .line 3977
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([FF)I
    .registers 3

    .line 3996
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .registers 6

    const/4 v0, -0x1

    .line 4015
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4028
    :cond_0
    :goto_0
    return v0

    .line 4018
    :cond_1
    if-ltz p2, :cond_0

    .line 4020
    array-length v1, p0

    if-lt p2, v1, :cond_3

    .line 4021
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 4023
    :goto_1
    if-ltz v1, :cond_0

    .line 4024
    aget v2, p0, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    move v0, v1

    .line 4025
    goto :goto_0

    .line 4023
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([II)I
    .registers 3

    .line 4042
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .registers 6

    const/4 v0, -0x1

    .line 4060
    if-nez p0, :cond_1

    .line 4073
    :cond_0
    :goto_0
    return v0

    .line 4063
    :cond_1
    if-ltz p2, :cond_0

    .line 4065
    array-length v1, p0

    if-lt p2, v1, :cond_3

    .line 4066
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 4068
    :goto_1
    if-ltz v1, :cond_0

    .line 4069
    aget v2, p0, v1

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 4070
    goto :goto_0

    .line 4068
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([JJ)I
    .registers 4

    .line 4087
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .registers 9

    const/4 v0, -0x1

    .line 4105
    if-nez p0, :cond_1

    .line 4118
    :cond_0
    :goto_0
    return v0

    .line 4108
    :cond_1
    if-ltz p3, :cond_0

    .line 4110
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 4111
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    :cond_2
    move v1, p3

    .line 4113
    :goto_1
    if-ltz v1, :cond_0

    .line 4114
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    move v0, v1

    .line 4115
    goto :goto_0

    .line 4113
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 4132
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6

    const/4 v0, -0x1

    .line 4150
    if-nez p0, :cond_1

    .line 4171
    :cond_0
    :goto_0
    return v0

    .line 4153
    :cond_1
    if-ltz p2, :cond_0

    .line 4155
    array-length v1, p0

    if-lt p2, v1, :cond_5

    .line 4156
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 4158
    :goto_1
    if-nez p1, :cond_3

    .line 4159
    :goto_2
    if-ltz v1, :cond_0

    .line 4160
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v0, v1

    .line 4161
    goto :goto_0

    .line 4159
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 4164
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4165
    :goto_3
    if-ltz v1, :cond_0

    .line 4166
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 4167
    goto :goto_0

    .line 4165
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([SS)I
    .registers 3

    .line 4185
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .registers 6

    const/4 v0, -0x1

    .line 4203
    if-nez p0, :cond_1

    .line 4216
    :cond_0
    :goto_0
    return v0

    .line 4206
    :cond_1
    if-ltz p2, :cond_0

    .line 4208
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 4209
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_2
    move v1, p2

    .line 4211
    :goto_1
    if-ltz v1, :cond_0

    .line 4212
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 4213
    goto :goto_0

    .line 4211
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([ZZ)I
    .registers 3

    .line 3761
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .registers 6

    const/4 v0, -0x1

    .line 3779
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3792
    :cond_0
    :goto_0
    return v0

    .line 3782
    :cond_1
    if-ltz p2, :cond_0

    .line 3784
    array-length v1, p0

    if-lt p2, v1, :cond_3

    .line 3785
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 3787
    :goto_1
    if-ltz v1, :cond_0

    .line 3788
    aget-boolean v2, p0, v1

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 3789
    goto :goto_0

    .line 3787
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public static nullToEmpty([B)[B
    .registers 2

    .line 4273
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4274
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 4276
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .registers 2

    .line 4313
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4314
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 4316
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .registers 2

    .line 4373
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4374
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 4376
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .registers 2

    .line 4413
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4414
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 4416
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .registers 2

    .line 4453
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4454
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 4456
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .registers 2

    .line 4496
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4497
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 4499
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .registers 2

    .line 4253
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4254
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 4256
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .registers 2

    .line 4293
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4294
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 4296
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .registers 2

    .line 4333
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4334
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 4336
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 4353
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4354
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 4356
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .registers 2

    .line 4393
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4394
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 4396
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .registers 2

    .line 4433
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4434
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 4436
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .registers 2

    .line 4473
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4474
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 4476
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .registers 2

    .line 4516
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4517
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 4519
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    .line 4536
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4537
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 4539
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class",
            "<[TT;>;)[TT;"
        }
    .end annotation

    .line 4618
    if-eqz p1, :cond_1

    .line 4622
    if-nez p0, :cond_0

    .line 4623
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 4625
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0

    .line 4619
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .registers 2

    .line 4576
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4577
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 4579
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 4596
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4597
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 4599
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .registers 2

    .line 4556
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4557
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 4559
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .registers 2

    .line 4233
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4234
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 4236
    :cond_0
    return-object p0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    const/4 v3, 0x0

    .line 4874
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 4875
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 4879
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 4880
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4881
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_0

    .line 4882
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4885
    :cond_0
    return-object v1

    .line 4876
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove([BI)[B
    .registers 3

    .line 4689
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .registers 3

    .line 4721
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .registers 3

    .line 4753
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .registers 3

    .line 4785
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .registers 3

    .line 4817
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .registers 3

    .line 4849
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 4951
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .registers 3

    .line 4917
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .registers 3

    .line 4657
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method static removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .registers 8

    const/4 v1, 0x0

    .line 5191
    if-nez p0, :cond_0

    .line 5192
    const/4 v0, 0x0

    .line 5220
    :goto_0
    return-object v0

    .line 5195
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 5202
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    .line 5203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sub-int v0, v4, v0

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 5208
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_1

    .line 5209
    sub-int v1, v5, v0

    .line 5210
    if-lez v1, :cond_3

    .line 5211
    invoke-static {p0, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5212
    add-int/2addr v1, v2

    .line 5214
    :goto_2
    invoke-virtual {p1, v5}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    move v2, v1

    goto :goto_1

    .line 5216
    :cond_1
    sub-int v1, v4, v0

    .line 5217
    if-lez v1, :cond_2

    .line 5218
    invoke-static {p0, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v0, v3

    .line 5220
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .registers 11

    const/4 v1, 0x0

    .line 5232
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 5234
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ArraySorter;->sort([I)[I

    move-result-object v6

    .line 5237
    invoke-static {v6}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5238
    array-length v3, v6

    move v4, v2

    move v0, v1

    .line 5240
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 5241
    aget v5, v6, v3

    .line 5242
    if-ltz v5, :cond_1

    if-ge v5, v2, :cond_1

    .line 5245
    if-ge v5, v4, :cond_0

    .line 5248
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    .line 5250
    goto :goto_0

    .line 5243
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v1

    .line 5254
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    sub-int v4, v2, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 5255
    if-ge v0, v2, :cond_6

    .line 5257
    sub-int v0, v2, v0

    .line 5258
    array-length v3, v6

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_1
    if-ltz v4, :cond_5

    .line 5259
    aget v3, v6, v4

    .line 5260
    sub-int v7, v2, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    .line 5261
    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 5262
    sub-int/2addr v0, v2

    .line 5263
    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5258
    :cond_4
    add-int/lit8 v4, v4, -0x1

    move v2, v3

    goto :goto_1

    .line 5268
    :cond_5
    if-lez v2, :cond_6

    .line 5269
    invoke-static {p0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5272
    :cond_6
    return-object v5
.end method

.method public static varargs removeAll([B[I)[B
    .registers 3

    .line 5013
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .registers 3

    .line 5046
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .registers 3

    .line 5079
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .registers 3

    .line 5112
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .registers 3

    .line 5145
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .registers 3

    .line 5178
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .line 5336
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .registers 3

    .line 5305
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .registers 3

    .line 4980
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeAllOccurences([BB)[B
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5378
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([BB)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static removeAllOccurences([CC)[C
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5399
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([CC)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static removeAllOccurences([DD)[D
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5420
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([DD)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static removeAllOccurences([FF)[F
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5441
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([FF)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static removeAllOccurences([II)[I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5462
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([II)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static removeAllOccurences([JJ)[J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5483
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([JJ)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static removeAllOccurences([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5526
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static removeAllOccurences([SS)[S
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5504
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([SS)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static removeAllOccurences([ZZ)[Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5357
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([ZZ)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeAllOccurrences([BB)[B
    .registers 3

    .line 5564
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([BB)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static removeAllOccurrences([CC)[C
    .registers 3

    .line 5583
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([CC)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static removeAllOccurrences([DD)[D
    .registers 4

    .line 5602
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([DD)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static removeAllOccurrences([FF)[F
    .registers 3

    .line 5621
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([FF)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static removeAllOccurrences([II)[I
    .registers 3

    .line 5640
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([II)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static removeAllOccurrences([JJ)[J
    .registers 4

    .line 5659
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([JJ)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static removeAllOccurrences([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 5698
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static removeAllOccurrences([SS)[S
    .registers 3

    .line 5678
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([SS)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static removeAllOccurrences([ZZ)[Z
    .registers 3

    .line 5545
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([ZZ)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .registers 4

    .line 5760
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 5761
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5762
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 5764
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([CC)[C
    .registers 4

    .line 5793
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 5794
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5795
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 5797
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([DD)[D
    .registers 6

    .line 5826
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 5827
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5828
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 5830
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([FF)[F
    .registers 4

    .line 5859
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 5860
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5861
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 5863
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([II)[I
    .registers 4

    .line 5892
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 5893
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5894
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 5896
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([JJ)[J
    .registers 6

    .line 5925
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 5926
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5927
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 5929
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .line 5992
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 5993
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5994
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 5996
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([SS)[S
    .registers 4

    .line 5958
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 5959
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5960
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 5962
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([ZZ)[Z
    .registers 4

    .line 5727
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 5728
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5729
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 5731
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs removeElements([B[B)[B
    .registers 9

    const/4 v1, 0x0

    .line 6082
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6083
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 6106
    :goto_0
    return-object v0

    .line 6085
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6086
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-byte v0, p1, v2

    .line 6087
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 6088
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6089
    if-nez v0, :cond_2

    .line 6090
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6086
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6092
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6095
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 6096
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_6

    .line 6097
    aget-byte v4, p0, v1

    .line 6098
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6099
    if-eqz v0, :cond_5

    .line 6100
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 6101
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6103
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 6096
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6106
    :cond_6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public static varargs removeElements([C[C)[C
    .registers 9

    const/4 v1, 0x0

    .line 6137
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6138
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 6161
    :goto_0
    return-object v0

    .line 6140
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6141
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-char v0, p1, v2

    .line 6142
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 6143
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6144
    if-nez v0, :cond_2

    .line 6145
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6141
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6147
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6150
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 6151
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_6

    .line 6152
    aget-char v4, p0, v1

    .line 6153
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6154
    if-eqz v0, :cond_5

    .line 6155
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 6156
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6158
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 6151
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6161
    :cond_6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public static varargs removeElements([D[D)[D
    .registers 10

    const/4 v1, 0x0

    .line 6192
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6193
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 6216
    :goto_0
    return-object v0

    .line 6195
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6196
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-wide v6, p1, v2

    .line 6197
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 6198
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6199
    if-nez v0, :cond_2

    .line 6200
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6196
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6202
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6205
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 6206
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_6

    .line 6207
    aget-wide v4, p0, v1

    .line 6208
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6209
    if-eqz v0, :cond_5

    .line 6210
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 6211
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6213
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 6206
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6216
    :cond_6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public static varargs removeElements([F[F)[F
    .registers 9

    const/4 v1, 0x0

    .line 6247
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6248
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 6271
    :goto_0
    return-object v0

    .line 6250
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6251
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget v0, p1, v2

    .line 6252
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 6253
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6254
    if-nez v0, :cond_2

    .line 6255
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6251
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6257
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6260
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 6261
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_6

    .line 6262
    aget v4, p0, v1

    .line 6263
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6264
    if-eqz v0, :cond_5

    .line 6265
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 6266
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6268
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 6261
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6271
    :cond_6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0
.end method

.method public static varargs removeElements([I[I)[I
    .registers 9

    const/4 v1, 0x0

    .line 6302
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6303
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 6326
    :goto_0
    return-object v0

    .line 6305
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6306
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget v0, p1, v2

    .line 6307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6308
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6309
    if-nez v0, :cond_2

    .line 6310
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6306
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6312
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6315
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 6316
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_6

    .line 6317
    aget v4, p0, v1

    .line 6318
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6319
    if-eqz v0, :cond_5

    .line 6320
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 6321
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6323
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 6316
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6326
    :cond_6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static varargs removeElements([J[J)[J
    .registers 10

    const/4 v1, 0x0

    .line 6357
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6358
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 6381
    :goto_0
    return-object v0

    .line 6360
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6361
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-wide v6, p1, v2

    .line 6362
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 6363
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6364
    if-nez v0, :cond_2

    .line 6365
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6361
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6367
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6370
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 6371
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_6

    .line 6372
    aget-wide v4, p0, v1

    .line 6373
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6374
    if-eqz v0, :cond_5

    .line 6375
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 6376
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6378
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 6371
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6381
    :cond_6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v1, 0x0

    .line 6469
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6470
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 6494
    :goto_0
    return-object v0

    .line 6472
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6473
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p1, v2

    .line 6474
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6475
    if-nez v0, :cond_2

    .line 6476
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6473
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6478
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6481
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 6482
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_6

    .line 6483
    aget-object v4, p0, v1

    .line 6484
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6485
    if-eqz v0, :cond_5

    .line 6486
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 6487
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6489
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 6482
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6493
    :cond_6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static varargs removeElements([S[S)[S
    .registers 9

    const/4 v1, 0x0

    .line 6412
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6413
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 6436
    :goto_0
    return-object v0

    .line 6415
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6416
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-short v0, p1, v2

    .line 6417
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 6418
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6419
    if-nez v0, :cond_2

    .line 6420
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6416
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6422
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6425
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 6426
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_6

    .line 6427
    aget-short v4, p0, v1

    .line 6428
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6429
    if-eqz v0, :cond_5

    .line 6430
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 6431
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6433
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 6426
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6436
    :cond_6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0
.end method

.method public static varargs removeElements([Z[Z)[Z
    .registers 9

    const/4 v1, 0x0

    .line 6027
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6028
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 6051
    :goto_0
    return-object v0

    .line 6030
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6031
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-boolean v0, p1, v2

    .line 6032
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6033
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6034
    if-nez v0, :cond_2

    .line 6035
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6031
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6037
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6040
    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 6041
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_6

    .line 6042
    aget-boolean v4, p0, v1

    .line 6043
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6044
    if-eqz v0, :cond_5

    .line 6045
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 6046
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6048
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 6041
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6051
    :cond_6
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static reverse([B)V
    .registers 3

    .line 6552
    if-nez p0, :cond_0

    .line 6556
    :goto_0
    return-void

    .line 6555
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([BII)V

    goto :goto_0
.end method

.method public static reverse([BII)V
    .registers 7

    .line 6576
    if-nez p0, :cond_1

    .line 6589
    :cond_0
    return-void

    .line 6579
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6580
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6582
    :goto_0
    if-le v0, v1, :cond_0

    .line 6583
    aget-byte v2, p0, v0

    .line 6584
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 6585
    aput-byte v2, p0, v1

    .line 6586
    add-int/lit8 v0, v0, -0x1

    .line 6587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([C)V
    .registers 3

    .line 6599
    if-nez p0, :cond_0

    .line 6603
    :goto_0
    return-void

    .line 6602
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([CII)V

    goto :goto_0
.end method

.method public static reverse([CII)V
    .registers 7

    .line 6623
    if-nez p0, :cond_1

    .line 6636
    :cond_0
    return-void

    .line 6626
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6627
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6629
    :goto_0
    if-le v0, v1, :cond_0

    .line 6630
    aget-char v2, p0, v0

    .line 6631
    aget-char v3, p0, v1

    aput-char v3, p0, v0

    .line 6632
    aput-char v2, p0, v1

    .line 6633
    add-int/lit8 v0, v0, -0x1

    .line 6634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([D)V
    .registers 3

    .line 6646
    if-nez p0, :cond_0

    .line 6650
    :goto_0
    return-void

    .line 6649
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([DII)V

    goto :goto_0
.end method

.method public static reverse([DII)V
    .registers 9

    .line 6670
    if-nez p0, :cond_1

    .line 6683
    :cond_0
    return-void

    .line 6673
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6674
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6676
    :goto_0
    if-le v0, v1, :cond_0

    .line 6677
    aget-wide v2, p0, v0

    .line 6678
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 6679
    aput-wide v2, p0, v1

    .line 6680
    add-int/lit8 v0, v0, -0x1

    .line 6681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([F)V
    .registers 3

    .line 6693
    if-nez p0, :cond_0

    .line 6697
    :goto_0
    return-void

    .line 6696
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([FII)V

    goto :goto_0
.end method

.method public static reverse([FII)V
    .registers 7

    .line 6717
    if-nez p0, :cond_1

    .line 6730
    :cond_0
    return-void

    .line 6720
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6721
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6723
    :goto_0
    if-le v0, v1, :cond_0

    .line 6724
    aget v2, p0, v0

    .line 6725
    aget v3, p0, v1

    aput v3, p0, v0

    .line 6726
    aput v2, p0, v1

    .line 6727
    add-int/lit8 v0, v0, -0x1

    .line 6728
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([I)V
    .registers 3

    .line 6740
    if-nez p0, :cond_0

    .line 6744
    :goto_0
    return-void

    .line 6743
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([III)V

    goto :goto_0
.end method

.method public static reverse([III)V
    .registers 7

    .line 6764
    if-nez p0, :cond_1

    .line 6777
    :cond_0
    return-void

    .line 6767
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6768
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6770
    :goto_0
    if-le v0, v1, :cond_0

    .line 6771
    aget v2, p0, v0

    .line 6772
    aget v3, p0, v1

    aput v3, p0, v0

    .line 6773
    aput v2, p0, v1

    .line 6774
    add-int/lit8 v0, v0, -0x1

    .line 6775
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([J)V
    .registers 3

    .line 6787
    if-nez p0, :cond_0

    .line 6791
    :goto_0
    return-void

    .line 6790
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([JII)V

    goto :goto_0
.end method

.method public static reverse([JII)V
    .registers 9

    .line 6811
    if-nez p0, :cond_1

    .line 6824
    :cond_0
    return-void

    .line 6814
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6815
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6817
    :goto_0
    if-le v0, v1, :cond_0

    .line 6818
    aget-wide v2, p0, v0

    .line 6819
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 6820
    aput-wide v2, p0, v1

    .line 6821
    add-int/lit8 v0, v0, -0x1

    .line 6822
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .registers 3

    .line 6836
    if-nez p0, :cond_0

    .line 6840
    :goto_0
    return-void

    .line 6839
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;II)V
    .registers 7

    .line 6860
    if-nez p0, :cond_1

    .line 6873
    :cond_0
    return-void

    .line 6863
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6864
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6866
    :goto_0
    if-le v0, v1, :cond_0

    .line 6867
    aget-object v2, p0, v0

    .line 6868
    aget-object v3, p0, v1

    aput-object v3, p0, v0

    .line 6869
    aput-object v2, p0, v1

    .line 6870
    add-int/lit8 v0, v0, -0x1

    .line 6871
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([S)V
    .registers 3

    .line 6883
    if-nez p0, :cond_0

    .line 6887
    :goto_0
    return-void

    .line 6886
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([SII)V

    goto :goto_0
.end method

.method public static reverse([SII)V
    .registers 7

    .line 6907
    if-nez p0, :cond_1

    .line 6920
    :cond_0
    return-void

    .line 6910
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6911
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6913
    :goto_0
    if-le v0, v1, :cond_0

    .line 6914
    aget-short v2, p0, v0

    .line 6915
    aget-short v3, p0, v1

    aput-short v3, p0, v0

    .line 6916
    aput-short v2, p0, v1

    .line 6917
    add-int/lit8 v0, v0, -0x1

    .line 6918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([Z)V
    .registers 3

    .line 6505
    if-nez p0, :cond_0

    .line 6509
    :goto_0
    return-void

    .line 6508
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([ZII)V

    goto :goto_0
.end method

.method public static reverse([ZII)V
    .registers 7

    .line 6529
    if-nez p0, :cond_1

    .line 6542
    :cond_0
    return-void

    .line 6532
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6533
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6535
    :goto_0
    if-le v0, v1, :cond_0

    .line 6536
    aget-boolean v2, p0, v0

    .line 6537
    aget-boolean v3, p0, v1

    aput-boolean v3, p0, v0

    .line 6538
    aput-boolean v2, p0, v1

    .line 6539
    add-int/lit8 v0, v0, -0x1

    .line 6540
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static shift([BI)V
    .registers 4

    .line 7014
    if-nez p0, :cond_0

    .line 7018
    :goto_0
    return-void

    .line 7017
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([BIII)V

    goto :goto_0
.end method

.method public static shift([BIII)V
    .registers 10

    const/4 v5, 0x1

    .line 7040
    if-nez p0, :cond_1

    .line 7078
    :cond_0
    :goto_0
    return-void

    .line 7043
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 7046
    if-gez p1, :cond_2

    .line 7047
    const/4 p1, 0x0

    .line 7049
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 7050
    array-length p2, p0

    .line 7052
    :cond_3
    sub-int v3, p2, p1

    .line 7053
    if-le v3, v5, :cond_0

    .line 7056
    rem-int v1, p3, v3

    .line 7057
    if-gez v1, :cond_6

    .line 7058
    add-int/2addr v1, v3

    move v4, v3

    move v2, p1

    .line 7062
    :goto_1
    if-le v4, v5, :cond_0

    if-lez v1, :cond_0

    .line 7063
    sub-int v3, v4, v1

    .line 7065
    if-le v1, v3, :cond_4

    .line 7066
    add-int v0, v2, v4

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 7068
    sub-int v0, v1, v3

    move v3, v1

    :goto_2
    move v4, v3

    move v1, v0

    .line 7077
    goto :goto_1

    .line 7069
    :cond_4
    if-ge v1, v3, :cond_5

    .line 7070
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 7071
    add-int/2addr v2, v1

    move v0, v1

    .line 7072
    goto :goto_2

    .line 7074
    :cond_5
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v2, p1

    goto :goto_1
.end method

.method public static shift([CI)V
    .registers 4

    .line 7093
    if-nez p0, :cond_0

    .line 7097
    :goto_0
    return-void

    .line 7096
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([CIII)V

    goto :goto_0
.end method

.method public static shift([CIII)V
    .registers 10

    const/4 v5, 0x1

    .line 7119
    if-nez p0, :cond_1

    .line 7157
    :cond_0
    :goto_0
    return-void

    .line 7122
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 7125
    if-gez p1, :cond_2

    .line 7126
    const/4 p1, 0x0

    .line 7128
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 7129
    array-length p2, p0

    .line 7131
    :cond_3
    sub-int v3, p2, p1

    .line 7132
    if-le v3, v5, :cond_0

    .line 7135
    rem-int v1, p3, v3

    .line 7136
    if-gez v1, :cond_6

    .line 7137
    add-int/2addr v1, v3

    move v4, v3

    move v2, p1

    .line 7141
    :goto_1
    if-le v4, v5, :cond_0

    if-lez v1, :cond_0

    .line 7142
    sub-int v3, v4, v1

    .line 7144
    if-le v1, v3, :cond_4

    .line 7145
    add-int v0, v2, v4

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 7147
    sub-int v0, v1, v3

    move v3, v1

    :goto_2
    move v4, v3

    move v1, v0

    .line 7156
    goto :goto_1

    .line 7148
    :cond_4
    if-ge v1, v3, :cond_5

    .line 7149
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 7150
    add-int/2addr v2, v1

    move v0, v1

    .line 7151
    goto :goto_2

    .line 7153
    :cond_5
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v2, p1

    goto :goto_1
.end method

.method public static shift([DI)V
    .registers 4

    .line 7172
    if-nez p0, :cond_0

    .line 7176
    :goto_0
    return-void

    .line 7175
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([DIII)V

    goto :goto_0
.end method

.method public static shift([DIII)V
    .registers 10

    const/4 v5, 0x1

    .line 7198
    if-nez p0, :cond_1

    .line 7236
    :cond_0
    :goto_0
    return-void

    .line 7201
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 7204
    if-gez p1, :cond_2

    .line 7205
    const/4 p1, 0x0

    .line 7207
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 7208
    array-length p2, p0

    .line 7210
    :cond_3
    sub-int v3, p2, p1

    .line 7211
    if-le v3, v5, :cond_0

    .line 7214
    rem-int v1, p3, v3

    .line 7215
    if-gez v1, :cond_6

    .line 7216
    add-int/2addr v1, v3

    move v4, v3

    move v2, p1

    .line 7220
    :goto_1
    if-le v4, v5, :cond_0

    if-lez v1, :cond_0

    .line 7221
    sub-int v3, v4, v1

    .line 7223
    if-le v1, v3, :cond_4

    .line 7224
    add-int v0, v2, v4

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 7226
    sub-int v0, v1, v3

    move v3, v1

    :goto_2
    move v4, v3

    move v1, v0

    .line 7235
    goto :goto_1

    .line 7227
    :cond_4
    if-ge v1, v3, :cond_5

    .line 7228
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 7229
    add-int/2addr v2, v1

    move v0, v1

    .line 7230
    goto :goto_2

    .line 7232
    :cond_5
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v2, p1

    goto :goto_1
.end method

.method public static shift([FI)V
    .registers 4

    .line 7251
    if-nez p0, :cond_0

    .line 7255
    :goto_0
    return-void

    .line 7254
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([FIII)V

    goto :goto_0
.end method

.method public static shift([FIII)V
    .registers 10

    const/4 v5, 0x1

    .line 7277
    if-nez p0, :cond_1

    .line 7315
    :cond_0
    :goto_0
    return-void

    .line 7280
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 7283
    if-gez p1, :cond_2

    .line 7284
    const/4 p1, 0x0

    .line 7286
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 7287
    array-length p2, p0

    .line 7289
    :cond_3
    sub-int v3, p2, p1

    .line 7290
    if-le v3, v5, :cond_0

    .line 7293
    rem-int v1, p3, v3

    .line 7294
    if-gez v1, :cond_6

    .line 7295
    add-int/2addr v1, v3

    move v4, v3

    move v2, p1

    .line 7299
    :goto_1
    if-le v4, v5, :cond_0

    if-lez v1, :cond_0

    .line 7300
    sub-int v3, v4, v1

    .line 7302
    if-le v1, v3, :cond_4

    .line 7303
    add-int v0, v2, v4

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 7305
    sub-int v0, v1, v3

    move v3, v1

    :goto_2
    move v4, v3

    move v1, v0

    .line 7314
    goto :goto_1

    .line 7306
    :cond_4
    if-ge v1, v3, :cond_5

    .line 7307
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 7308
    add-int/2addr v2, v1

    move v0, v1

    .line 7309
    goto :goto_2

    .line 7311
    :cond_5
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v2, p1

    goto :goto_1
.end method

.method public static shift([II)V
    .registers 4

    .line 7330
    if-nez p0, :cond_0

    .line 7334
    :goto_0
    return-void

    .line 7333
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([IIII)V

    goto :goto_0
.end method

.method public static shift([IIII)V
    .registers 10

    const/4 v5, 0x1

    .line 7356
    if-nez p0, :cond_1

    .line 7394
    :cond_0
    :goto_0
    return-void

    .line 7359
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 7362
    if-gez p1, :cond_2

    .line 7363
    const/4 p1, 0x0

    .line 7365
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 7366
    array-length p2, p0

    .line 7368
    :cond_3
    sub-int v3, p2, p1

    .line 7369
    if-le v3, v5, :cond_0

    .line 7372
    rem-int v1, p3, v3

    .line 7373
    if-gez v1, :cond_6

    .line 7374
    add-int/2addr v1, v3

    move v4, v3

    move v2, p1

    .line 7378
    :goto_1
    if-le v4, v5, :cond_0

    if-lez v1, :cond_0

    .line 7379
    sub-int v3, v4, v1

    .line 7381
    if-le v1, v3, :cond_4

    .line 7382
    add-int v0, v2, v4

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 7384
    sub-int v0, v1, v3

    move v3, v1

    :goto_2
    move v4, v3

    move v1, v0

    .line 7393
    goto :goto_1

    .line 7385
    :cond_4
    if-ge v1, v3, :cond_5

    .line 7386
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 7387
    add-int/2addr v2, v1

    move v0, v1

    .line 7388
    goto :goto_2

    .line 7390
    :cond_5
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v2, p1

    goto :goto_1
.end method

.method public static shift([JI)V
    .registers 4

    .line 7409
    if-nez p0, :cond_0

    .line 7413
    :goto_0
    return-void

    .line 7412
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([JIII)V

    goto :goto_0
.end method

.method public static shift([JIII)V
    .registers 10

    const/4 v5, 0x1

    .line 7435
    if-nez p0, :cond_1

    .line 7473
    :cond_0
    :goto_0
    return-void

    .line 7438
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 7441
    if-gez p1, :cond_2

    .line 7442
    const/4 p1, 0x0

    .line 7444
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 7445
    array-length p2, p0

    .line 7447
    :cond_3
    sub-int v3, p2, p1

    .line 7448
    if-le v3, v5, :cond_0

    .line 7451
    rem-int v1, p3, v3

    .line 7452
    if-gez v1, :cond_6

    .line 7453
    add-int/2addr v1, v3

    move v4, v3

    move v2, p1

    .line 7457
    :goto_1
    if-le v4, v5, :cond_0

    if-lez v1, :cond_0

    .line 7458
    sub-int v3, v4, v1

    .line 7460
    if-le v1, v3, :cond_4

    .line 7461
    add-int v0, v2, v4

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 7463
    sub-int v0, v1, v3

    move v3, v1

    :goto_2
    move v4, v3

    move v1, v0

    .line 7472
    goto :goto_1

    .line 7464
    :cond_4
    if-ge v1, v3, :cond_5

    .line 7465
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 7466
    add-int/2addr v2, v1

    move v0, v1

    .line 7467
    goto :goto_2

    .line 7469
    :cond_5
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v2, p1

    goto :goto_1
.end method

.method public static shift([Ljava/lang/Object;I)V
    .registers 4

    .line 7490
    if-nez p0, :cond_0

    .line 7494
    :goto_0
    return-void

    .line 7493
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static shift([Ljava/lang/Object;III)V
    .registers 10

    const/4 v5, 0x1

    .line 7516
    if-nez p0, :cond_1

    .line 7554
    :cond_0
    :goto_0
    return-void

    .line 7519
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 7522
    if-gez p1, :cond_2

    .line 7523
    const/4 p1, 0x0

    .line 7525
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 7526
    array-length p2, p0

    .line 7528
    :cond_3
    sub-int v3, p2, p1

    .line 7529
    if-le v3, v5, :cond_0

    .line 7532
    rem-int v1, p3, v3

    .line 7533
    if-gez v1, :cond_6

    .line 7534
    add-int/2addr v1, v3

    move v4, v3

    move v2, p1

    .line 7538
    :goto_1
    if-le v4, v5, :cond_0

    if-lez v1, :cond_0

    .line 7539
    sub-int v3, v4, v1

    .line 7541
    if-le v1, v3, :cond_4

    .line 7542
    add-int v0, v2, v4

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 7544
    sub-int v0, v1, v3

    move v3, v1

    :goto_2
    move v4, v3

    move v1, v0

    .line 7553
    goto :goto_1

    .line 7545
    :cond_4
    if-ge v1, v3, :cond_5

    .line 7546
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 7547
    add-int/2addr v2, v1

    move v0, v1

    .line 7548
    goto :goto_2

    .line 7550
    :cond_5
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v2, p1

    goto :goto_1
.end method

.method public static shift([SI)V
    .registers 4

    .line 7569
    if-nez p0, :cond_0

    .line 7573
    :goto_0
    return-void

    .line 7572
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([SIII)V

    goto :goto_0
.end method

.method public static shift([SIII)V
    .registers 10

    const/4 v5, 0x1

    .line 7595
    if-nez p0, :cond_1

    .line 7633
    :cond_0
    :goto_0
    return-void

    .line 7598
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 7601
    if-gez p1, :cond_2

    .line 7602
    const/4 p1, 0x0

    .line 7604
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 7605
    array-length p2, p0

    .line 7607
    :cond_3
    sub-int v3, p2, p1

    .line 7608
    if-le v3, v5, :cond_0

    .line 7611
    rem-int v1, p3, v3

    .line 7612
    if-gez v1, :cond_6

    .line 7613
    add-int/2addr v1, v3

    move v4, v3

    move v2, p1

    .line 7617
    :goto_1
    if-le v4, v5, :cond_0

    if-lez v1, :cond_0

    .line 7618
    sub-int v3, v4, v1

    .line 7620
    if-le v1, v3, :cond_4

    .line 7621
    add-int v0, v2, v4

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 7623
    sub-int v0, v1, v3

    move v3, v1

    :goto_2
    move v4, v3

    move v1, v0

    .line 7632
    goto :goto_1

    .line 7624
    :cond_4
    if-ge v1, v3, :cond_5

    .line 7625
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 7626
    add-int/2addr v2, v1

    move v0, v1

    .line 7627
    goto :goto_2

    .line 7629
    :cond_5
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v2, p1

    goto :goto_1
.end method

.method public static shift([ZI)V
    .registers 4

    .line 6935
    if-nez p0, :cond_0

    .line 6939
    :goto_0
    return-void

    .line 6938
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([ZIII)V

    goto :goto_0
.end method

.method public static shift([ZIII)V
    .registers 10

    const/4 v5, 0x1

    .line 6961
    if-nez p0, :cond_1

    .line 6999
    :cond_0
    :goto_0
    return-void

    .line 6964
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 6967
    if-gez p1, :cond_2

    .line 6968
    const/4 p1, 0x0

    .line 6970
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 6971
    array-length p2, p0

    .line 6973
    :cond_3
    sub-int v3, p2, p1

    .line 6974
    if-le v3, v5, :cond_0

    .line 6977
    rem-int v1, p3, v3

    .line 6978
    if-gez v1, :cond_6

    .line 6979
    add-int/2addr v1, v3

    move v4, v3

    move v2, p1

    .line 6983
    :goto_1
    if-le v4, v5, :cond_0

    if-lez v1, :cond_0

    .line 6984
    sub-int v3, v4, v1

    .line 6986
    if-le v1, v3, :cond_4

    .line 6987
    add-int v0, v2, v4

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 6989
    sub-int v0, v1, v3

    move v3, v1

    :goto_2
    move v4, v3

    move v1, v0

    .line 6998
    goto :goto_1

    .line 6990
    :cond_4
    if-ge v1, v3, :cond_5

    .line 6991
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 6992
    add-int/2addr v2, v1

    move v0, v1

    .line 6993
    goto :goto_2

    .line 6995
    :cond_5
    add-int v0, v2, v3

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v2, p1

    goto :goto_1
.end method

.method public static shuffle([B)V
    .registers 2

    .line 7668
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([BLjava/util/Random;)V

    .line 7669
    return-void
.end method

.method public static shuffle([BLjava/util/Random;)V
    .registers 6

    const/4 v3, 0x1

    .line 7680
    array-length v0, p0

    :goto_0
    if-le v0, v3, :cond_0

    .line 7681
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 7680
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7683
    :cond_0
    return-void
.end method

.method public static shuffle([C)V
    .registers 2

    .line 7693
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([CLjava/util/Random;)V

    .line 7694
    return-void
.end method

.method public static shuffle([CLjava/util/Random;)V
    .registers 6

    const/4 v3, 0x1

    .line 7705
    array-length v0, p0

    :goto_0
    if-le v0, v3, :cond_0

    .line 7706
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 7705
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7708
    :cond_0
    return-void
.end method

.method public static shuffle([D)V
    .registers 2

    .line 7718
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([DLjava/util/Random;)V

    .line 7719
    return-void
.end method

.method public static shuffle([DLjava/util/Random;)V
    .registers 6

    const/4 v3, 0x1

    .line 7730
    array-length v0, p0

    :goto_0
    if-le v0, v3, :cond_0

    .line 7731
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 7730
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7733
    :cond_0
    return-void
.end method

.method public static shuffle([F)V
    .registers 2

    .line 7743
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([FLjava/util/Random;)V

    .line 7744
    return-void
.end method

.method public static shuffle([FLjava/util/Random;)V
    .registers 6

    const/4 v3, 0x1

    .line 7755
    array-length v0, p0

    :goto_0
    if-le v0, v3, :cond_0

    .line 7756
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 7755
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7758
    :cond_0
    return-void
.end method

.method public static shuffle([I)V
    .registers 2

    .line 7768
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ILjava/util/Random;)V

    .line 7769
    return-void
.end method

.method public static shuffle([ILjava/util/Random;)V
    .registers 6

    const/4 v3, 0x1

    .line 7780
    array-length v0, p0

    :goto_0
    if-le v0, v3, :cond_0

    .line 7781
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 7780
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7783
    :cond_0
    return-void
.end method

.method public static shuffle([J)V
    .registers 2

    .line 7793
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([JLjava/util/Random;)V

    .line 7794
    return-void
.end method

.method public static shuffle([JLjava/util/Random;)V
    .registers 6

    const/4 v3, 0x1

    .line 7805
    array-length v0, p0

    :goto_0
    if-le v0, v3, :cond_0

    .line 7806
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 7805
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7808
    :cond_0
    return-void
.end method

.method public static shuffle([Ljava/lang/Object;)V
    .registers 2

    .line 7818
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([Ljava/lang/Object;Ljava/util/Random;)V

    .line 7819
    return-void
.end method

.method public static shuffle([Ljava/lang/Object;Ljava/util/Random;)V
    .registers 6

    const/4 v3, 0x1

    .line 7830
    array-length v0, p0

    :goto_0
    if-le v0, v3, :cond_0

    .line 7831
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 7830
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7833
    :cond_0
    return-void
.end method

.method public static shuffle([S)V
    .registers 2

    .line 7843
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([SLjava/util/Random;)V

    .line 7844
    return-void
.end method

.method public static shuffle([SLjava/util/Random;)V
    .registers 6

    const/4 v3, 0x1

    .line 7855
    array-length v0, p0

    :goto_0
    if-le v0, v3, :cond_0

    .line 7856
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 7855
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7858
    :cond_0
    return-void
.end method

.method public static shuffle([Z)V
    .registers 2

    .line 7643
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ZLjava/util/Random;)V

    .line 7644
    return-void
.end method

.method public static shuffle([ZLjava/util/Random;)V
    .registers 6

    const/4 v3, 0x1

    .line 7655
    array-length v0, p0

    :goto_0
    if-le v0, v3, :cond_0

    .line 7656
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 7655
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7658
    :cond_0
    return-void
.end method

.method public static subarray([BII)[B
    .registers 6

    const/4 v0, 0x0

    .line 7921
    if-nez p0, :cond_0

    .line 7922
    const/4 v0, 0x0

    .line 7937
    :goto_0
    return-object v0

    .line 7924
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 7927
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 7928
    array-length p2, p0

    .line 7930
    :cond_2
    sub-int v2, p2, p1

    .line 7931
    if-gtz v2, :cond_3

    .line 7932
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 7935
    :cond_3
    new-array v1, v2, [B

    .line 7936
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 7937
    goto :goto_0
.end method

.method public static subarray([CII)[C
    .registers 6

    const/4 v0, 0x0

    .line 7961
    if-nez p0, :cond_0

    .line 7962
    const/4 v0, 0x0

    .line 7977
    :goto_0
    return-object v0

    .line 7964
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 7967
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 7968
    array-length p2, p0

    .line 7970
    :cond_2
    sub-int v2, p2, p1

    .line 7971
    if-gtz v2, :cond_3

    .line 7972
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 7975
    :cond_3
    new-array v1, v2, [C

    .line 7976
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 7977
    goto :goto_0
.end method

.method public static subarray([DII)[D
    .registers 6

    const/4 v0, 0x0

    .line 8001
    if-nez p0, :cond_0

    .line 8002
    const/4 v0, 0x0

    .line 8017
    :goto_0
    return-object v0

    .line 8004
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 8007
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 8008
    array-length p2, p0

    .line 8010
    :cond_2
    sub-int v2, p2, p1

    .line 8011
    if-gtz v2, :cond_3

    .line 8012
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 8015
    :cond_3
    new-array v1, v2, [D

    .line 8016
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 8017
    goto :goto_0
.end method

.method public static subarray([FII)[F
    .registers 6

    const/4 v0, 0x0

    .line 8041
    if-nez p0, :cond_0

    .line 8042
    const/4 v0, 0x0

    .line 8057
    :goto_0
    return-object v0

    .line 8044
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 8047
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 8048
    array-length p2, p0

    .line 8050
    :cond_2
    sub-int v2, p2, p1

    .line 8051
    if-gtz v2, :cond_3

    .line 8052
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 8055
    :cond_3
    new-array v1, v2, [F

    .line 8056
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 8057
    goto :goto_0
.end method

.method public static subarray([III)[I
    .registers 6

    const/4 v0, 0x0

    .line 8081
    if-nez p0, :cond_0

    .line 8082
    const/4 v0, 0x0

    .line 8097
    :goto_0
    return-object v0

    .line 8084
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 8087
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 8088
    array-length p2, p0

    .line 8090
    :cond_2
    sub-int v2, p2, p1

    .line 8091
    if-gtz v2, :cond_3

    .line 8092
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 8095
    :cond_3
    new-array v1, v2, [I

    .line 8096
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 8097
    goto :goto_0
.end method

.method public static subarray([JII)[J
    .registers 6

    const/4 v0, 0x0

    .line 8121
    if-nez p0, :cond_0

    .line 8122
    const/4 v0, 0x0

    .line 8137
    :goto_0
    return-object v0

    .line 8124
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 8127
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 8128
    array-length p2, p0

    .line 8130
    :cond_2
    sub-int v2, p2, p1

    .line 8131
    if-gtz v2, :cond_3

    .line 8132
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 8135
    :cond_3
    new-array v1, v2, [J

    .line 8136
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 8137
    goto :goto_0
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 8212
    if-nez p0, :cond_0

    .line 8213
    const/4 v0, 0x0

    .line 8232
    :goto_0
    return-object v0

    .line 8215
    :cond_0
    if-gez p1, :cond_1

    move p1, v1

    .line 8218
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 8219
    array-length p2, p0

    .line 8221
    :cond_2
    sub-int v2, p2, p1

    .line 8222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 8223
    if-gtz v2, :cond_3

    .line 8225
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    .line 8230
    :cond_3
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 8231
    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([SII)[S
    .registers 6

    const/4 v0, 0x0

    .line 8161
    if-nez p0, :cond_0

    .line 8162
    const/4 v0, 0x0

    .line 8177
    :goto_0
    return-object v0

    .line 8164
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 8167
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 8168
    array-length p2, p0

    .line 8170
    :cond_2
    sub-int v2, p2, p1

    .line 8171
    if-gtz v2, :cond_3

    .line 8172
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 8175
    :cond_3
    new-array v1, v2, [S

    .line 8176
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 8177
    goto :goto_0
.end method

.method public static subarray([ZII)[Z
    .registers 6

    const/4 v0, 0x0

    .line 7881
    if-nez p0, :cond_0

    .line 7882
    const/4 v0, 0x0

    .line 7897
    :goto_0
    return-object v0

    .line 7884
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 7887
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 7888
    array-length p2, p0

    .line 7890
    :cond_2
    sub-int v2, p2, p1

    .line 7891
    if-gtz v2, :cond_3

    .line 7892
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 7895
    :cond_3
    new-array v1, v2, [Z

    .line 7896
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 7897
    goto :goto_0
.end method

.method public static swap([BII)V
    .registers 4

    .line 8328
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8332
    :goto_0
    return-void

    .line 8331
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    goto :goto_0
.end method

.method public static swap([BIII)V
    .registers 9

    const/4 v0, 0x0

    .line 8359
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 8374
    :cond_0
    return-void

    .line 8362
    :cond_1
    if-gez p1, :cond_3

    move v1, v0

    .line 8365
    :goto_0
    if-gez p2, :cond_2

    move p2, v0

    .line 8368
    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v0

    .line 8369
    :goto_1
    if-ge v2, v3, :cond_0

    .line 8370
    aget-byte v0, p0, v1

    .line 8371
    aget-byte v4, p0, p2

    aput-byte v4, p0, v1

    .line 8372
    aput-byte v0, p0, p2

    .line 8369
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public static swap([CII)V
    .registers 4

    .line 8398
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8402
    :goto_0
    return-void

    .line 8401
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    goto :goto_0
.end method

.method public static swap([CIII)V
    .registers 9

    const/4 v0, 0x0

    .line 8429
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 8444
    :cond_0
    return-void

    .line 8432
    :cond_1
    if-gez p1, :cond_3

    move v1, v0

    .line 8435
    :goto_0
    if-gez p2, :cond_2

    move p2, v0

    .line 8438
    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v0

    .line 8439
    :goto_1
    if-ge v2, v3, :cond_0

    .line 8440
    aget-char v0, p0, v1

    .line 8441
    aget-char v4, p0, p2

    aput-char v4, p0, v1

    .line 8442
    aput-char v0, p0, p2

    .line 8439
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public static swap([DII)V
    .registers 4

    .line 8468
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8472
    :goto_0
    return-void

    .line 8471
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    goto :goto_0
.end method

.method public static swap([DIII)V
    .registers 12

    const/4 v0, 0x0

    .line 8499
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 8514
    :cond_0
    return-void

    .line 8502
    :cond_1
    if-gez p1, :cond_3

    move v1, v0

    .line 8505
    :goto_0
    if-gez p2, :cond_2

    move p2, v0

    .line 8508
    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v0

    .line 8509
    :goto_1
    if-ge v2, v3, :cond_0

    .line 8510
    aget-wide v4, p0, v1

    .line 8511
    aget-wide v6, p0, p2

    aput-wide v6, p0, v1

    .line 8512
    aput-wide v4, p0, p2

    .line 8509
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public static swap([FII)V
    .registers 4

    .line 8538
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8542
    :goto_0
    return-void

    .line 8541
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    goto :goto_0
.end method

.method public static swap([FIII)V
    .registers 9

    const/4 v0, 0x0

    .line 8569
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 8585
    :cond_0
    return-void

    .line 8572
    :cond_1
    if-gez p1, :cond_3

    move v1, v0

    .line 8575
    :goto_0
    if-gez p2, :cond_2

    move p2, v0

    .line 8578
    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v0

    .line 8579
    :goto_1
    if-ge v2, v3, :cond_0

    .line 8580
    aget v0, p0, v1

    .line 8581
    aget v4, p0, p2

    aput v4, p0, v1

    .line 8582
    aput v0, p0, p2

    .line 8579
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public static swap([III)V
    .registers 4

    .line 8609
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8613
    :goto_0
    return-void

    .line 8612
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    goto :goto_0
.end method

.method public static swap([IIII)V
    .registers 9

    const/4 v0, 0x0

    .line 8640
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 8655
    :cond_0
    return-void

    .line 8643
    :cond_1
    if-gez p1, :cond_3

    move v1, v0

    .line 8646
    :goto_0
    if-gez p2, :cond_2

    move p2, v0

    .line 8649
    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v0

    .line 8650
    :goto_1
    if-ge v2, v3, :cond_0

    .line 8651
    aget v0, p0, v1

    .line 8652
    aget v4, p0, p2

    aput v4, p0, v1

    .line 8653
    aput v0, p0, p2

    .line 8650
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public static swap([JII)V
    .registers 4

    .line 8680
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8684
    :goto_0
    return-void

    .line 8683
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    goto :goto_0
.end method

.method public static swap([JIII)V
    .registers 12

    const/4 v0, 0x0

    .line 8711
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 8726
    :cond_0
    return-void

    .line 8714
    :cond_1
    if-gez p1, :cond_3

    move v1, v0

    .line 8717
    :goto_0
    if-gez p2, :cond_2

    move p2, v0

    .line 8720
    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v0

    .line 8721
    :goto_1
    if-ge v2, v3, :cond_0

    .line 8722
    aget-wide v4, p0, v1

    .line 8723
    aget-wide v6, p0, p2

    aput-wide v6, p0, v1

    .line 8724
    aput-wide v4, p0, p2

    .line 8721
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public static swap([Ljava/lang/Object;II)V
    .registers 4

    .line 8752
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8756
    :goto_0
    return-void

    .line 8755
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static swap([Ljava/lang/Object;III)V
    .registers 9

    const/4 v0, 0x0

    .line 8783
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 8798
    :cond_0
    return-void

    .line 8786
    :cond_1
    if-gez p1, :cond_3

    move v1, v0

    .line 8789
    :goto_0
    if-gez p2, :cond_2

    move p2, v0

    .line 8792
    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v0

    .line 8793
    :goto_1
    if-ge v2, v3, :cond_0

    .line 8794
    aget-object v0, p0, v1

    .line 8795
    aget-object v4, p0, p2

    aput-object v4, p0, v1

    .line 8796
    aput-object v0, p0, p2

    .line 8793
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public static swap([SII)V
    .registers 4

    .line 8822
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8826
    :goto_0
    return-void

    .line 8825
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    goto :goto_0
.end method

.method public static swap([SIII)V
    .registers 10

    const/4 v1, 0x0

    .line 8853
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 8871
    :cond_0
    return-void

    .line 8856
    :cond_1
    if-gez p1, :cond_3

    move v0, v1

    .line 8859
    :goto_0
    if-gez p2, :cond_2

    move v2, v1

    .line 8862
    :goto_1
    if-eq v0, v2, :cond_0

    .line 8865
    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    array-length v4, p0

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 8866
    :goto_2
    if-ge v1, v3, :cond_0

    .line 8867
    aget-short v4, p0, v0

    .line 8868
    aget-short v5, p0, v2

    aput-short v5, p0, v0

    .line 8869
    aput-short v4, p0, v2

    .line 8866
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, p2

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method public static swap([ZII)V
    .registers 4

    .line 8257
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8261
    :goto_0
    return-void

    .line 8260
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    goto :goto_0
.end method

.method public static swap([ZIII)V
    .registers 9

    const/4 v0, 0x0

    .line 8288
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 8303
    :cond_0
    return-void

    .line 8291
    :cond_1
    if-gez p1, :cond_3

    move v1, v0

    .line 8294
    :goto_0
    if-gez p2, :cond_2

    move p2, v0

    .line 8297
    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v0

    .line 8298
    :goto_1
    if-ge v2, v3, :cond_0

    .line 8299
    aget-boolean v0, p0, v1

    .line 8300
    aget-boolean v4, p0, p2

    aput-boolean v4, p0, v1

    .line 8301
    aput-boolean v0, p0, p2

    .line 8298
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 8913
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 8944
    if-nez p0, :cond_0

    .line 8945
    const/4 v0, 0x0

    .line 8967
    :goto_0
    return-object v0

    .line 8947
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    new-instance v4, Ljava/util/HashMap;

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    move v2, v3

    .line 8948
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_4

    .line 8949
    aget-object v0, p0, v2

    .line 8950
    instance-of v1, v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    .line 8951
    check-cast v0, Ljava/util/Map$Entry;

    .line 8952
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8961
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 8953
    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 8954
    check-cast v1, [Ljava/lang/Object;

    .line 8955
    array-length v5, v1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 8960
    aget-object v0, v1, v3

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 8956
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array element "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\', has a length less than 2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8962
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array element "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v4

    .line 8967
    goto/16 :goto_0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .registers 4

    .line 8979
    if-nez p0, :cond_0

    .line 8980
    const/4 v0, 0x0

    .line 8988
    :goto_0
    return-object v0

    .line 8981
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8982
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    goto :goto_0

    .line 8984
    :cond_1
    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Boolean;

    .line 8985
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 8986
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v1, v2, v0

    .line 8985
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8986
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 8988
    goto :goto_0
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .registers 4

    .line 9000
    if-nez p0, :cond_0

    .line 9001
    const/4 v0, 0x0

    .line 9009
    :goto_0
    return-object v0

    .line 9002
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9003
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    goto :goto_0

    .line 9005
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Byte;

    .line 9006
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9007
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9006
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9009
    goto :goto_0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .registers 4

    .line 9021
    if-nez p0, :cond_0

    .line 9022
    const/4 v0, 0x0

    .line 9030
    :goto_0
    return-object v0

    .line 9023
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9024
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    goto :goto_0

    .line 9026
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Character;

    .line 9027
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9028
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9027
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9030
    goto :goto_0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .registers 5

    .line 9042
    if-nez p0, :cond_0

    .line 9043
    const/4 v0, 0x0

    .line 9051
    :goto_0
    return-object v0

    .line 9044
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9045
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    goto :goto_0

    .line 9047
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Double;

    .line 9048
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9049
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9048
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9051
    goto :goto_0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .registers 4

    .line 9063
    if-nez p0, :cond_0

    .line 9064
    const/4 v0, 0x0

    .line 9072
    :goto_0
    return-object v0

    .line 9065
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9066
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    goto :goto_0

    .line 9068
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Float;

    .line 9069
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9070
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9069
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9072
    goto :goto_0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .registers 4

    .line 9084
    if-nez p0, :cond_0

    .line 9085
    const/4 v0, 0x0

    .line 9093
    :goto_0
    return-object v0

    .line 9086
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9087
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    goto :goto_0

    .line 9089
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 9090
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9091
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9090
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9093
    goto :goto_0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .registers 5

    .line 9105
    if-nez p0, :cond_0

    .line 9106
    const/4 v0, 0x0

    .line 9114
    :goto_0
    return-object v0

    .line 9107
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9108
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    goto :goto_0

    .line 9110
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Long;

    .line 9111
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9112
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9114
    goto :goto_0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .registers 4

    .line 9126
    if-nez p0, :cond_0

    .line 9127
    const/4 v0, 0x0

    .line 9135
    :goto_0
    return-object v0

    .line 9128
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9129
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    goto :goto_0

    .line 9131
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Short;

    .line 9132
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9133
    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9135
    goto :goto_0
.end method

.method public static toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 9477
    if-nez p0, :cond_1

    .line 9478
    const/4 p0, 0x0

    .line 9506
    :cond_0
    :goto_0
    return-object p0

    .line 9480
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 9481
    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 9482
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9483
    check-cast p0, [Ljava/lang/Boolean;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object p0

    goto :goto_0

    .line 9485
    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9486
    check-cast p0, [Ljava/lang/Character;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Character;)[C

    move-result-object p0

    goto :goto_0

    .line 9488
    :cond_3
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9489
    check-cast p0, [Ljava/lang/Byte;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Byte;)[B

    move-result-object p0

    goto :goto_0

    .line 9491
    :cond_4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9492
    check-cast p0, [Ljava/lang/Integer;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object p0

    goto :goto_0

    .line 9494
    :cond_5
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9495
    check-cast p0, [Ljava/lang/Long;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Long;)[J

    move-result-object p0

    goto :goto_0

    .line 9497
    :cond_6
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9498
    check-cast p0, [Ljava/lang/Short;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Short;)[S

    move-result-object p0

    goto :goto_0

    .line 9500
    :cond_7
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9501
    check-cast p0, [Ljava/lang/Double;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Double;)[D

    move-result-object p0

    goto :goto_0

    .line 9503
    :cond_8
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9504
    check-cast p0, [Ljava/lang/Float;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Float;)[F

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .registers 4

    .line 9197
    if-nez p0, :cond_0

    .line 9198
    const/4 v0, 0x0

    .line 9206
    :goto_0
    return-object v0

    .line 9199
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9200
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 9202
    :cond_1
    array-length v0, p0

    new-array v1, v0, [B

    .line 9203
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9204
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 9203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9206
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .registers 5

    .line 9219
    if-nez p0, :cond_0

    .line 9220
    const/4 v0, 0x0

    .line 9229
    :goto_0
    return-object v0

    .line 9221
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9222
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 9224
    :cond_1
    array-length v0, p0

    new-array v2, v0, [B

    .line 9225
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 9226
    aget-object v1, p0, v0

    .line 9227
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-byte v1, v2, v0

    .line 9225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9227
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 9229
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .registers 4

    .line 9244
    if-nez p0, :cond_0

    .line 9245
    const/4 v0, 0x0

    .line 9253
    :goto_0
    return-object v0

    .line 9246
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9247
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 9249
    :cond_1
    array-length v0, p0

    new-array v1, v0, [C

    .line 9250
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9251
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 9250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9253
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .registers 5

    .line 9266
    if-nez p0, :cond_0

    .line 9267
    const/4 v0, 0x0

    .line 9276
    :goto_0
    return-object v0

    .line 9268
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9269
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 9271
    :cond_1
    array-length v0, p0

    new-array v2, v0, [C

    .line 9272
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 9273
    aget-object v1, p0, v0

    .line 9274
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-char v1, v2, v0

    .line 9272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9274
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 9276
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .registers 5

    .line 9291
    if-nez p0, :cond_0

    .line 9292
    const/4 v0, 0x0

    .line 9300
    :goto_0
    return-object v0

    .line 9293
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9294
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 9296
    :cond_1
    array-length v0, p0

    new-array v1, v0, [D

    .line 9297
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9298
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 9297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9300
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .registers 8

    .line 9313
    if-nez p0, :cond_0

    .line 9314
    const/4 v0, 0x0

    .line 9323
    :goto_0
    return-object v0

    .line 9315
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9316
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 9318
    :cond_1
    array-length v0, p0

    new-array v1, v0, [D

    .line 9319
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 9320
    aget-object v2, p0, v0

    .line 9321
    if-nez v2, :cond_2

    move-wide v2, p1

    :goto_2
    aput-wide v2, v1, v0

    .line 9319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9321
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 9323
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .registers 4

    .line 9338
    if-nez p0, :cond_0

    .line 9339
    const/4 v0, 0x0

    .line 9347
    :goto_0
    return-object v0

    .line 9340
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9341
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 9343
    :cond_1
    array-length v0, p0

    new-array v1, v0, [F

    .line 9344
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9345
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 9344
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9347
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .registers 5

    .line 9360
    if-nez p0, :cond_0

    .line 9361
    const/4 v0, 0x0

    .line 9370
    :goto_0
    return-object v0

    .line 9362
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9363
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 9365
    :cond_1
    array-length v0, p0

    new-array v2, v0, [F

    .line 9366
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 9367
    aget-object v1, p0, v0

    .line 9368
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput v1, v2, v0

    .line 9366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9368
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 9370
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .registers 4

    .line 9385
    if-nez p0, :cond_0

    .line 9386
    const/4 v0, 0x0

    .line 9394
    :goto_0
    return-object v0

    .line 9387
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9388
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 9390
    :cond_1
    array-length v0, p0

    new-array v1, v0, [I

    .line 9391
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9392
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 9391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9394
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .registers 5

    .line 9407
    if-nez p0, :cond_0

    .line 9408
    const/4 v0, 0x0

    .line 9417
    :goto_0
    return-object v0

    .line 9409
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9410
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 9412
    :cond_1
    array-length v0, p0

    new-array v2, v0, [I

    .line 9413
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 9414
    aget-object v1, p0, v0

    .line 9415
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput v1, v2, v0

    .line 9413
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9415
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 9417
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .registers 5

    .line 9432
    if-nez p0, :cond_0

    .line 9433
    const/4 v0, 0x0

    .line 9441
    :goto_0
    return-object v0

    .line 9434
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9435
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 9437
    :cond_1
    array-length v0, p0

    new-array v1, v0, [J

    .line 9438
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9439
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 9438
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9441
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .registers 8

    .line 9454
    if-nez p0, :cond_0

    .line 9455
    const/4 v0, 0x0

    .line 9464
    :goto_0
    return-object v0

    .line 9456
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9457
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 9459
    :cond_1
    array-length v0, p0

    new-array v1, v0, [J

    .line 9460
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 9461
    aget-object v2, p0, v0

    .line 9462
    if-nez v2, :cond_2

    move-wide v2, p1

    :goto_2
    aput-wide v2, v1, v0

    .line 9460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9462
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 9464
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .registers 4

    .line 9521
    if-nez p0, :cond_0

    .line 9522
    const/4 v0, 0x0

    .line 9530
    :goto_0
    return-object v0

    .line 9523
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9524
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 9526
    :cond_1
    array-length v0, p0

    new-array v1, v0, [S

    .line 9527
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9528
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 9527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9530
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .registers 5

    .line 9543
    if-nez p0, :cond_0

    .line 9544
    const/4 v0, 0x0

    .line 9553
    :goto_0
    return-object v0

    .line 9545
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9546
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 9548
    :cond_1
    array-length v0, p0

    new-array v2, v0, [S

    .line 9549
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 9550
    aget-object v1, p0, v0

    .line 9551
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-short v1, v2, v0

    .line 9549
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9551
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 9553
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .registers 4

    .line 9150
    if-nez p0, :cond_0

    .line 9151
    const/4 v0, 0x0

    .line 9159
    :goto_0
    return-object v0

    .line 9152
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9153
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 9155
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Z

    .line 9156
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9157
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 9156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9159
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .registers 5

    .line 9172
    if-nez p0, :cond_0

    .line 9173
    const/4 v0, 0x0

    .line 9182
    :goto_0
    return-object v0

    .line 9174
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9175
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 9177
    :cond_1
    array-length v0, p0

    new-array v2, v0, [Z

    .line 9178
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 9179
    aget-object v1, p0, v0

    .line 9180
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-boolean v1, v2, v0

    .line 9178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9180
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 9182
    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 9570
    const-string v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 9586
    if-nez p0, :cond_0

    .line 9589
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .registers 4

    .line 9604
    if-nez p0, :cond_0

    .line 9605
    const/4 v0, 0x0

    .line 9615
    :goto_0
    return-object v0

    .line 9606
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9607
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 9610
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    .line 9611
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 9612
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9611
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 9615
    goto :goto_0
.end method

.method public static toStringArray([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 9630
    if-nez p0, :cond_0

    .line 9631
    const/4 v0, 0x0

    .line 9642
    :goto_0
    return-object v0

    .line 9632
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9633
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 9636
    :cond_1
    array-length v0, p0

    new-array v2, v0, [Ljava/lang/String;

    .line 9637
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 9638
    aget-object v1, p0, v0

    .line 9639
    if-nez v1, :cond_2

    move-object v1, p1

    :goto_2
    aput-object v1, v2, v0

    .line 9637
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9639
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 9642
    goto :goto_0
.end method
