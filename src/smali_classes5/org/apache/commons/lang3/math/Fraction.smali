.class public final Lorg/apache/commons/lang3/math/Fraction;
.super Ljava/lang/Number;
.source "Fraction.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/math/Fraction;",
        ">;"
    }
.end annotation


# static fields
.field public static final FOUR_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_HALF:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_QUARTER:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_THIRD:Lorg/apache/commons/lang3/math/Fraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ZERO:Lorg/apache/commons/lang3/math/Fraction;

.field private static final serialVersionUID:J = 0x3b76f0847842L


# instance fields
.field private final denominator:I

.field private transient hashCode:I

.field private final numerator:I

.field private transient toProperString:Ljava/lang/String;

.field private transient toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 48
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    .line 52
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE:Lorg/apache/commons/lang3/math/Fraction;

    .line 56
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_HALF:Lorg/apache/commons/lang3/math/Fraction;

    .line 60
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_THIRD:Lorg/apache/commons/lang3/math/Fraction;

    .line 64
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_THIRDS:Lorg/apache/commons/lang3/math/Fraction;

    .line 68
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_QUARTER:Lorg/apache/commons/lang3/math/Fraction;

    .line 72
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

    .line 76
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->THREE_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

    .line 80
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v6}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_FIFTH:Lorg/apache/commons/lang3/math/Fraction;

    .line 84
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v6}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    .line 88
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v4, v6}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->THREE_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    .line 92
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->FOUR_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 125
    iput p1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    .line 126
    iput p2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    .line 127
    return-void
.end method

