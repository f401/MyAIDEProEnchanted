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
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 65
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 69
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 71
    const/high16 v0, -0x40800000  # -1.0f

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
    if-ne p0, p1, :cond_4

    .line 1780
    const/4 v0, 0x0

    .line 1782
    :goto_3
    return v0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static compare(JJ)I
    .registers 6

    .line 1796
    cmp-long v0, p0, p2

    if-nez v0, :cond_6

    .line 1797
    const/4 v0, 0x0

    .line 1799
    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-gez v0, :cond_c

    const/4 v0, -0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static compare(SS)I
    .registers 3

    .line 1813
    if-ne p0, p1, :cond_4

    .line 1814
    const/4 v0, 0x0

    .line 1816
    :goto_3
    return v0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3

    .line 997
    if-nez p0, :cond_4

    .line 998
    const/4 v0, 0x0

    .line 1004
    :goto_3
    return-object v0

    .line 1001
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1004
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 1002
    :cond_10
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
    if-nez p0, :cond_8

    .line 963
    const/4 v0, 0x0

    .line 984
    :goto_7
    return-object v0

    .line 966
    :cond_8
    const/16 v5, 0xa

    .line 968
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    move v0, v1

    move v3, v1

    .line 972
    :goto_14
    const-string v1, "0x"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "0X"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 974
    :cond_24
    add-int/lit8 v3, v3, 0x2

    move v1, v4

    .line 983
    :goto_27
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 984
    if-eqz v0, :cond_58

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_7

    .line 975
    :cond_37
    const-string v1, "#"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 977
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_27

    .line 978
    :cond_43
    const-string v1, "0"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v3, 0x1

    if-le v1, v2, :cond_5a

    .line 979
    const/16 v1, 0x8

    .line 980
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_58
    move-object v0, v2

    goto :goto_7

    :cond_5a
    move v1, v5

    goto :goto_27

    :cond_5c
    move v0, v2

    move v3, v2

    goto :goto_14
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2

    .line 908
    if-nez p0, :cond_4

    .line 909
    const/4 v0, 0x0

    .line 911
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2

    .line 892
    if-nez p0, :cond_4

    .line 893
    const/4 v0, 0x0

    .line 895
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_3
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 926
    if-nez p0, :cond_4

    .line 927
    const/4 v0, 0x0

    .line 930
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2

    .line 945
    if-nez p0, :cond_4

    .line 946
    const/4 v0, 0x0

    .line 948
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 12

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 664
    if-nez p0, :cond_8

    .line 830
    :cond_7
    :goto_7
    return-object v3

    .line 667
    :cond_8
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23b

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

    :goto_33
    if-ge v0, v2, :cond_5b

    aget-object v7, v1, v0

    .line 675
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 676
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 677
    add-int/lit8 v2, v0, 0x0

    .line 680
    :goto_43
    if-lez v2, :cond_86

    move v1, v2

    move v3, v2

    move v0, v5

    .line 682
    :goto_48
    if-ge v3, v6, :cond_5d

    .line 683
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 684
    const/16 v2, 0x30

    if-ne v0, v2, :cond_5d

    .line 685
    add-int/lit8 v1, v1, 0x1

    .line 682
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_48

    .line 674
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_5b
    move v2, v5

    goto :goto_43

    .line 690
    :cond_5d
    sub-int v1, v6, v1

    .line 691
    const/16 v2, 0x10

    if-gt v1, v2, :cond_6b

    const/16 v2, 0x10

    if-ne v1, v2, :cond_70

    const/16 v2, 0x37

    if-le v0, v2, :cond_70

    .line 692
    :cond_6b
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_7

    .line 694
    :cond_70
    const/16 v2, 0x8

    if-gt v1, v2, :cond_7c

    const/16 v2, 0x8

    if-ne v1, v2, :cond_81

    const/16 v1, 0x37

    if-le v0, v1, :cond_81

    .line 695
    :cond_7c
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_7

    .line 697
    :cond_81
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    .line 699
    :cond_86
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
    if-le v1, v9, :cond_117

    .line 709
    if-le v8, v9, :cond_110

    .line 710
    if-lt v8, v1, :cond_f9

    if-gt v8, v6, :cond_f9

    .line 713
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 717
    :goto_af
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 729
    :goto_b4
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1b6

    const/16 v0, 0x2e

    if-eq v7, v0, :cond_1b6

    .line 730
    if-le v8, v9, :cond_cc

    add-int/lit8 v0, v6, -0x1

    if-ge v8, v0, :cond_cc

    .line 731
    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 736
    :cond_cc
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 737
    invoke-static {v1}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-static {v3}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    move v0, v4

    .line 738
    :goto_df
    sparse-switch v7, :sswitch_data_24e

    .line 784
    :goto_e2
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
    :cond_f9
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
    :cond_110
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_af

    .line 719
    :cond_117
    if-le v8, v9, :cond_139

    .line 720
    if-gt v8, v6, :cond_122

    .line 723
    invoke-static {p0, v8}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_11f
    move-object v1, v0

    move-object v2, v3

    .line 727
    goto :goto_b4

    .line 721
    :cond_122
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
    :cond_139
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11f

    :cond_13e
    move v0, v5

    .line 737
    goto :goto_df

    .line 741
    :sswitch_140
    if-nez v2, :cond_16f

    if-nez v3, :cond_16f

    .line 743
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15c

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_15c

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_162

    :cond_15c
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 745
    :cond_162
    :try_start_162
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_165
    .catch Ljava/lang/NumberFormatException; {:try_start_162 .. :try_end_165} :catch_168

    move-result-object v3

    goto/16 :goto_7

    .line 746
    :catch_168
    move-exception v0

    .line 749
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    goto/16 :goto_7

    .line 752
    :cond_16f
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
    :sswitch_186
    :try_start_186
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 757
    invoke-virtual {v3}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_19a

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_193
    .catch Ljava/lang/NumberFormatException; {:try_start_186 .. :try_end_193} :catch_249

    move-result v1

    cmpl-float v1, v1, v10

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 770
    :cond_19a
    :goto_19a
    :sswitch_19a
    :try_start_19a
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 771
    invoke-virtual {v3}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_1b0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_1a7
    .catch Ljava/lang/NumberFormatException; {:try_start_19a .. :try_end_1a7} :catch_246

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmpl-double v1, v4, v8

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 778
    :cond_1b0
    :goto_1b0
    :try_start_1b0
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_1b3
    .catch Ljava/lang/NumberFormatException; {:try_start_1b0 .. :try_end_1b3} :catch_243

    move-result-object v3

    goto/16 :goto_7

    .line 790
    :cond_1b6
    if-le v8, v9, :cond_1c2

    add-int/lit8 v0, v6, -0x1

    if-ge v8, v0, :cond_1c2

    .line 791
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 795
    :cond_1c2
    if-nez v2, :cond_1da

    if-nez v3, :cond_1da

    .line 798
    :try_start_1c6
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1c9
    .catch Ljava/lang/NumberFormatException; {:try_start_1c6 .. :try_end_1c9} :catch_1cc

    move-result-object v3

    goto/16 :goto_7

    .line 799
    :catch_1cc
    move-exception v0

    .line 803
    :try_start_1cd
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1d0
    .catch Ljava/lang/NumberFormatException; {:try_start_1cd .. :try_end_1d0} :catch_1d3

    move-result-object v3

    goto/16 :goto_7

    .line 804
    :catch_1d3
    move-exception v0

    .line 807
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    goto/16 :goto_7

    .line 811
    :cond_1da
    invoke-static {v1}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24c

    invoke-static {v3}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24c

    move v1, v4

    .line 813
    :goto_1e7
    :try_start_1e7
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 814
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 815
    invoke-virtual {v3}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_20d

    .line 816
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v10

    if-nez v2, :cond_1ff

    if-eqz v1, :cond_20d

    .line 817
    :cond_1ff
    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 820
    :cond_20d
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_235

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_21f

    if-eqz v1, :cond_235

    .line 821
    :cond_21f
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 822
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_22e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e7 .. :try_end_22e} :catch_234

    move-result v1

    if-nez v1, :cond_7

    move-object v3, v0

    .line 823
    goto/16 :goto_7

    .line 827
    :catch_234
    move-exception v0

    .line 830
    :cond_235
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v3

    goto/16 :goto_7

    .line 668
    :cond_23b
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :catch_243
    move-exception v0

    goto/16 :goto_e2

    .line 774
    :catch_246
    move-exception v0

    goto/16 :goto_1b0

    .line 763
    :catch_249
    move-exception v1

    goto/16 :goto_19a

    :cond_24c
    move v1, v5

    goto :goto_1e7

    .line 738
    :sswitch_data_24e
    .sparse-switch
        0x44 -> :sswitch_19a
        0x46 -> :sswitch_186
        0x4c -> :sswitch_140
        0x64 -> :sswitch_19a
        0x66 -> :sswitch_186
        0x6c -> :sswitch_140
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

    if-eq v0, v3, :cond_e

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_16

    :cond_e
    move v0, v2

    .line 858
    :goto_f
    if-eqz v0, :cond_18

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    move v0, v1

    .line 856
    goto :goto_f

    .line 858
    :cond_18
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 4

    .line 870
    if-nez p0, :cond_4

    .line 871
    const/4 v0, 0x1

    .line 878
    :goto_3
    return v0

    .line 873
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_19

    .line 874
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_16

    .line 875
    const/4 v0, 0x0

    goto :goto_3

    .line 873
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 878
    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_3
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

    if-eqz v0, :cond_f

    .line 1715
    :cond_e
    :goto_e
    return v2

    .line 1609
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 1610
    array-length v3, v7

    .line 1616
    aget-char v0, v7, v2

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_20

    aget-char v0, v7, v2

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_69

    :cond_20
    move v6, v1

    .line 1617
    :goto_21
    add-int/lit8 v0, v6, 0x1

    if-le v3, v0, :cond_8b

    aget-char v0, v7, v6

    if-ne v0, v11, :cond_8b

    invoke-static {p0, v12}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 1618
    add-int/lit8 v0, v6, 0x1

    aget-char v0, v7, v0

    const/16 v4, 0x78

    if-eq v0, v4, :cond_3f

    add-int/lit8 v0, v6, 0x1

    aget-char v0, v7, v0

    const/16 v4, 0x58

    if-ne v0, v4, :cond_6b

    .line 1619
    :cond_3f
    add-int/lit8 v0, v6, 0x2

    .line 1620
    if-eq v0, v3, :cond_e

    .line 1624
    :goto_43
    array-length v3, v7

    if-ge v0, v3, :cond_89

    .line 1625
    aget-char v3, v7, v0

    if-lt v3, v11, :cond_4e

    aget-char v3, v7, v0

    if-le v3, v13, :cond_66

    :cond_4e
    aget-char v3, v7, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_5a

    aget-char v3, v7, v0

    const/16 v4, 0x66

    if-le v3, v4, :cond_66

    :cond_5a
    aget-char v3, v7, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_e

    aget-char v3, v7, v0

    const/16 v4, 0x46

    if-gt v3, v4, :cond_e

    .line 1624
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_69
    move v6, v2

    .line 1616
    goto :goto_21

    .line 1632
    :cond_6b
    add-int/lit8 v0, v6, 0x1

    aget-char v0, v7, v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1634
    add-int/lit8 v0, v6, 0x1

    .line 1635
    :goto_77
    array-length v3, v7

    if-ge v0, v3, :cond_87

    .line 1636
    aget-char v3, v7, v0

    if-lt v3, v11, :cond_e

    aget-char v3, v7, v0

    const/16 v4, 0x37

    if-gt v3, v4, :cond_e

    .line 1635
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    :cond_87
    move v2, v1

    .line 1640
    goto :goto_e

    :cond_89
    move v2, v1

    .line 1631
    goto :goto_e

    .line 1617
    :cond_8b
    add-int/lit8 v8, v3, -0x1

    move v0, v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 1648
    :goto_91
    if-lt v6, v8, :cond_9b

    add-int/lit8 v9, v8, 0x1

    if-ge v6, v9, :cond_a8

    if-eqz v5, :cond_a8

    if-nez v0, :cond_a8

    .line 1649
    :cond_9b
    aget-char v9, v7, v6

    if-lt v9, v11, :cond_107

    aget-char v9, v7, v6

    if-gt v9, v13, :cond_107

    move v0, v1

    move v5, v2

    .line 1679
    :goto_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    .line 1681
    :cond_a8
    array-length v8, v7

    if-ge v6, v8, :cond_100

    .line 1682
    aget-char v8, v7, v6

    if-lt v8, v11, :cond_b6

    aget-char v8, v7, v6

    if-gt v8, v13, :cond_b6

    move v2, v1

    .line 1684
    goto/16 :goto_e

    .line 1686
    :cond_b6
    aget-char v8, v7, v6

    const/16 v9, 0x65

    if-eq v8, v9, :cond_e

    aget-char v8, v7, v6

    const/16 v9, 0x45

    if-eq v8, v9, :cond_e

    .line 1690
    aget-char v8, v7, v6

    if-ne v8, v12, :cond_cd

    .line 1691
    if-nez v4, :cond_e

    if-nez v3, :cond_e

    move v2, v0

    .line 1696
    goto/16 :goto_e

    .line 1698
    :cond_cd
    if-nez v5, :cond_ea

    aget-char v5, v7, v6

    const/16 v8, 0x64

    if-eq v5, v8, :cond_e7

    aget-char v5, v7, v6

    const/16 v8, 0x44

    if-eq v5, v8, :cond_e7

    aget-char v5, v7, v6

    const/16 v8, 0x66

    if-eq v5, v8, :cond_e7

    aget-char v5, v7, v6

    const/16 v8, 0x46

    if-ne v5, v8, :cond_ea

    :cond_e7
    move v2, v0

    .line 1703
    goto/16 :goto_e

    .line 1705
    :cond_ea
    aget-char v5, v7, v6

    const/16 v8, 0x6c

    if-eq v5, v8, :cond_f6

    aget-char v5, v7, v6

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_e

    .line 1708
    :cond_f6
    if-eqz v0, :cond_136

    if-nez v3, :cond_136

    if-nez v4, :cond_136

    move v0, v1

    :goto_fd
    move v2, v0

    goto/16 :goto_e

    .line 1715
    :cond_100
    if-nez v5, :cond_e

    if-eqz v0, :cond_e

    move v2, v1

    goto/16 :goto_e

    .line 1649
    :cond_107
    aget-char v9, v7, v6

    if-ne v9, v12, :cond_111

    .line 1654
    if-nez v4, :cond_e

    if-nez v3, :cond_e

    move v4, v1

    .line 1658
    goto :goto_a5

    .line 1659
    :cond_111
    aget-char v9, v7, v6

    const/16 v10, 0x65

    if-eq v9, v10, :cond_11d

    aget-char v9, v7, v6

    const/16 v10, 0x45

    if-ne v9, v10, :cond_124

    :cond_11d
    if-nez v3, :cond_e

    .line 1665
    if-eqz v0, :cond_e

    move v3, v1

    move v5, v1

    .line 1669
    goto :goto_a5

    .line 1670
    :cond_124
    aget-char v0, v7, v6

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_130

    aget-char v0, v7, v6

    const/16 v9, 0x2d

    if-ne v0, v9, :cond_e

    :cond_130
    if-eqz v5, :cond_e

    move v0, v2

    move v5, v2

    .line 1675
    goto/16 :goto_a5

    :cond_136
    move v0, v2

    goto :goto_fd
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

    if-eqz v1, :cond_9

    .line 1748
    :cond_8
    :goto_8
    return v0

    .line 1739
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_8

    .line 1742
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2a

    .line 1743
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 1746
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_8

    .line 1748
    :cond_2a
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_8
.end method

