.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_TWO:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_INT_MAX_VALUE:Ljava/lang/Long;

.field public static final LONG_INT_MIN_VALUE:Ljava/lang/Long;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 35
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 37
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 39
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 45
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 49
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 51
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 53
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 55
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 57
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 59
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 63
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 65
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 71
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    .line 78
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_INT_MAX_VALUE:Ljava/lang/Long;

    .line 85
    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_INT_MIN_VALUE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static compare(BB)I
    .registers 3

    .line 1830
    sub-int v0, p0, p1

    return v0
.end method

.method public static compare(II)I
    .registers 3

    .line 1779
    if-ne p0, p1, :cond_0

    .line 1780
    const/4 v0, 0x0

    .line 1782
    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compare(JJ)I
    .registers 6

    .line 1796
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 1797
    const/4 v0, 0x0

    .line 1799
    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compare(SS)I
    .registers 3

    .line 1813
    if-ne p0, p1, :cond_0

    .line 1814
    const/4 v0, 0x0

    .line 1816
    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3

    .line 997
    if-nez p0, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1004
    :goto_0
    return-object v0

    .line 1001
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 7

    const/16 v4, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 962
    if-nez p0, :cond_0

    .line 963
    const/4 v0, 0x0

    .line 984
    :goto_0
    return-object v0

    .line 966
    :cond_0
    const/16 v5, 0xa

    .line 968
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    move v3, v1

    .line 972
    :goto_1
    const-string v1, "0x"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0X"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 974
    :cond_1
    add-int/lit8 v3, v3, 0x2

    move v1, v4

    .line 983
    :goto_2
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 984
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 975
    :cond_2
    const-string v1, "#"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 977
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_2

    .line 978
    :cond_3
    const-string v1, "0"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v3, 0x1

    if-le v1, v2, :cond_5

    .line 979
    const/16 v1, 0x8

    .line 980
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_2

    :cond_6
    move v0, v2

    move v3, v2

    goto :goto_1
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2

    .line 908
    if-nez p0, :cond_0

    .line 909
    const/4 v0, 0x0

    .line 911
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2

    .line 892
    if-nez p0, :cond_0

    .line 893
    const/4 v0, 0x0

    .line 895
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 926
    if-nez p0, :cond_0

    .line 927
    const/4 v0, 0x0

    .line 930
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2

    .line 945
    if-nez p0, :cond_0

    .line 946
    const/4 v0, 0x0

    .line 948
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 12

    const/16 v10, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 664
    if-nez p0, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-object v3

    .line 667
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 671
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "0x"

    aput-object v0, v1, v5

    const-string v0, "0X"

    aput-object v0, v1, v4

    const/4 v0, 0x2

    const-string v2, "-0x"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "-0X"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "#"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "-#"

    aput-object v2, v1, v0

    .line 672
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 673
    array-length v2, v1

    move v0, v5

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v7, v1, v0

    .line 675
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 676
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 677
    add-int/lit8 v2, v0, 0x0

    .line 680
    :goto_2
    if-lez v2, :cond_9

    move v1, v2

    move v3, v2

    move v0, v5

    .line 682
    :goto_3
    if-ge v1, v6, :cond_4

    .line 683
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 684
    const/16 v2, 0x30

    if-ne v0, v2, :cond_4

    .line 685
    add-int/lit8 v2, v3, 0x1

    .line 682
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_3

    .line 674
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    .line 690
    :cond_4
    sub-int v1, v6, v3

    .line 691
    const/16 v2, 0x10

    if-gt v1, v2, :cond_5

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    const/16 v2, 0x37

    if-le v0, v2, :cond_6

    .line 692
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 694
    :cond_6
    if-gt v1, v10, :cond_7

    if-ne v1, v10, :cond_8

    const/16 v1, 0x37

    if-le v0, v1, :cond_8

    .line 695
    :cond_7
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 697
    :cond_8
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 699
    :cond_9
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 703
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 704
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v2, 0x45

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v8, v0, 0x1

    .line 708
    if-le v1, v9, :cond_d

    .line 709
    if-le v8, v9, :cond_c

    .line 710
    if-lt v8, v1, :cond_b

    if-gt v8, v6, :cond_b

    .line 713
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 717
    :goto_4
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 729
    :goto_5
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x2e

    if-eq v7, v0, :cond_16

    .line 730
    if-le v8, v9, :cond_a

    add-int/lit8 v0, v6, -0x1

    if-ge v8, v0, :cond_a

    .line 731
    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 736
    :cond_a
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 737
    invoke-static {v1}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v3}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    .line 738
    :goto_6
    sparse-switch v7, :sswitch_data_0

    .line 784
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 715
    :cond_c
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 719
    :cond_d
    if-le v8, v9, :cond_f

    .line 720
    if-gt v8, v6, :cond_e

    .line 723
    invoke-static {p0, v8}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v1, v0

    move-object v2, v3

    .line 727
    goto :goto_5

    .line 721
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 725
    :cond_f
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_10
    move v0, v5

    .line 737
    goto :goto_6

    .line 741
    :sswitch_0
    if-nez v2, :cond_13

    if-nez v3, :cond_13

    .line 743
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_11

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 745
    :cond_12
    :try_start_0
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 749
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    goto/16 :goto_0

    .line 752
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 756
    :sswitch_1
    :try_start_1
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 757
    invoke-virtual {v3}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 770
    :cond_14
    :goto_9
    :sswitch_2
    :try_start_2
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 771
    invoke-virtual {v3}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmpl-double v1, v4, v8

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 778
    :cond_15
    :goto_a
    :try_start_3
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v3

    goto/16 :goto_0

    .line 790
    :cond_16
    if-le v8, v9, :cond_17

    add-int/lit8 v0, v6, -0x1

    if-ge v8, v0, :cond_17

    .line 791
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 795
    :cond_17
    if-nez v2, :cond_18

    if-nez v3, :cond_18

    .line 798
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .line 799
    :catch_1
    move-exception v0

    .line 803
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v3

    goto/16 :goto_0

    .line 804
    :catch_2
    move-exception v0

    .line 807
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    goto/16 :goto_0

    .line 811
    :cond_18
    invoke-static {v1}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {v3}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v1, v4

    .line 813
    :goto_b
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 814
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 815
    invoke-virtual {v3}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 816
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_19

    if-eqz v1, :cond_1a

    .line 817
    :cond_19
    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 820
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1b

    if-eqz v1, :cond_1c

    .line 821
    :cond_1b
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 822
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v1

    if-nez v1, :cond_0

    move-object v3, v0

    .line 823
    goto/16 :goto_0

    .line 827
    :catch_3
    move-exception v0

    .line 830
    :cond_1c
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v3

    goto/16 :goto_0

    .line 668
    :cond_1d
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :catch_4
    move-exception v0

    goto/16 :goto_7

    .line 774
    :catch_5
    move-exception v0

    goto/16 :goto_a

    .line 763
    :catch_6
    move-exception v1

    goto/16 :goto_9

    :cond_1e
    move v1, v5

    goto :goto_b

    .line 738
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMantissa(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 842
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 855
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 856
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 858
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 856
    goto :goto_0

    .line 858
    :cond_2
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 4

    .line 870
    if-nez p0, :cond_0

    .line 871
    const/4 v0, 0x1

    .line 878
    :goto_0
    return v0

    .line 873
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 874
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 875
    const/4 v0, 0x0

    goto :goto_0

    .line 873
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 878
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .registers 15

    const/16 v13, 0x39

    const/16 v12, 0x2e

    const/16 v11, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1606
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1715
    :cond_0
    :goto_0
    return v2

    .line 1609
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 1610
    array-length v3, v7

    .line 1616
    aget-char v0, v7, v2

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_2

    aget-char v0, v7, v2

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_7

    :cond_2
    move v6, v1

    .line 1617
    :goto_1
    add-int/lit8 v0, v6, 0x1

    if-le v3, v0, :cond_b

    aget-char v0, v7, v6

    if-ne v0, v11, :cond_b

    invoke-static {p0, v12}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1618
    add-int/lit8 v0, v6, 0x1

    aget-char v0, v7, v0

    const/16 v4, 0x78

    if-eq v0, v4, :cond_3

    add-int/lit8 v0, v6, 0x1

    aget-char v0, v7, v0

    const/16 v4, 0x58

    if-ne v0, v4, :cond_8

    .line 1619
    :cond_3
    add-int/lit8 v0, v6, 0x2

    .line 1620
    if-eq v0, v3, :cond_0

    .line 1624
    :goto_2
    array-length v3, v7

    if-ge v0, v3, :cond_a

    .line 1625
    aget-char v3, v7, v0

    if-lt v3, v11, :cond_4

    aget-char v3, v7, v0

    if-le v3, v13, :cond_6

    :cond_4
    aget-char v3, v7, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_5

    aget-char v3, v7, v0

    const/16 v4, 0x66

    if-le v3, v4, :cond_6

    :cond_5
    aget-char v3, v7, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    aget-char v3, v7, v0

    const/16 v4, 0x46

    if-gt v3, v4, :cond_0

    .line 1624
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v6, v2

    .line 1616
    goto :goto_1

    .line 1632
    :cond_8
    add-int/lit8 v0, v6, 0x1

    aget-char v0, v7, v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1634
    add-int/lit8 v0, v6, 0x1

    .line 1635
    :goto_3
    array-length v3, v7

    if-ge v0, v3, :cond_9

    .line 1636
    aget-char v3, v7, v0

    if-lt v3, v11, :cond_0

    aget-char v3, v7, v0

    const/16 v4, 0x37

    if-gt v3, v4, :cond_0

    .line 1635
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v2, v1

    .line 1640
    goto :goto_0

    :cond_a
    move v2, v1

    .line 1631
    goto :goto_0

    .line 1617
    :cond_b
    add-int/lit8 v8, v3, -0x1

    move v0, v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 1648
    :goto_4
    if-lt v6, v8, :cond_c

    add-int/lit8 v9, v8, 0x1

    if-ge v6, v9, :cond_d

    if-eqz v5, :cond_d

    if-nez v0, :cond_d

    .line 1649
    :cond_c
    aget-char v9, v7, v6

    if-lt v9, v11, :cond_14

    aget-char v9, v7, v6

    if-gt v9, v13, :cond_14

    move v0, v1

    move v5, v2

    .line 1679
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1681
    :cond_d
    array-length v8, v7

    if-ge v6, v8, :cond_13

    .line 1682
    aget-char v8, v7, v6

    if-lt v8, v11, :cond_e

    aget-char v8, v7, v6

    if-gt v8, v13, :cond_e

    move v2, v1

    .line 1684
    goto/16 :goto_0

    .line 1686
    :cond_e
    aget-char v8, v7, v6

    const/16 v9, 0x65

    if-eq v8, v9, :cond_0

    aget-char v8, v7, v6

    const/16 v9, 0x45

    if-eq v8, v9, :cond_0

    .line 1690
    aget-char v8, v7, v6

    if-ne v8, v12, :cond_f

    .line 1691
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    move v2, v0

    .line 1696
    goto/16 :goto_0

    .line 1698
    :cond_f
    if-nez v5, :cond_11

    aget-char v5, v7, v6

    const/16 v8, 0x64

    if-eq v5, v8, :cond_10

    aget-char v5, v7, v6

    const/16 v8, 0x44

    if-eq v5, v8, :cond_10

    aget-char v5, v7, v6

    const/16 v8, 0x66

    if-eq v5, v8, :cond_10

    aget-char v5, v7, v6

    const/16 v8, 0x46

    if-ne v5, v8, :cond_11

    :cond_10
    move v2, v0

    .line 1703
    goto/16 :goto_0

    .line 1705
    :cond_11
    aget-char v5, v7, v6

    const/16 v8, 0x6c

    if-eq v5, v8, :cond_12

    aget-char v5, v7, v6

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_0

    .line 1708
    :cond_12
    if-eqz v0, :cond_19

    if-nez v3, :cond_19

    if-nez v4, :cond_19

    move v0, v1

    :goto_6
    move v2, v0

    goto/16 :goto_0

    .line 1715
    :cond_13
    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    .line 1649
    :cond_14
    aget-char v9, v7, v6

    if-ne v9, v12, :cond_15

    .line 1654
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    move v4, v1

    .line 1658
    goto :goto_5

    .line 1659
    :cond_15
    aget-char v9, v7, v6

    const/16 v10, 0x65

    if-eq v9, v10, :cond_16

    aget-char v9, v7, v6

    const/16 v10, 0x45

    if-ne v9, v10, :cond_17

    :cond_16
    if-nez v3, :cond_0

    .line 1665
    if-eqz v0, :cond_0

    move v3, v1

    move v5, v1

    .line 1669
    goto :goto_5

    .line 1670
    :cond_17
    aget-char v0, v7, v6

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_18

    aget-char v0, v7, v6

    const/16 v9, 0x2d

    if-ne v0, v9, :cond_0

    :cond_18
    if-eqz v5, :cond_0

    move v0, v2

    move v5, v2

    .line 1675
    goto/16 :goto_5

    :cond_19
    move v0, v2

    goto :goto_6
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .registers 2

    .line 1550
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1580
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1736
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return v0

    .line 1739
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    .line 1742
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 1743
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 1746
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 1748
    :cond_2
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static max(BBB)B
    .registers 4

    .line 1497
    if-le p1, p0, :cond_1

    move v0, p1

    .line 1500
    :goto_0
    if-le p2, v0, :cond_0

    .line 1503
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static varargs max([B)B
    .registers 4

    .line 1246
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1249
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .line 1250
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1251
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_0

    .line 1252
    aget-byte v1, p0, v0

    .line 1250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    :cond_1
    return v1
.end method

.method public static max(DDD)D
    .registers 8

    .line 1519
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .registers 7

    .line 1271
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1274
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 1275
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1276
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1277
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1284
    :cond_0
    return-wide v2

    .line 1279
    :cond_1
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_2

    .line 1280
    aget-wide v2, p0, v0

    .line 1275
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(FFF)F
    .registers 4

    .line 1535
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .registers 4

    .line 1299
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1302
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 1303
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1304
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1305
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1312
    :cond_0
    return v1

    .line 1307
    :cond_1
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 1308
    aget v1, p0, v0

    .line 1303
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(III)I
    .registers 4

    .line 1461
    if-le p1, p0, :cond_1

    move v0, p1

    .line 1464
    :goto_0
    if-le p2, v0, :cond_0

    .line 1467
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static varargs max([I)I
    .registers 4

    .line 1198
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1201
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1202
    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1203
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1204
    aget v0, p0, v1

    .line 1202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1208
    :cond_1
    return v0
.end method

.method public static max(JJJ)J
    .registers 10

    .line 1443
    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    move-wide v0, p2

    .line 1446
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    .line 1449
    :goto_1
    return-wide p4

    :cond_0
    move-wide p4, v0

    goto :goto_1

    :cond_1
    move-wide v0, p0

    goto :goto_0
.end method

.method public static varargs max([J)J
    .registers 7

    .line 1174
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1177
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1178
    const/4 v2, 0x1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1179
    aget-wide v4, p0, v2

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    .line 1180
    aget-wide v0, p0, v2

    .line 1178
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1184
    :cond_1
    return-wide v0
.end method

.method public static max(SSS)S
    .registers 4

    .line 1479
    if-le p1, p0, :cond_1

    move v0, p1

    .line 1482
    :goto_0
    if-le p2, v0, :cond_0

    .line 1485
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static varargs max([S)S
    .registers 4

    .line 1222
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1225
    const/4 v0, 0x0

    aget-short v1, p0, v0

    .line 1226
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1227
    aget-short v2, p0, v0

    if-le v2, v1, :cond_0

    .line 1228
    aget-short v1, p0, v0

    .line 1226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1232
    :cond_1
    return v1
.end method

.method public static min(BBB)B
    .registers 4

    .line 1391
    if-ge p1, p0, :cond_1

    move v0, p1

    .line 1394
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1397
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static varargs min([B)B
    .registers 4

    .line 1092
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1095
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .line 1096
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1097
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 1098
    aget-byte v1, p0, v0

    .line 1096
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1102
    :cond_1
    return v1
.end method

.method public static min(DDD)D
    .registers 8

    .line 1413
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .registers 7

    .line 1117
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1120
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 1121
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1122
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1123
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1130
    :cond_0
    return-wide v2

    .line 1125
    :cond_1
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_2

    .line 1126
    aget-wide v2, p0, v0

    .line 1121
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(FFF)F
    .registers 4

    .line 1429
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .registers 4

    .line 1145
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1148
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 1149
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1150
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1151
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1158
    :cond_0
    return v1

    .line 1153
    :cond_1
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 1154
    aget v1, p0, v0

    .line 1149
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(III)I
    .registers 4

    .line 1355
    if-ge p1, p0, :cond_1

    move v0, p1

    .line 1358
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1361
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static varargs min([I)I
    .registers 4

    .line 1044
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1047
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1048
    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1049
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1050
    aget v0, p0, v1

    .line 1048
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1054
    :cond_1
    return v0
.end method

.method public static min(JJJ)J
    .registers 10

    .line 1337
    cmp-long v0, p2, p0

    if-gez v0, :cond_1

    move-wide v0, p2

    .line 1340
    :goto_0
    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    .line 1343
    :goto_1
    return-wide p4

    :cond_0
    move-wide p4, v0

    goto :goto_1

    :cond_1
    move-wide v0, p0

    goto :goto_0
.end method

.method public static varargs min([J)J
    .registers 7

    .line 1020
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1023
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1024
    const/4 v2, 0x1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1025
    aget-wide v4, p0, v2

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 1026
    aget-wide v0, p0, v2

    .line 1024
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1030
    :cond_1
    return-wide v0
.end method

.method public static min(SSS)S
    .registers 4

    .line 1373
    if-ge p1, p0, :cond_1

    move v0, p1

    .line 1376
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1379
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static varargs min([S)S
    .registers 4

    .line 1068
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1071
    const/4 v0, 0x0

    aget-short v1, p0, v0

    .line 1072
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1073
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 1074
    aget-short v1, p0, v0

    .line 1072
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1078
    :cond_1
    return v1
.end method

.method public static toByte(Ljava/lang/String;)B
    .registers 2

    .line 361
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .registers 3

    .line 382
    if-nez p0, :cond_0

    .line 388
    :goto_0
    return p1

    .line 386
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3

    .line 268
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 4

    .line 291
    if-nez p0, :cond_0

    .line 297
    :goto_0
    return-wide p1

    .line 295
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toDouble(Ljava/math/BigDecimal;)D
    .registers 3

    .line 318
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/math/BigDecimal;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/math/BigDecimal;D)D
    .registers 4

    .line 339
    if-nez p0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .registers 2

    .line 216
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 3

    .line 239
    if-nez p0, :cond_0

    .line 245
    :goto_0
    return p1

    .line 243
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2

    .line 117
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 3

    .line 138
    if-nez p0, :cond_0

    .line 144
    :goto_0
    return p1

    .line 142
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3

    .line 166
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 4

    .line 187
    if-nez p0, :cond_0

    .line 193
    :goto_0
    return-wide p1

    .line 191
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .registers 3

    .line 531
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5

    .line 547
    if-nez p0, :cond_0

    .line 548
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 550
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;
    .registers 3

    .line 492
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5

    .line 508
    if-nez p0, :cond_0

    .line 509
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 511
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3

    .line 570
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 4

    .line 586
    if-nez p0, :cond_0

    .line 587
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 589
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3

    .line 454
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 4

    .line 470
    if-nez p0, :cond_0

    .line 471
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 473
    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public static toShort(Ljava/lang/String;)S
    .registers 2

    .line 410
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .registers 3

    .line 431
    if-nez p0, :cond_0

    .line 437
    :goto_0
    return p1

    .line 435
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .registers 4

    const/4 v1, 0x0

    .line 1322
    const-string v0, "array"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Array cannot be empty."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1324
    return-void

    :cond_0
    move v0, v1

    .line 1323
    goto :goto_0
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1752
    move v0, v1

    .line 1753
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_5

    .line 1754
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    move v3, v2

    .line 1755
    :goto_1
    if-eqz v3, :cond_0

    .line 1756
    add-int/lit8 v0, v0, 0x1

    .line 1758
    :cond_0
    if-le v0, v2, :cond_3

    .line 1765
    :cond_1
    :goto_2
    return v1

    :cond_2
    move v3, v1

    .line 1754
    goto :goto_1

    .line 1761
    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1753
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1765
    goto :goto_2
.end method