.method private static addAndCheck(II)I
    .registers 6

    .line 669
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 670
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_13

    .line 673
    long-to-int v0, v0

    return v0

    .line 671
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: add"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;
    .registers 9

    .line 732
    const-string v0, "fraction"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_14

    .line 735
    if-eqz p2, :cond_f

    .line 766
    :goto_e
    return-object p1

    .line 735
    :cond_f
    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->negate()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    goto :goto_e

    .line 737
    :cond_14
    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_1a

    move-object p1, p0

    .line 738
    goto :goto_e

    .line 742
    :cond_1a
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v2

    .line 743
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4f

    .line 745
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v0

    .line 746
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v1

    .line 747
    if-eqz p2, :cond_4a

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->addAndCheck(II)I

    move-result v0

    :goto_3b
    new-instance v1, Lorg/apache/commons/lang3/math/Fraction;

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    move-object p1, v1

    goto :goto_e

    :cond_4a
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->subAndCheck(II)I

    move-result v0

    goto :goto_3b

    .line 753
    :cond_4f
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v1, v2

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 754
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v3, v2

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 755
    if-eqz p2, :cond_b4

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 758
    :goto_7b
    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 759
    if-nez v1, :cond_b9

    move v1, v2

    .line 762
    :goto_8b
    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 763
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v4, 0x1f

    if-gt v0, v4, :cond_be

    .line 766
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v2, v4, v2

    iget v4, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v1, v4, v1

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    move-object p1, v0

    goto/16 :goto_e

    .line 755
    :cond_b4
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_7b

    .line 759
    :cond_b9
    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    goto :goto_8b

    .line 764
    :cond_be
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: numerator too large after multiply"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(D)Lorg/apache/commons/lang3/math/Fraction;
    .registers 30

    .line 248
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_7e

    const/4 v2, -0x1

    .line 249
    :goto_7
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 250
    const-wide v6, 0x41dfffffffc00000L  # 2.147483647E9

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_97

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_97

    .line 253
    double-to-int v0, v4

    move/from16 v22, v0

    .line 254
    move/from16 v0, v22

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v24, v4, v6

    .line 256
    const/4 v3, 0x0

    .line 257
    const/4 v5, 0x1

    .line 258
    const/4 v4, 0x1

    .line 259
    const/4 v6, 0x0

    .line 262
    move-wide/from16 v0, v24

    double-to-int v7, v0

    .line 263
    const-wide/high16 v14, 0x3ff0000000000000L  # 1.0

    .line 265
    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v18, v24, v8

    .line 267
    const-wide v10, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 270
    const/4 v8, 0x1

    move v9, v8

    move-wide v12, v10

    move-wide/from16 v16, v14

    .line 273
    :goto_3e
    div-double v10, v16, v18

    double-to-int v8, v10

    .line 274
    int-to-double v0, v8

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    .line 276
    mul-int v10, v7, v4

    add-int v11, v10, v3

    .line 277
    mul-int v3, v7, v6

    add-int v10, v3, v5

    .line 278
    int-to-double v14, v11

    int-to-double v0, v10

    move-wide/from16 v26, v0

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isNaN(D)Z

    div-double v14, v14, v26

    .line 279
    sub-double v14, v24, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 287
    add-int/lit8 v9, v9, 0x1

    .line 288
    cmpl-double v3, v12, v14

    if-lez v3, :cond_71

    const/16 v3, 0x2710

    if-gt v10, v3, :cond_71

    if-lez v10, :cond_71

    const/16 v3, 0x19

    if-lt v9, v3, :cond_80

    .line 289
    :cond_71
    const/16 v3, 0x19

    if-eq v9, v3, :cond_8f

    .line 292
    mul-int v3, v22, v6

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/apache/commons/lang3/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v2

    return-object v2

    .line 248
    :cond_7e
    const/4 v2, 0x1

    goto :goto_7

    .line 288
    :cond_80
    mul-double v12, v20, v18

    sub-double v20, v16, v12

    move v3, v4

    move v5, v6

    move v7, v8

    move-wide v12, v14

    move-wide/from16 v16, v18

    move v6, v10

    move v4, v11

    move-wide/from16 v18, v20

    goto :goto_3e

    .line 290
    :cond_8f
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Unable to convert double to fraction"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_97
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "The value must not be greater than Integer.MAX_VALUE or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFraction(II)Lorg/apache/commons/lang3/math/Fraction;
    .registers 4

    const/high16 v0, -0x80000000

    .line 142
    if-eqz p1, :cond_1a

    .line 145
    if-gez p1, :cond_c

    .line 146
    if-eq p0, v0, :cond_12

    if-eq p1, v0, :cond_12

    .line 149
    neg-int p0, p0

    .line 150
    neg-int p1, p1

    .line 152
    :cond_c
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0

    .line 147
    :cond_12
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(III)Lorg/apache/commons/lang3/math/Fraction;
    .registers 7

    .line 172
    if-eqz p2, :cond_40

    .line 175
    if-ltz p2, :cond_38

    .line 178
    if-ltz p1, :cond_30

    .line 182
    if-gez p0, :cond_22

    .line 183
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 187
    :goto_d
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_28

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_28

    .line 190
    new-instance v2, Lorg/apache/commons/lang3/math/Fraction;

    long-to-int v0, v0

    invoke-direct {v2, v0, p2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v2

    .line 185
    :cond_22
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    goto :goto_d

    .line 188
    :cond_28
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Numerator too large to represent as an Integer."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_30
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The numerator must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_38
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_40
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(Ljava/lang/String;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 5

    const/16 v2, 0x2f

    const/4 v3, 0x0

    .line 314
    const-string v0, "str"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 317
    if-ltz v0, :cond_1b

    .line 318
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(D)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    .line 343
    :goto_1a
    return-object v0

    .line 322
    :cond_1b
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 323
    if-lez v0, :cond_56

    .line 324
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 325
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 327
    if-ltz v2, :cond_4e

    .line 330
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 331
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 332
    invoke-static {v1, v3, v0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(III)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    goto :goto_1a

    .line 328
    :cond_4e
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "The fraction could not be parsed as the format X Y/Z"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_56
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 337
    if-gez v0, :cond_66

    .line 339
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    goto :goto_1a

    .line 341
    :cond_66
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 342
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 343
    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    goto :goto_1a
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;
    .registers 6

    const/high16 v2, -0x80000000

    .line 208
    if-eqz p1, :cond_32

    .line 211
    if-nez p0, :cond_9

    .line 212
    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    .line 230
    :goto_8
    return-object v0

    .line 215
    :cond_9
    if-ne p1, v2, :cond_3a

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_3a

    .line 216
    div-int/lit8 p0, p0, 0x2

    .line 217
    div-int/lit8 p1, p1, 0x2

    move v0, p0

    move v1, p1

    .line 219
    :goto_15
    if-gez v1, :cond_1d

    .line 220
    if-eq v0, v2, :cond_2a

    if-eq v1, v2, :cond_2a

    .line 223
    neg-int v0, v0

    .line 224
    neg-int v1, v1

    .line 227
    :cond_1d
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v2

    .line 228
    div-int v3, v0, v2

    .line 229
    div-int/2addr v1, v2

    .line 230
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    goto :goto_8

    .line 221
    :cond_2a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_32
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    move v0, p0

    move v1, p1

    goto :goto_15
.end method

.method private static greatestCommonDivisor(II)I
    .registers 8

    const/16 v2, 0x1f

    const/high16 v0, -0x80000000

    const/4 v3, 0x1

    .line 566
    if-eqz p0, :cond_9

    if-nez p1, :cond_17

    .line 567
    :cond_9
    if-eq p0, v0, :cond_6c

    if-eq p1, v0, :cond_6c

    .line 570
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 618
    :goto_16
    return v0

    .line 573
    :cond_17
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v3, :cond_23

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v3, :cond_25

    :cond_23
    move v0, v3

    .line 574
    goto :goto_16

    .line 580
    :cond_25
    if-lez p0, :cond_74

    .line 581
    neg-int v0, p0

    .line 583
    :goto_28
    if-lez p1, :cond_2b

    .line 584
    neg-int p1, p1

    .line 587
    :cond_2b
    const/4 v1, 0x0

    move v5, v1

    move v4, p1

    .line 588
    :goto_2e
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_40

    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_40

    if-ge v5, v2, :cond_40

    .line 589
    div-int/lit8 v0, v0, 0x2

    .line 590
    div-int/lit8 v4, v4, 0x2

    .line 591
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2e

    .line 593
    :cond_40
    if-eq v5, v2, :cond_64

    .line 598
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v3, :cond_4f

    move v1, v4

    move v2, v4

    .line 604
    :cond_48
    :goto_48
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_54

    .line 605
    div-int/lit8 v2, v2, 0x2

    goto :goto_48

    .line 598
    :cond_4f
    div-int/lit8 v1, v0, 0x2

    neg-int v2, v1

    move v1, v4

    goto :goto_48

    .line 608
    :cond_54
    if-lez v2, :cond_62

    .line 609
    neg-int v0, v2

    .line 614
    :goto_57
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 617
    if-nez v2, :cond_48

    .line 618
    neg-int v0, v0

    shl-int v1, v3, v5

    mul-int/2addr v0, v1

    goto :goto_16

    :cond_62
    move v1, v2

    .line 611
    goto :goto_57

    .line 594
    :cond_64
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: gcd is 2^31"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_6c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: gcd is 2^31"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    move v0, p0

    goto :goto_28
.end method

.method private static mulAndCheck(II)I
    .registers 6

    .line 634
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 635
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_13

    .line 638
    long-to-int v0, v0

    return v0

    .line 636
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: mul"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static mulPosAndCheck(II)I
    .registers 6

    .line 652
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 653
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    .line 656
    long-to-int v0, v0

    return v0

    .line 654
    :cond_c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: mulPos"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static subAndCheck(II)I
    .registers 6

    .line 686
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 687
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_13

    .line 690
    long-to-int v0, v0

    return v0

    .line 688
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: add"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abs()Lorg/apache/commons/lang3/math/Fraction;
    .registers 2

    .line 517
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-ltz v0, :cond_5

    .line 520
    :goto_4
    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->negate()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    goto :goto_4
.end method

.method public add(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 3

    .line 704
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/math/Fraction;->addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 36
    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->compareTo(Lorg/apache/commons/lang3/math/Fraction;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/math/Fraction;)I
    .registers 10

    const/4 v0, 0x0

    .line 861
    if-ne p0, p1, :cond_4

    .line 871
    :cond_3
    :goto_3
    return v0

    .line 864
    :cond_4
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-ne v1, v2, :cond_10

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v4, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    if-eq v3, v4, :cond_3

    .line 869
    :cond_10
    int-to-long v0, v1

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v4, v3

    .line 870
    int-to-long v2, v2

    iget v6, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v6, v6

    .line 871
    mul-long/2addr v0, v4

    mul-long/2addr v2, v6

    cmp-long v0, v0, v2

    goto :goto_3
.end method

.method public divideBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 4

    .line 803
    const-string v0, "fraction"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_15

    .line 807
    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0

    .line 805
    :cond_15
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The fraction to divide by must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubleValue()D
    .registers 5

    .line 444
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 823
    if-ne p1, p0, :cond_5

    .line 830
    :cond_4
    :goto_4
    return v0

    .line 826
    :cond_5
    instance-of v2, p1, Lorg/apache/commons/lang3/math/Fraction;

    if-nez v2, :cond_b

    move v0, v1

    .line 827
    goto :goto_4

    .line 829
    :cond_b
    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    .line 830
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v3

    if-ne v2, v3, :cond_21

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public floatValue()F
    .registers 3

    .line 433
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getDenominator()I
    .registers 2

    .line 367
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .registers 2

    .line 358
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    return v0
.end method

.method public getProperNumerator()I
    .registers 3

    .line 382
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getProperWhole()I
    .registers 3

    .line 397
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 840
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    if-nez v0, :cond_13

    .line 842
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    .line 844
    :cond_13
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    return v0
.end method

.method public intValue()I
    .registers 3

    .line 411
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/apache/commons/lang3/math/Fraction;
    .registers 4

    .line 480
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_28

    .line 483
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_20

    .line 486
    if-gez v0, :cond_16

    .line 487
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 489
    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    goto :goto_15

    .line 484
    :cond_20
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate numerator"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_28
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to invert zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longValue()J
    .registers 5

    .line 422
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 6

    .line 780
    const-string v0, "fraction"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_10

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v1, :cond_13

    .line 782
    :cond_10
    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    .line 788
    :goto_12
    return-object v0

    .line 786
    :cond_13
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 787
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    .line 788
    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v1, v3, v1

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v0, v3, v0

    .line 789
    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result v0

    .line 788
    invoke-static {v2, v0}, Lorg/apache/commons/lang3/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    goto :goto_12
.end method

.method public negate()Lorg/apache/commons/lang3/math/Fraction;
    .registers 4

    .line 501
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    .line 504
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0

    .line 502
    :cond_11
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: too large to negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pow(I)Lorg/apache/commons/lang3/math/Fraction;
    .registers 4

    .line 536
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 550
    :goto_3
    return-object p0

    .line 538
    :cond_4
    if-nez p1, :cond_9

    .line 539
    sget-object p0, Lorg/apache/commons/lang3/math/Fraction;->ONE:Lorg/apache/commons/lang3/math/Fraction;

    goto :goto_3

    .line 540
    :cond_9
    if-gez p1, :cond_2a

    .line 541
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_20

    .line 542
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    goto :goto_3

    .line 544
    :cond_20
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    goto :goto_3

    .line 546
    :cond_2a
    invoke-virtual {p0, p0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    .line 547
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_39

    .line 548
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    goto :goto_3

    .line 550
    :cond_39
    div-int/lit8 v1, p1, 0x2

    :try_start_3b
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_44

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    goto :goto_3

    :catchall_44
    move-exception v0

    throw v0
.end method

.method public reduce()Lorg/apache/commons/lang3/math/Fraction;
    .registers 4

    .line 460
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_d

    .line 461
    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/math/Fraction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 467
    :cond_c
    :goto_c
    return-object p0

    .line 463
    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 464
    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 467
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v1, v0

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v0, v2, v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    goto :goto_c

    :cond_26
    move-object p0, v0

    goto :goto_c
.end method

.method public subtract(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 3

    .line 718
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/math/Fraction;->addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public toProperString()Ljava/lang/String;
    .registers 4

    .line 899
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 900
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_f

    .line 901
    const-string v0, "0"

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    .line 921
    :cond_c
    :goto_c
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    return-object v0

    .line 902
    :cond_f
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    if-ne v0, v1, :cond_18

    .line 903
    const-string v0, "1"

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_c

    .line 904
    :cond_18
    mul-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_21

    .line 905
    const-string v0, "-1"

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_c

    .line 906
    :cond_21
    if-lez v0, :cond_24

    neg-int v0, v0

    :cond_24
    neg-int v1, v1

    if-ge v0, v1, :cond_5f

    .line 911
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperNumerator()I

    move-result v0

    .line 912
    if-nez v0, :cond_38

    .line 913
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperWhole()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_c

    .line 915
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperWhole()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_c

    .line 918
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 883
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    .line 886
    :cond_22
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    return-object v0
.end method