.method public static max(BBB)B
    .registers 4

    .line 1497
    if-le p1, p0, :cond_8

    move v0, p1

    .line 1500
    :goto_3
    if-le p2, v0, :cond_6

    .line 1503
    :goto_5
    return p2

    :cond_6
    move p2, v0

    goto :goto_5

    :cond_8
    move v0, p0

    goto :goto_3
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

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1251
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_10

    .line 1252
    aget-byte v1, p0, v0

    .line 1250
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1256
    :cond_13
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

    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 1276
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1277
    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    .line 1284
    :cond_14
    return-wide v2

    .line 1279
    :cond_15
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_1d

    .line 1280
    aget-wide v2, p0, v0

    .line 1275
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
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

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_14

    .line 1304
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1305
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 1312
    :cond_14
    return v1

    .line 1307
    :cond_15
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1d

    .line 1308
    aget v1, p0, v0

    .line 1303
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static max(III)I
    .registers 4

    .line 1461
    if-le p1, p0, :cond_8

    move v0, p1

    .line 1464
    :goto_3
    if-le p2, v0, :cond_6

    .line 1467
    :goto_5
    return p2

    :cond_6
    move p2, v0

    goto :goto_5

    :cond_8
    move v0, p0

    goto :goto_3
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

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1203
    aget v2, p0, v1

    if-le v2, v0, :cond_10

    .line 1204
    aget v0, p0, v1

    .line 1202
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1208
    :cond_13
    return v0
.end method

.method public static max(JJJ)J
    .registers 10

    .line 1443
    cmp-long v0, p2, p0

    if-lez v0, :cond_c

    move-wide v0, p2

    .line 1446
    :goto_5
    cmp-long v2, p4, v0

    if-lez v2, :cond_a

    .line 1449
    :goto_9
    return-wide p4

    :cond_a
    move-wide p4, v0

    goto :goto_9

    :cond_c
    move-wide v0, p0

    goto :goto_5
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

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_15

    .line 1179
    aget-wide v4, p0, v2

    cmp-long v3, v4, v0

    if-lez v3, :cond_12

    .line 1180
    aget-wide v0, p0, v2

    .line 1178
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1184
    :cond_15
    return-wide v0
.end method

.method public static max(SSS)S
    .registers 4

    .line 1479
    if-le p1, p0, :cond_8

    move v0, p1

    .line 1482
    :goto_3
    if-le p2, v0, :cond_6

    .line 1485
    :goto_5
    return p2

    :cond_6
    move p2, v0

    goto :goto_5

    :cond_8
    move v0, p0

    goto :goto_3
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

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1227
    aget-short v2, p0, v0

    if-le v2, v1, :cond_10

    .line 1228
    aget-short v1, p0, v0

    .line 1226
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1232
    :cond_13
    return v1
.end method

.method public static min(BBB)B
    .registers 4

    .line 1391
    if-ge p1, p0, :cond_8

    move v0, p1

    .line 1394
    :goto_3
    if-ge p2, v0, :cond_6

    .line 1397
    :goto_5
    return p2

    :cond_6
    move p2, v0

    goto :goto_5

    :cond_8
    move v0, p0

    goto :goto_3
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

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1097
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_10

    .line 1098
    aget-byte v1, p0, v0

    .line 1096
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1102
    :cond_13
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

    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 1122
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1123
    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    .line 1130
    :cond_14
    return-wide v2

    .line 1125
    :cond_15
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_1d

    .line 1126
    aget-wide v2, p0, v0

    .line 1121
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
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

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_14

    .line 1150
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1151
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 1158
    :cond_14
    return v1

    .line 1153
    :cond_15
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1d

    .line 1154
    aget v1, p0, v0

    .line 1149
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static min(III)I
    .registers 4

    .line 1355
    if-ge p1, p0, :cond_8

    move v0, p1

    .line 1358
    :goto_3
    if-ge p2, v0, :cond_6

    .line 1361
    :goto_5
    return p2

    :cond_6
    move p2, v0

    goto :goto_5

    :cond_8
    move v0, p0

    goto :goto_3
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

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 1049
    aget v2, p0, v1

    if-ge v2, v0, :cond_10

    .line 1050
    aget v0, p0, v1

    .line 1048
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1054
    :cond_13
    return v0
.end method

.method public static min(JJJ)J
    .registers 10

    .line 1337
    cmp-long v0, p2, p0

    if-gez v0, :cond_c

    move-wide v0, p2

    .line 1340
    :goto_5
    cmp-long v2, p4, v0

    if-gez v2, :cond_a

    .line 1343
    :goto_9
    return-wide p4

    :cond_a
    move-wide p4, v0

    goto :goto_9

    :cond_c
    move-wide v0, p0

    goto :goto_5
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

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_15

    .line 1025
    aget-wide v4, p0, v2

    cmp-long v3, v4, v0

    if-gez v3, :cond_12

    .line 1026
    aget-wide v0, p0, v2

    .line 1024
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1030
    :cond_15
    return-wide v0
.end method

.method public static min(SSS)S
    .registers 4

    .line 1373
    if-ge p1, p0, :cond_8

    move v0, p1

    .line 1376
    :goto_3
    if-ge p2, v0, :cond_6

    .line 1379
    :goto_5
    return p2

    :cond_6
    move p2, v0

    goto :goto_5

    :cond_8
    move v0, p0

    goto :goto_3
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

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 1073
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_10

    .line 1074
    aget-short v1, p0, v0

    .line 1072
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1078
    :cond_13
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
    if-nez p0, :cond_3

    .line 388
    :goto_2
    return p1

    .line 386
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 387
    :catch_8
    move-exception v0

    goto :goto_2
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
    if-nez p0, :cond_3

    .line 297
    :goto_2
    return-wide p1

    .line 295
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide p1

    goto :goto_2

    .line 296
    :catch_8
    move-exception v0

    goto :goto_2
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
    if-nez p0, :cond_3

    :goto_2
    return-wide p1

    :cond_3
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    goto :goto_2
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
    if-nez p0, :cond_3

    .line 245
    :goto_2
    return p1

    .line 243
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 244
    :catch_8
    move-exception v0

    goto :goto_2
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
    if-nez p0, :cond_3

    .line 144
    :goto_2
    return p1

    .line 142
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 143
    :catch_8
    move-exception v0

    goto :goto_2
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
    if-nez p0, :cond_3

    .line 193
    :goto_2
    return-wide p1

    .line 191
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide p1

    goto :goto_2

    .line 192
    :catch_8
    move-exception v0

    goto :goto_2
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
    if-nez p0, :cond_5

    .line 548
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 550
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_4
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
    if-nez p0, :cond_5

    .line 509
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 511
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_4
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
    if-nez p0, :cond_5

    .line 587
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 589
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_4
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
    if-nez p0, :cond_5

    .line 471
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 473
    :goto_4
    return-object v0

    :cond_5
    if-nez p2, :cond_9

    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    :cond_9
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_4
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
    if-nez p0, :cond_3

    .line 437
    :goto_2
    return p1

    .line 435
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 436
    :catch_8
    move-exception v0

    goto :goto_2
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

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_f
    const-string v2, "Array cannot be empty."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1324
    return-void

    :cond_17
    move v0, v1

    .line 1323
    goto :goto_f
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1752
    move v0, v1

    .line 1753
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_2a

    .line 1754
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_19

    move v3, v2

    .line 1755
    :goto_12
    if-eqz v3, :cond_16

    .line 1756
    add-int/lit8 v0, v0, 0x1

    .line 1758
    :cond_16
    if-le v0, v2, :cond_1b

    .line 1765
    :cond_18
    :goto_18
    return v1

    :cond_19
    move v3, v1

    .line 1754
    goto :goto_12

    .line 1761
    :cond_1b
    if-nez v3, :cond_27

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1753
    :cond_27
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_2a
    move v1, v2

    .line 1765
    goto :goto_18
.end method
