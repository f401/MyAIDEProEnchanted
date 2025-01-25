.class public Lcom/spartacusrex/spartacuside/helper/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;
    }
.end annotation


# static fields
.field private static final INSERTIONSORT_THRESHOLD:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 3358
    new-instance v0, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;

    invoke-direct {v0, p0}, Lcom/spartacusrex/spartacuside/helper/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .registers 4

    .line 1685
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([BIIB)I
    .registers 5

    .line 1720
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1721
    invoke-static {p0, p1, p2, p3}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CC)I
    .registers 4

    .line 1606
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CIIC)I
    .registers 5

    .line 1641
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1642
    invoke-static {p0, p1, p2, p3}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DD)I
    .registers 6

    .line 1765
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DIID)I
    .registers 6

    .line 1801
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1802
    invoke-static {p0, p1, p2, p3, p4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FF)I
    .registers 4

    .line 1854
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FIIF)I
    .registers 5

    .line 1890
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1891
    invoke-static {p0, p1, p2, p3}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([II)I
    .registers 4

    .line 1448
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([IIII)I
    .registers 5

    .line 1483
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1484
    invoke-static {p0, p1, p2, p3}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([JIIJ)I
    .registers 6

    .line 1404
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1405
    invoke-static {p0, p1, p2, p3, p4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([JJ)I
    .registers 6

    .line 1369
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 5

    .line 1995
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1996
    invoke-static {p0, p1, p2, p3}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .line 2094
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2095
    invoke-static {p0, p1, p2, p3, p4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 1952
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .line 2050
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SIIS)I
    .registers 5

    .line 1562
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1563
    invoke-static {p0, p1, p2, p3}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SS)I
    .registers 4

    .line 1527
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method private static binarySearch0([BIIB)I
    .registers 8

    .line 1727
    .line 1728
    add-int/lit8 v1, p2, -0x1

    move v0, p1

    .line 1730
    :goto_3
    if-gt v0, v1, :cond_17

    .line 1731
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1732
    aget-byte v3, p0, v2

    .line 1734
    if-ge v3, p3, :cond_10

    .line 1735
    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    .line 1736
    :cond_10
    if-le v3, p3, :cond_15

    .line 1737
    add-int/lit8 v1, v2, -0x1

    goto :goto_3

    :cond_15
    move v0, v2

    .line 1741
    :goto_16
    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_16
.end method

.method private static binarySearch0([CIIC)I
    .registers 8

    .line 1648
    .line 1649
    add-int/lit8 v1, p2, -0x1

    move v0, p1

    .line 1651
    :goto_3
    if-gt v0, v1, :cond_17

    .line 1652
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1653
    aget-char v3, p0, v2

    .line 1655
    if-ge v3, p3, :cond_10

    .line 1656
    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    .line 1657
    :cond_10
    if-le v3, p3, :cond_15

    .line 1658
    add-int/lit8 v1, v2, -0x1

    goto :goto_3

    :cond_15
    move v0, v2

    .line 1662
    :goto_16
    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_16
.end method

.method private static binarySearch0([DIID)I
    .registers 14

    .line 1808
    add-int/lit8 v0, p2, -0x1

    move v1, p1

    .line 1811
    :goto_3
    if-gt v1, v0, :cond_31

    .line 1812
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1813
    aget-wide v4, p0, v2

    .line 1815
    cmpg-double v3, v4, p3

    if-gez v3, :cond_12

    .line 1816
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 1817
    :cond_12
    cmpl-double v3, v4, p3

    if-lez v3, :cond_19

    .line 1818
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 1820
    :cond_19
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 1821
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 1822
    cmp-long v3, v4, v6

    if-nez v3, :cond_27

    move v0, v2

    .line 1830
    :goto_26
    return v0

    .line 1824
    :cond_27
    cmp-long v3, v4, v6

    if-gez v3, :cond_2e

    .line 1825
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 1827
    :cond_2e
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 1830
    :cond_31
    add-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    goto :goto_26
.end method

.method private static binarySearch0([FIIF)I
    .registers 9

    .line 1897
    add-int/lit8 v0, p2, -0x1

    move v1, p1

    .line 1900
    :goto_3
    if-gt v1, v0, :cond_2d

    .line 1901
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1902
    aget v3, p0, v2

    .line 1904
    cmpg-float v4, v3, p3

    if-gez v4, :cond_12

    .line 1905
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 1906
    :cond_12
    cmpl-float v4, v3, p3

    if-lez v4, :cond_19

    .line 1907
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 1909
    :cond_19
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 1910
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 1911
    if-ne v3, v4, :cond_25

    move v0, v2

    .line 1919
    :goto_24
    return v0

    .line 1913
    :cond_25
    if-ge v3, v4, :cond_2a

    .line 1914
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 1916
    :cond_2a
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 1919
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    goto :goto_24
.end method

.method private static binarySearch0([IIII)I
    .registers 8

    .line 1490
    .line 1491
    add-int/lit8 v1, p2, -0x1

    move v0, p1

    .line 1493
    :goto_3
    if-gt v0, v1, :cond_17

    .line 1494
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1495
    aget v3, p0, v2

    .line 1497
    if-ge v3, p3, :cond_10

    .line 1498
    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    .line 1499
    :cond_10
    if-le v3, p3, :cond_15

    .line 1500
    add-int/lit8 v1, v2, -0x1

    goto :goto_3

    :cond_15
    move v0, v2

    .line 1504
    :goto_16
    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_16
.end method

.method private static binarySearch0([JIIJ)I
    .registers 12

    .line 1411
    .line 1412
    add-int/lit8 v1, p2, -0x1

    move v0, p1

    .line 1414
    :goto_3
    if-gt v0, v1, :cond_1b

    .line 1415
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1416
    aget-wide v4, p0, v2

    .line 1418
    cmp-long v3, v4, p3

    if-gez v3, :cond_12

    .line 1419
    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    .line 1420
    :cond_12
    cmp-long v1, v4, p3

    if-lez v1, :cond_19

    .line 1421
    add-int/lit8 v1, v2, -0x1

    goto :goto_3

    :cond_19
    move v0, v2

    .line 1425
    :goto_1a
    return v0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_1a
.end method

.method private static binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 8

    .line 2002
    .line 2003
    add-int/lit8 v2, p2, -0x1

    move v1, p1

    .line 2005
    :goto_3
    if-gt v1, v2, :cond_1f

    .line 2006
    add-int v0, v1, v2

    ushr-int/lit8 v3, v0, 0x1

    .line 2007
    aget-object v0, p0, v3

    check-cast v0, Ljava/lang/Comparable;

    .line 2008
    invoke-interface {v0, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 2010
    if-gez v0, :cond_17

    .line 2011
    add-int/lit8 v0, v3, 0x1

    :goto_15
    move v1, v0

    .line 2016
    goto :goto_3

    .line 2012
    :cond_17
    if-lez v0, :cond_1d

    .line 2013
    add-int/lit8 v2, v3, -0x1

    move v0, v1

    goto :goto_15

    :cond_1d
    move v0, v3

    .line 2017
    :goto_1e
    return v0

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    goto :goto_1e
.end method

.method private static binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .line 2101
    if-nez p4, :cond_7

    .line 2102
    invoke-static {p0, p1, p2, p3}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    .line 2119
    :goto_6
    return v0

    .line 2105
    :cond_7
    add-int/lit8 v1, p2, -0x1

    move v0, p1

    .line 2107
    :goto_a
    if-gt v0, v1, :cond_22

    .line 2108
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2109
    aget-object v3, p0, v2

    .line 2110
    invoke-interface {p4, v3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 2112
    if-gez v3, :cond_1b

    .line 2113
    add-int/lit8 v0, v2, 0x1

    goto :goto_a

    .line 2114
    :cond_1b
    if-lez v3, :cond_20

    .line 2115
    add-int/lit8 v1, v2, -0x1

    goto :goto_a

    :cond_20
    move v0, v2

    .line 2117
    goto :goto_6

    .line 2119
    :cond_22
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_6
.end method

.method private static binarySearch0([SIIS)I
    .registers 8

    .line 1569
    .line 1570
    add-int/lit8 v1, p2, -0x1

    move v0, p1

    .line 1572
    :goto_3
    if-gt v0, v1, :cond_17

    .line 1573
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1574
    aget-short v3, p0, v2

    .line 1576
    if-ge v3, p3, :cond_10

    .line 1577
    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    .line 1578
    :cond_10
    if-le v3, p3, :cond_15

    .line 1579
    add-int/lit8 v1, v2, -0x1

    goto :goto_3

    :cond_15
    move v0, v2

    .line 1583
    :goto_16
    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_16
.end method

.method public static copyOf([BI)[B
    .registers 5

    const/4 v2, 0x0

    .line 2801
    new-array v0, p1, [B

    .line 2802
    array-length v1, p0

    .line 2803
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2802
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2804
    return-object v0
.end method

.method public static copyOf([CI)[C
    .registers 5

    const/4 v2, 0x0

    .line 2897
    new-array v0, p1, [C

    .line 2898
    array-length v1, p0

    .line 2899
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2898
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2900
    return-object v0
.end method

.method public static copyOf([DI)[D
    .registers 5

    const/4 v2, 0x0

    .line 2945
    new-array v0, p1, [D

    .line 2946
    array-length v1, p0

    .line 2947
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2946
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2948
    return-object v0
.end method

.method public static copyOf([FI)[F
    .registers 5

    const/4 v2, 0x0

    .line 2921
    new-array v0, p1, [F

    .line 2922
    array-length v1, p0

    .line 2923
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2922
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2924
    return-object v0
.end method

.method public static copyOf([II)[I
    .registers 5

    const/4 v2, 0x0

    .line 2849
    new-array v0, p1, [I

    .line 2850
    array-length v1, p0

    .line 2851
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2850
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2852
    return-object v0
.end method

.method public static copyOf([JI)[J
    .registers 5

    const/4 v2, 0x0

    .line 2873
    new-array v0, p1, [J

    .line 2874
    array-length v1, p0

    .line 2875
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2874
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2876
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 2749
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 2775
    const-class v0, [Ljava/lang/Object;

    if-ne p2, v0, :cond_10

    .line 2776
    new-array v0, p1, [Ljava/lang/Object;

    .line 2778
    :goto_7
    array-length v1, p0

    .line 2779
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2778
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2780
    return-object v0

    .line 2777
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_7
.end method

.method public static copyOf([SI)[S
    .registers 5

    const/4 v2, 0x0

    .line 2825
    new-array v0, p1, [S

    .line 2826
    array-length v1, p0

    .line 2827
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2826
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2828
    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .registers 5

    const/4 v2, 0x0

    .line 2969
    new-array v0, p1, [Z

    .line 2970
    array-length v1, p0

    .line 2971
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2970
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2972
    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .registers 6

    .line 3077
    sub-int v0, p2, p1

    .line 3078
    if-ltz v0, :cond_11

    .line 3080
    new-array v1, v0, [B

    .line 3081
    array-length v2, p0

    .line 3082
    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3081
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3083
    return-object v1

    .line 3079
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyOfRange([CII)[C
    .registers 6

    .line 3221
    sub-int v0, p2, p1

    .line 3222
    if-ltz v0, :cond_11

    .line 3224
    new-array v1, v0, [C

    .line 3225
    array-length v2, p0

    .line 3226
    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3225
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3227
    return-object v1

    .line 3223
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyOfRange([DII)[D
    .registers 6

    .line 3293
    sub-int v0, p2, p1

    .line 3294
    if-ltz v0, :cond_11

    .line 3296
    new-array v1, v0, [D

    .line 3297
    array-length v2, p0

    .line 3298
    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3297
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3299
    return-object v1

    .line 3295
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyOfRange([FII)[F
    .registers 6

    .line 3257
    sub-int v0, p2, p1

    .line 3258
    if-ltz v0, :cond_11

    .line 3260
    new-array v1, v0, [F

    .line 3261
    array-length v2, p0

    .line 3262
    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3261
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3263
    return-object v1

    .line 3259
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyOfRange([III)[I
    .registers 6

    .line 3149
    sub-int v0, p2, p1

    .line 3150
    if-ltz v0, :cond_11

    .line 3152
    new-array v1, v0, [I

    .line 3153
    array-length v2, p0

    .line 3154
    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3153
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3155
    return-object v1

    .line 3151
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyOfRange([JII)[J
    .registers 6

    .line 3185
    sub-int v0, p2, p1

    .line 3186
    if-ltz v0, :cond_11

    .line 3188
    new-array v1, v0, [J

    .line 3189
    array-length v2, p0

    .line 3190
    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3189
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3191
    return-object v1

    .line 3187
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 3004
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .line 3039
    sub-int v1, p2, p1

    .line 3040
    if-ltz v1, :cond_20

    .line 3042
    const-class v0, [Ljava/lang/Object;

    if-ne p3, v0, :cond_15

    .line 3043
    new-array v0, v1, [Ljava/lang/Object;

    .line 3045
    :goto_a
    array-length v2, p0

    .line 3046
    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3045
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3047
    return-object v0

    .line 3044
    :cond_15
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_a

    .line 3041
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyOfRange([SII)[S
    .registers 6

    .line 3113
    sub-int v0, p2, p1

    .line 3114
    if-ltz v0, :cond_11

    .line 3116
    new-array v1, v0, [S

    .line 3117
    array-length v2, p0

    .line 3118
    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3117
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3119
    return-object v1

    .line 3115
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyOfRange([ZII)[Z
    .registers 6

    .line 3329
    sub-int v0, p2, p1

    .line 3330
    if-ltz v0, :cond_11

    .line 3332
    new-array v1, v0, [Z

    .line 3333
    array-length v2, p0

    .line 3334
    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3333
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3335
    return-object v1

    .line 3331
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3712
    if-ne p0, p1, :cond_6

    move v0, v2

    .line 3755
    :goto_5
    return v0

    .line 3714
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v0, v3

    .line 3715
    goto :goto_5

    .line 3716
    :cond_c
    array-length v5, p0

    .line 3717
    array-length v0, p1

    if-eq v0, v5, :cond_12

    move v0, v3

    .line 3718
    goto :goto_5

    :cond_12
    move v4, v3

    .line 3720
    :goto_13
    if-ge v4, v5, :cond_c6

    .line 3721
    aget-object v0, p0, v4

    .line 3722
    aget-object v1, p1, v4

    .line 3724
    if-ne v0, v1, :cond_1f

    .line 3720
    :cond_1b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_13

    .line 3726
    :cond_1f
    if-nez v0, :cond_23

    move v0, v3

    .line 3727
    goto :goto_5

    .line 3731
    :cond_23
    instance-of v6, v0, [Ljava/lang/Object;

    if-eqz v6, :cond_37

    instance-of v6, v1, [Ljava/lang/Object;

    if-eqz v6, :cond_37

    .line 3732
    check-cast v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .line 3752
    :goto_33
    if-nez v0, :cond_1b

    move v0, v3

    .line 3753
    goto :goto_5

    .line 3733
    :cond_37
    instance-of v6, v0, [B

    if-eqz v6, :cond_48

    instance-of v6, v1, [B

    if-eqz v6, :cond_48

    .line 3734
    check-cast v0, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_33

    .line 3735
    :cond_48
    instance-of v6, v0, [S

    if-eqz v6, :cond_59

    instance-of v6, v1, [S

    if-eqz v6, :cond_59

    .line 3736
    check-cast v0, [S

    check-cast v1, [S

    invoke-static {v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->equals([S[S)Z

    move-result v0

    goto :goto_33

    .line 3737
    :cond_59
    instance-of v6, v0, [I

    if-eqz v6, :cond_6a

    instance-of v6, v1, [I

    if-eqz v6, :cond_6a

    .line 3738
    check-cast v0, [I

    check-cast v1, [I

    invoke-static {v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_33

    .line 3739
    :cond_6a
    instance-of v6, v0, [J

    if-eqz v6, :cond_7b

    instance-of v6, v1, [J

    if-eqz v6, :cond_7b

    .line 3740
    check-cast v0, [J

    check-cast v1, [J

    invoke-static {v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_33

    .line 3741
    :cond_7b
    instance-of v6, v0, [C

    if-eqz v6, :cond_8c

    instance-of v6, v1, [C

    if-eqz v6, :cond_8c

    .line 3742
    check-cast v0, [C

    check-cast v1, [C

    invoke-static {v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_33

    .line 3743
    :cond_8c
    instance-of v6, v0, [F

    if-eqz v6, :cond_9d

    instance-of v6, v1, [F

    if-eqz v6, :cond_9d

    .line 3744
    check-cast v0, [F

    check-cast v1, [F

    invoke-static {v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_33

    .line 3745
    :cond_9d
    instance-of v6, v0, [D

    if-eqz v6, :cond_ae

    instance-of v6, v1, [D

    if-eqz v6, :cond_ae

    .line 3746
    check-cast v0, [D

    check-cast v1, [D

    invoke-static {v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_33

    .line 3747
    :cond_ae
    instance-of v6, v0, [Z

    if-eqz v6, :cond_c0

    instance-of v6, v1, [Z

    if-eqz v6, :cond_c0

    .line 3748
    check-cast v0, [Z

    check-cast v1, [Z

    invoke-static {v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->equals([Z[Z)Z

    move-result v0

    goto/16 :goto_33

    .line 3750
    :cond_c0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_33

    :cond_c6
    move v0, v2

    .line 3755
    goto/16 :goto_5
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .registers 7

    const/4 v1, 0x0

    .line 3643
    if-nez p0, :cond_4

    .line 3674
    :goto_3
    return v1

    .line 3646
    :cond_4
    const/4 v2, 0x1

    .line 3648
    array-length v4, p0

    move v3, v1

    :goto_7
    if-ge v3, v4, :cond_7b

    aget-object v0, p0, v3

    .line 3650
    instance-of v5, v0, [Ljava/lang/Object;

    if-eqz v5, :cond_1c

    .line 3651
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    .line 3671
    :goto_15
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    .line 3648
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 3652
    :cond_1c
    instance-of v5, v0, [B

    if-eqz v5, :cond_27

    .line 3653
    check-cast v0, [B

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_15

    .line 3654
    :cond_27
    instance-of v5, v0, [S

    if-eqz v5, :cond_32

    .line 3655
    check-cast v0, [S

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->hashCode([S)I

    move-result v0

    goto :goto_15

    .line 3656
    :cond_32
    instance-of v5, v0, [I

    if-eqz v5, :cond_3d

    .line 3657
    check-cast v0, [I

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_15

    .line 3658
    :cond_3d
    instance-of v5, v0, [J

    if-eqz v5, :cond_48

    .line 3659
    check-cast v0, [J

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_15

    .line 3660
    :cond_48
    instance-of v5, v0, [C

    if-eqz v5, :cond_53

    .line 3661
    check-cast v0, [C

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->hashCode([C)I

    move-result v0

    goto :goto_15

    .line 3662
    :cond_53
    instance-of v5, v0, [F

    if-eqz v5, :cond_5e

    .line 3663
    check-cast v0, [F

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_15

    .line 3664
    :cond_5e
    instance-of v5, v0, [D

    if-eqz v5, :cond_69

    .line 3665
    check-cast v0, [D

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_15

    .line 3666
    :cond_69
    instance-of v5, v0, [Z

    if-eqz v5, :cond_74

    .line 3667
    check-cast v0, [Z

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_15

    .line 3668
    :cond_74
    if-eqz v0, :cond_7d

    .line 3669
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_15

    :cond_7b
    move v1, v2

    .line 3674
    goto :goto_3

    :cond_7d
    move v0, v1

    goto :goto_15
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 4065
    if-nez p0, :cond_5

    .line 4066
    const-string v0, "null"

    .line 4073
    :goto_4
    return-object v0

    .line 4068
    :cond_5
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x14

    .line 4069
    array-length v1, p0

    if-eqz v1, :cond_10

    if-gtz v0, :cond_10

    .line 4070
    const v0, 0x7fffffff

    .line 4071
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4072
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 4073
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4078
    if-nez p0, :cond_8

    .line 4079
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4131
    :goto_7
    return-void

    .line 4082
    :cond_8
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    .line 4083
    const/4 v0, -0x1

    if-ne v2, v0, :cond_14

    .line 4084
    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 4088
    :cond_14
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4089
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4090
    const/4 v0, 0x0

    move v1, v0

    .line 4092
    :goto_1e
    aget-object v0, p0, v1

    .line 4093
    if-nez v0, :cond_32

    .line 4094
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4125
    :goto_27
    if-ne v1, v2, :cond_ca

    .line 4126
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4130
    invoke-interface {p2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 4096
    :cond_32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 4098
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 4099
    const-class v4, [B

    if-ne v3, v4, :cond_4a

    .line 4100
    check-cast v0, [B

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4101
    :cond_4a
    const-class v4, [S

    if-ne v3, v4, :cond_58

    .line 4102
    check-cast v0, [S

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4103
    :cond_58
    const-class v4, [I

    if-ne v3, v4, :cond_66

    .line 4104
    check-cast v0, [I

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4105
    :cond_66
    const-class v4, [J

    if-ne v3, v4, :cond_74

    .line 4106
    check-cast v0, [J

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4107
    :cond_74
    const-class v4, [C

    if-ne v3, v4, :cond_82

    .line 4108
    check-cast v0, [C

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4109
    :cond_82
    const-class v4, [F

    if-ne v3, v4, :cond_90

    .line 4110
    check-cast v0, [F

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4111
    :cond_90
    const-class v4, [D

    if-ne v3, v4, :cond_9e

    .line 4112
    check-cast v0, [D

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 4113
    :cond_9e
    const-class v4, [Z

    if-ne v3, v4, :cond_ad

    .line 4114
    check-cast v0, [Z

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    .line 4116
    :cond_ad
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 4117
    const-string v0, "[...]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    .line 4119
    :cond_ba
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    goto/16 :goto_27

    .line 4122
    :cond_c1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    .line 4127
    :cond_ca
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4090
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1e
.end method

.method public static equals([B[B)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2254
    if-ne p0, p1, :cond_5

    .line 2267
    :cond_4
    :goto_4
    return v0

    .line 2256
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 2257
    goto :goto_4

    .line 2259
    :cond_b
    array-length v3, p0

    .line 2260
    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 2261
    goto :goto_4

    :cond_11
    move v2, v1

    .line 2263
    :goto_12
    if-ge v2, v3, :cond_4

    .line 2264
    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_1c

    move v0, v1

    .line 2265
    goto :goto_4

    .line 2263
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static equals([C[C)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2225
    if-ne p0, p1, :cond_5

    .line 2238
    :cond_4
    :goto_4
    return v0

    .line 2227
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 2228
    goto :goto_4

    .line 2230
    :cond_b
    array-length v3, p0

    .line 2231
    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 2232
    goto :goto_4

    :cond_11
    move v2, v1

    .line 2234
    :goto_12
    if-ge v2, v3, :cond_4

    .line 2235
    aget-char v4, p0, v2

    aget-char v5, p1, v2

    if-eq v4, v5, :cond_1c

    move v0, v1

    .line 2236
    goto :goto_4

    .line 2234
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static equals([D[D)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2318
    if-ne p0, p1, :cond_5

    .line 2331
    :cond_4
    :goto_4
    return v0

    .line 2320
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 2321
    goto :goto_4

    .line 2323
    :cond_b
    array-length v3, p0

    .line 2324
    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 2325
    goto :goto_4

    :cond_11
    move v2, v1

    .line 2327
    :goto_12
    if-ge v2, v3, :cond_4

    .line 2328
    aget-wide v4, p0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_26

    move v0, v1

    .line 2329
    goto :goto_4

    .line 2327
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static equals([F[F)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2353
    if-ne p0, p1, :cond_5

    .line 2366
    :cond_4
    :goto_4
    return v0

    .line 2355
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 2356
    goto :goto_4

    .line 2358
    :cond_b
    array-length v3, p0

    .line 2359
    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 2360
    goto :goto_4

    :cond_11
    move v2, v1

    .line 2362
    :goto_12
    if-ge v2, v3, :cond_4

    .line 2363
    aget v4, p0, v2

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    aget v5, p1, v2

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_24

    move v0, v1

    .line 2364
    goto :goto_4

    .line 2362
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static equals([I[I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2167
    if-ne p0, p1, :cond_5

    .line 2180
    :cond_4
    :goto_4
    return v0

    .line 2169
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 2170
    goto :goto_4

    .line 2172
    :cond_b
    array-length v3, p0

    .line 2173
    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 2174
    goto :goto_4

    :cond_11
    move v2, v1

    .line 2176
    :goto_12
    if-ge v2, v3, :cond_4

    .line 2177
    aget v4, p0, v2

    aget v5, p1, v2

    if-eq v4, v5, :cond_1c

    move v0, v1

    .line 2178
    goto :goto_4

    .line 2176
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static equals([J[J)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2138
    if-ne p0, p1, :cond_5

    .line 2151
    :cond_4
    :goto_4
    return v0

    .line 2140
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 2141
    goto :goto_4

    .line 2143
    :cond_b
    array-length v3, p0

    .line 2144
    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 2145
    goto :goto_4

    :cond_11
    move v2, v1

    .line 2147
    :goto_12
    if-ge v2, v3, :cond_4

    .line 2148
    aget-wide v4, p0, v2

    aget-wide v6, p1, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1e

    move v0, v1

    .line 2149
    goto :goto_4

    .line 2147
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2385
    if-ne p0, p1, :cond_5

    .line 2401
    :cond_4
    :goto_4
    return v0

    .line 2387
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 2388
    goto :goto_4

    .line 2390
    :cond_b
    array-length v3, p0

    .line 2391
    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 2392
    goto :goto_4

    :cond_11
    move v2, v1

    .line 2394
    :goto_12
    if-ge v2, v3, :cond_4

    .line 2395
    aget-object v4, p0, v2

    .line 2396
    aget-object v5, p1, v2

    .line 2397
    if-nez v4, :cond_1f

    if-nez v5, :cond_25

    .line 2394
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2397
    :cond_1f
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_25
    move v0, v1

    .line 2398
    goto :goto_4
.end method

.method public static equals([S[S)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2196
    if-ne p0, p1, :cond_5

    .line 2209
    :cond_4
    :goto_4
    return v0

    .line 2198
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 2199
    goto :goto_4

    .line 2201
    :cond_b
    array-length v3, p0

    .line 2202
    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 2203
    goto :goto_4

    :cond_11
    move v2, v1

    .line 2205
    :goto_12
    if-ge v2, v3, :cond_4

    .line 2206
    aget-short v4, p0, v2

    aget-short v5, p1, v2

    if-eq v4, v5, :cond_1c

    move v0, v1

    .line 2207
    goto :goto_4

    .line 2205
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static equals([Z[Z)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2283
    if-ne p0, p1, :cond_5

    .line 2296
    :cond_4
    :goto_4
    return v0

    .line 2285
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 2286
    goto :goto_4

    .line 2288
    :cond_b
    array-length v3, p0

    .line 2289
    array-length v2, p1

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 2290
    goto :goto_4

    :cond_11
    move v2, v1

    .line 2292
    :goto_12
    if-ge v2, v3, :cond_4

    .line 2293
    aget-boolean v4, p0, v2

    aget-boolean v5, p1, v2

    if-eq v4, v5, :cond_1c

    move v0, v1

    .line 2294
    goto :goto_4

    .line 2292
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static fill([BB)V
    .registers 4

    .line 2555
    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 2556
    aput-byte p1, p0, v0

    .line 2555
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2557
    :cond_9
    return-void
.end method

.method public static fill([BIIB)V
    .registers 5

    .line 2577
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2578
    :goto_4
    if-ge p1, p2, :cond_b

    .line 2579
    aput-byte p3, p0, p1

    .line 2578
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2580
    :cond_b
    return-void
.end method

.method public static fill([CC)V
    .registers 4

    .line 2520
    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 2521
    aput-char p1, p0, v0

    .line 2520
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2522
    :cond_9
    return-void
.end method

.method public static fill([CIIC)V
    .registers 5

    .line 2542
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2543
    :goto_4
    if-ge p1, p2, :cond_b

    .line 2544
    aput-char p3, p0, p1

    .line 2543
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2545
    :cond_b
    return-void
.end method

.method public static fill([DD)V
    .registers 6

    .line 2626
    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 2627
    aput-wide p1, p0, v0

    .line 2626
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2628
    :cond_9
    return-void
.end method

.method public static fill([DIID)V
    .registers 6

    .line 2648
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2649
    :goto_4
    if-ge p1, p2, :cond_b

    .line 2650
    aput-wide p3, p0, p1

    .line 2649
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2651
    :cond_b
    return-void
.end method

.method public static fill([FF)V
    .registers 4

    .line 2661
    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 2662
    aput p1, p0, v0

    .line 2661
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2663
    :cond_9
    return-void
.end method

.method public static fill([FIIF)V
    .registers 5

    .line 2683
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2684
    :goto_4
    if-ge p1, p2, :cond_b

    .line 2685
    aput p3, p0, p1

    .line 2684
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2686
    :cond_b
    return-void
.end method

.method public static fill([II)V
    .registers 4

    .line 2450
    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 2451
    aput p1, p0, v0

    .line 2450
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2452
    :cond_9
    return-void
.end method

.method public static fill([IIII)V
    .registers 5

    .line 2472
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2473
    :goto_4
    if-ge p1, p2, :cond_b

    .line 2474
    aput p3, p0, p1

    .line 2473
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2475
    :cond_b
    return-void
.end method

.method public static fill([JIIJ)V
    .registers 6

    .line 2437
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2438
    :goto_4
    if-ge p1, p2, :cond_b

    .line 2439
    aput-wide p3, p0, p1

    .line 2438
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2440
    :cond_b
    return-void
.end method

.method public static fill([JJ)V
    .registers 6

    .line 2415
    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 2416
    aput-wide p1, p0, v0

    .line 2415
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2417
    :cond_9
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5

    .line 2722
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2723
    :goto_4
    if-ge p1, p2, :cond_b

    .line 2724
    aput-object p3, p0, p1

    .line 2723
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2725
    :cond_b
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 2698
    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 2699
    aput-object p1, p0, v0

    .line 2698
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2700
    :cond_9
    return-void
.end method

.method public static fill([SIIS)V
    .registers 5

    .line 2507
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2508
    :goto_4
    if-ge p1, p2, :cond_b

    .line 2509
    aput-short p3, p0, p1

    .line 2508
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2510
    :cond_b
    return-void
.end method

.method public static fill([SS)V
    .registers 4

    .line 2485
    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 2486
    aput-short p1, p0, v0

    .line 2485
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2487
    :cond_9
    return-void
.end method

.method public static fill([ZIIZ)V
    .registers 5

    .line 2613
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 2614
    :goto_4
    if-ge p1, p2, :cond_b

    .line 2615
    aput-boolean p3, p0, p1

    .line 2614
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2616
    :cond_b
    return-void
.end method

.method public static fill([ZZ)V
    .registers 4

    .line 2590
    const/4 v0, 0x0

    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 2591
    aput-boolean p1, p0, v0

    .line 2590
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2592
    :cond_9
    return-void
.end method

.method public static hashCode([B)I
    .registers 5

    const/4 v0, 0x0

    .line 3488
    if-nez p0, :cond_4

    .line 3495
    :goto_3
    return v0

    .line 3491
    :cond_4
    const/4 v1, 0x1

    .line 3492
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-byte v3, p0, v0

    .line 3493
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    .line 3492
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    move v0, v1

    .line 3495
    goto :goto_3
.end method

.method public static hashCode([C)I
    .registers 5

    const/4 v0, 0x0

    .line 3461
    if-nez p0, :cond_4

    .line 3468
    :goto_3
    return v0

    .line 3464
    :cond_4
    const/4 v1, 0x1

    .line 3465
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-char v3, p0, v0

    .line 3466
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    .line 3465
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    move v0, v1

    .line 3468
    goto :goto_3
.end method

.method public static hashCode([D)I
    .registers 9

    const/4 v0, 0x0

    .line 3569
    if-nez p0, :cond_4

    .line 3577
    :goto_3
    return v0

    .line 3572
    :cond_4
    const/4 v1, 0x1

    .line 3573
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_1a

    aget-wide v4, p0, v0

    .line 3574
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 3575
    mul-int/lit8 v1, v1, 0x1f

    const/16 v3, 0x20

    ushr-long v6, v4, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v1, v3

    .line 3573
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    move v0, v1

    .line 3577
    goto :goto_3
.end method

.method public static hashCode([F)I
    .registers 5

    const/4 v0, 0x0

    .line 3542
    if-nez p0, :cond_4

    .line 3549
    :goto_3
    return v0

    .line 3545
    :cond_4
    const/4 v1, 0x1

    .line 3546
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_14

    aget v3, p0, v0

    .line 3547
    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 3546
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_14
    move v0, v1

    .line 3549
    goto :goto_3
.end method

.method public static hashCode([I)I
    .registers 5

    const/4 v0, 0x0

    .line 3407
    if-nez p0, :cond_4

    .line 3414
    :goto_3
    return v0

    .line 3410
    :cond_4
    const/4 v1, 0x1

    .line 3411
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_10

    aget v3, p0, v0

    .line 3412
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    .line 3411
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    move v0, v1

    .line 3414
    goto :goto_3
.end method

.method public static hashCode([J)I
    .registers 9

    const/4 v0, 0x0

    .line 3378
    if-nez p0, :cond_4

    .line 3387
    :goto_3
    return v0

    .line 3381
    :cond_4
    const/4 v1, 0x1

    .line 3382
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_16

    aget-wide v4, p0, v0

    .line 3383
    const/16 v3, 0x20

    ushr-long v6, v4, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    .line 3384
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    .line 3382
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    move v0, v1

    .line 3387
    goto :goto_3
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 6

    const/4 v1, 0x0

    .line 3602
    if-nez p0, :cond_4

    .line 3610
    :goto_3
    return v1

    .line 3605
    :cond_4
    const/4 v2, 0x1

    .line 3607
    array-length v4, p0

    move v3, v1

    :goto_7
    if-ge v3, v4, :cond_1a

    aget-object v0, p0, v3

    .line 3608
    if-nez v0, :cond_15

    move v0, v1

    :goto_e
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    .line 3607
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 3608
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_e

    :cond_1a
    move v1, v2

    .line 3610
    goto :goto_3
.end method

.method public static hashCode([S)I
    .registers 5

    const/4 v0, 0x0

    .line 3434
    if-nez p0, :cond_4

    .line 3441
    :goto_3
    return v0

    .line 3437
    :cond_4
    const/4 v1, 0x1

    .line 3438
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-short v3, p0, v0

    .line 3439
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    .line 3438
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    move v0, v1

    .line 3441
    goto :goto_3
.end method

.method public static hashCode([Z)I
    .registers 5

    const/4 v0, 0x0

    .line 3515
    if-nez p0, :cond_4

    .line 3522
    :goto_3
    return v0

    .line 3518
    :cond_4
    const/4 v1, 0x1

    .line 3519
    array-length v3, p0

    move v2, v0

    :goto_7
    if-ge v2, v3, :cond_19

    aget-boolean v0, p0, v2

    .line 3520
    if-eqz v0, :cond_16

    const/16 v0, 0x4cf

    :goto_f
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    .line 3519
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 3520
    :cond_16
    const/16 v0, 0x4d5

    goto :goto_f

    :cond_19
    move v0, v1

    .line 3522
    goto :goto_3
.end method

.method private static med3([BIII)I
    .registers 6

    .line 920
    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    if-ge v0, v1, :cond_16

    .line 921
    aget-byte v0, p0, p2

    aget-byte v1, p0, p3

    if-ge v0, v1, :cond_e

    :cond_c
    move p1, p2

    .line 920
    :cond_d
    :goto_d
    return p1

    .line 921
    :cond_e
    aget-byte v0, p0, p1

    aget-byte v1, p0, p3

    if-ge v0, v1, :cond_d

    :goto_14
    move p1, p3

    .line 920
    goto :goto_d

    .line 922
    :cond_16
    aget-byte v0, p0, p2

    aget-byte v1, p0, p3

    if-gt v0, v1, :cond_c

    aget-byte v0, p0, p1

    aget-byte v1, p0, p3

    if-le v0, v1, :cond_d

    goto :goto_14
.end method

.method private static med3([CIII)I
    .registers 6

    .line 835
    aget-char v0, p0, p1

    aget-char v1, p0, p2

    if-ge v0, v1, :cond_16

    .line 836
    aget-char v0, p0, p2

    aget-char v1, p0, p3

    if-ge v0, v1, :cond_e

    :cond_c
    move p1, p2

    .line 835
    :cond_d
    :goto_d
    return p1

    .line 836
    :cond_e
    aget-char v0, p0, p1

    aget-char v1, p0, p3

    if-ge v0, v1, :cond_d

    :goto_14
    move p1, p3

    .line 835
    goto :goto_d

    .line 837
    :cond_16
    aget-char v0, p0, p2

    aget-char v1, p0, p3

    if-gt v0, v1, :cond_c

    aget-char v0, p0, p1

    aget-char v1, p0, p3

    if-le v0, v1, :cond_d

    goto :goto_14
.end method

.method private static med3([DIII)I
    .registers 8

    .line 1005
    aget-wide v0, p0, p1

    aget-wide v2, p0, p2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    .line 1006
    aget-wide v0, p0, p2

    aget-wide v2, p0, p3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_12

    :cond_10
    move p1, p2

    .line 1005
    :cond_11
    :goto_11
    return p1

    .line 1006
    :cond_12
    aget-wide v0, p0, p1

    aget-wide v2, p0, p3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_11

    :goto_1a
    move p1, p3

    .line 1005
    goto :goto_11

    .line 1007
    :cond_1c
    aget-wide v0, p0, p2

    aget-wide v2, p0, p3

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_10

    aget-wide v0, p0, p1

    aget-wide v2, p0, p3

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11

    goto :goto_1a
.end method

.method private static med3([FIII)I
    .registers 6

    .line 1090
    aget v0, p0, p1

    aget v1, p0, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    .line 1091
    aget v0, p0, p2

    aget v1, p0, p3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    :cond_10
    move p1, p2

    .line 1090
    :cond_11
    :goto_11
    return p1

    .line 1091
    :cond_12
    aget v0, p0, p1

    aget v1, p0, p3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    :goto_1a
    move p1, p3

    .line 1090
    goto :goto_11

    .line 1092
    :cond_1c
    aget v0, p0, p2

    aget v1, p0, p3

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_10

    aget v0, p0, p1

    aget v1, p0, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    goto :goto_1a
.end method

.method private static med3([IIII)I
    .registers 6

    .line 665
    aget v0, p0, p1

    aget v1, p0, p2

    if-ge v0, v1, :cond_16

    .line 666
    aget v0, p0, p2

    aget v1, p0, p3

    if-ge v0, v1, :cond_e

    :cond_c
    move p1, p2

    .line 665
    :cond_d
    :goto_d
    return p1

    .line 666
    :cond_e
    aget v0, p0, p1

    aget v1, p0, p3

    if-ge v0, v1, :cond_d

    :goto_14
    move p1, p3

    .line 665
    goto :goto_d

    .line 667
    :cond_16
    aget v0, p0, p2

    aget v1, p0, p3

    if-gt v0, v1, :cond_c

    aget v0, p0, p1

    aget v1, p0, p3

    if-le v0, v1, :cond_d

    goto :goto_14
.end method

.method private static med3([JIII)I
    .registers 8

    .line 580
    aget-wide v0, p0, p1

    aget-wide v2, p0, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 581
    aget-wide v0, p0, p2

    aget-wide v2, p0, p3

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    :cond_10
    move p1, p2

    .line 580
    :cond_11
    :goto_11
    return p1

    .line 581
    :cond_12
    aget-wide v0, p0, p1

    aget-wide v2, p0, p3

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    :goto_1a
    move p1, p3

    .line 580
    goto :goto_11

    .line 582
    :cond_1c
    aget-wide v0, p0, p2

    aget-wide v2, p0, p3

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    aget-wide v0, p0, p1

    aget-wide v2, p0, p3

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    goto :goto_1a
.end method

.method private static med3([SIII)I
    .registers 6

    .line 750
    aget-short v0, p0, p1

    aget-short v1, p0, p2

    if-ge v0, v1, :cond_16

    .line 751
    aget-short v0, p0, p2

    aget-short v1, p0, p3

    if-ge v0, v1, :cond_e

    :cond_c
    move p1, p2

    .line 750
    :cond_d
    :goto_d
    return p1

    .line 751
    :cond_e
    aget-short v0, p0, p1

    aget-short v1, p0, p3

    if-ge v0, v1, :cond_d

    :goto_14
    move p1, p3

    .line 750
    goto :goto_d

    .line 752
    :cond_16
    aget-short v0, p0, p2

    aget-short v1, p0, p3

    if-gt v0, v1, :cond_c

    aget-short v0, p0, p1

    aget-short v1, p0, p3

    if-le v0, v1, :cond_d

    goto :goto_14
.end method

.method private static mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .registers 11

    .line 1171
    sub-int v2, p3, p2

    .line 1174
    const/4 v0, 0x7

    if-ge v2, v0, :cond_26

    move v1, p2

    .line 1175
    :goto_6
    if-ge v1, p3, :cond_47

    move v2, v1

    .line 1176
    :goto_9
    if-le v2, p2, :cond_22

    add-int/lit8 v0, v2, -0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Comparable;

    aget-object v3, p1, v2

    .line 1177
    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_22

    .line 1178
    add-int/lit8 v0, v2, -0x1

    invoke-static {p1, v2, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([Ljava/lang/Object;II)V

    .line 1177
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_9

    .line 1175
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1183
    :cond_26
    add-int v1, p2, p4

    .line 1186
    add-int v4, p3, p4

    .line 1187
    add-int v0, v1, v4

    ushr-int/lit8 v3, v0, 0x1

    .line 1188
    neg-int v0, p4

    invoke-static {p1, p0, v1, v3, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1189
    neg-int v0, p4

    invoke-static {p1, p0, v3, v4, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1193
    add-int/lit8 v0, v3, -0x1

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Comparable;

    aget-object v5, p0, v3

    invoke-interface {v0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_48

    .line 1194
    invoke-static {p0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1205
    :cond_47
    return-void

    :cond_48
    move v2, v3

    .line 1199
    :goto_49
    if-ge p2, p3, :cond_47

    .line 1200
    if-ge v2, v4, :cond_5b

    if-ge v1, v3, :cond_65

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    aget-object v5, p0, v2

    invoke-interface {v0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_65

    .line 1201
    :cond_5b
    aget-object v0, p0, v1

    aput-object v0, p1, p2

    add-int/lit8 v0, v1, 0x1

    .line 1199
    :goto_61
    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_49

    .line 1203
    :cond_65
    aget-object v0, p0, v2

    aput-object v0, p1, p2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_61
.end method

.method private static mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V
    .registers 18

    .line 1298
    sub-int v11, p3, p2

    .line 1301
    const/4 v1, 0x7

    if-ge v11, v1, :cond_24

    move v2, p2

    .line 1302
    :goto_6
    if-ge v2, p3, :cond_52

    move v1, v2

    .line 1303
    :goto_9
    if-le v1, p2, :cond_21

    add-int/lit8 v3, v1, -0x1

    aget-object v3, p1, v3

    aget-object v4, p1, v1

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_21

    .line 1304
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v1, v3}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([Ljava/lang/Object;II)V

    .line 1303
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1302
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1309
    :cond_24
    add-int v3, p2, p4

    .line 1312
    add-int v8, p3, p4

    .line 1313
    add-int v1, v3, v8

    ushr-int/lit8 v4, v1, 0x1

    .line 1314
    move/from16 v0, p4

    neg-int v5, v0

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 1315
    move/from16 v0, p4

    neg-int v9, v0

    move-object v5, p1

    move-object v6, p0

    move v7, v4

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 1319
    add-int/lit8 v1, v4, -0x1

    aget-object v1, p0, v1

    aget-object v2, p0, v4

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_53

    .line 1320
    invoke-static {p0, v3, p1, p2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1331
    :cond_52
    return-void

    :cond_53
    move v1, v4

    move v2, v3

    .line 1325
    :goto_55
    if-ge p2, p3, :cond_52

    .line 1326
    if-ge v1, v8, :cond_67

    if-ge v2, v4, :cond_70

    aget-object v3, p0, v2

    aget-object v5, p0, v1

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_70

    .line 1327
    :cond_67
    aget-object v3, p0, v2

    aput-object v3, p1, p2

    add-int/lit8 v2, v2, 0x1

    .line 1325
    :goto_6d
    add-int/lit8 p2, p2, 0x1

    goto :goto_55

    .line 1329
    :cond_70
    aget-object v3, p0, v1

    aput-object v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d
.end method

.method private static rangeCheck(III)V
    .registers 5

    .line 1338
    if-gt p1, p2, :cond_13

    .line 1341
    if-ltz p1, :cond_d

    .line 1343
    if-gt p2, p0, :cond_7

    .line 1345
    return-void

    .line 1344
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 1342
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 1339
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") > toIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static sort([B)V
    .registers 3

    .line 248
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([BII)V

    .line 249
    return-void
.end method

.method public static sort([BII)V
    .registers 4

    .line 272
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 273
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([BII)V

    .line 274
    return-void
.end method

.method public static sort([C)V
    .registers 3

    .line 209
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([CII)V

    .line 210
    return-void
.end method

.method public static sort([CII)V
    .registers 4

    .line 233
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 234
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([CII)V

    .line 235
    return-void
.end method

.method public static sort([D)V
    .registers 3

    .line 302
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort2([DII)V

    .line 303
    return-void
.end method

.method public static sort([DII)V
    .registers 4

    .line 340
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 341
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort2([DII)V

    .line 342
    return-void
.end method

.method public static sort([F)V
    .registers 3

    .line 370
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort2([FII)V

    .line 371
    return-void
.end method

.method public static sort([FII)V
    .registers 4

    .line 408
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 409
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort2([FII)V

    .line 410
    return-void
.end method

.method public static sort([I)V
    .registers 3

    .line 131
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([III)V

    .line 132
    return-void
.end method

.method public static sort([III)V
    .registers 4

    .line 155
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 156
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([III)V

    .line 157
    return-void
.end method

.method public static sort([J)V
    .registers 3

    .line 92
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([JII)V

    .line 93
    return-void
.end method

.method public static sort([JII)V
    .registers 4

    .line 116
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 117
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([JII)V

    .line 118
    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .registers 4

    const/4 v2, 0x0

    .line 1117
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1118
    array-length v1, p0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1119
    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .registers 5

    .line 1154
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1155
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .line 1156
    neg-int v1, p1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1157
    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .line 1279
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 1280
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .line 1281
    if-nez p3, :cond_f

    .line 1282
    neg-int v1, p1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1285
    :goto_e
    return-void

    .line 1284
    :cond_f
    neg-int v4, p1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_e
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 1239
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1240
    if-nez p1, :cond_e

    .line 1241
    array-length v1, p0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1244
    :goto_d
    return-void

    .line 1243
    :cond_e
    array-length v3, p0

    move-object v1, p0

    move v4, v2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_d
.end method

.method public static sort([S)V
    .registers 3

    .line 170
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([SII)V

    .line 171
    return-void
.end method

.method public static sort([SII)V
    .registers 4

    .line 194
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->rangeCheck(III)V

    .line 195
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([SII)V

    .line 196
    return-void
.end method

.method private static sort1([BII)V
    .registers 11

    const/4 v2, 0x7

    const/4 v7, 0x1

    .line 845
    if-ge p2, v2, :cond_1f

    move v1, p1

    .line 846
    :goto_5
    add-int v0, p2, p1

    if-ge v1, v0, :cond_ad

    move v0, v1

    .line 847
    :goto_a
    if-le v0, p1, :cond_1c

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p0, v2

    aget-byte v3, p0, v0

    if-le v2, v3, :cond_1c

    .line 848
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v0, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([BII)V

    .line 847
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 846
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 853
    :cond_1f
    shr-int/lit8 v0, p2, 0x1

    add-int v1, v0, p1

    .line 854
    if-le p2, v2, :cond_4e

    .line 856
    add-int v0, p1, p2

    add-int/lit8 v2, v0, -0x1

    .line 857
    const/16 v0, 0x28

    if-le p2, v0, :cond_b7

    .line 858
    div-int/lit8 v3, p2, 0x8

    .line 859
    add-int v0, p1, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p1

    invoke-static {p0, p1, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([BIII)I

    move-result v0

    .line 860
    sub-int v4, v1, v3

    add-int v5, v1, v3

    invoke-static {p0, v4, v1, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([BIII)I

    move-result v1

    .line 861
    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    sub-int v3, v2, v3

    invoke-static {p0, v4, v3, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([BIII)I

    move-result v2

    .line 863
    :goto_4a
    invoke-static {p0, v0, v1, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([BIII)I

    move-result v1

    .line 865
    :cond_4e
    aget-byte v5, p0, v1

    .line 868
    add-int v0, p1, p2

    add-int/lit8 v3, v0, -0x1

    move v1, v3

    move v0, p1

    move v2, v3

    move v4, p1

    .line 870
    :goto_58
    if-gt v4, v2, :cond_6b

    aget-byte v3, p0, v4

    if-gt v3, v5, :cond_6b

    .line 871
    aget-byte v3, p0, v4

    if-ne v3, v5, :cond_67

    .line 872
    invoke-static {p0, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([BII)V

    add-int/lit8 v0, v0, 0x1

    .line 873
    :cond_67
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_58

    .line 875
    :cond_6b
    :goto_6b
    if-lt v2, v4, :cond_7d

    aget-byte v3, p0, v2

    if-lt v3, v5, :cond_7d

    .line 876
    aget-byte v3, p0, v2

    if-ne v3, v5, :cond_7a

    .line 877
    invoke-static {p0, v2, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([BII)V

    add-int/lit8 v1, v1, -0x1

    .line 878
    :cond_7a
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    .line 880
    :cond_7d
    if-le v4, v2, :cond_ae

    .line 881
    add-int v3, p1, p2

    .line 887
    sub-int v5, v0, p1

    sub-int v6, v4, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 888
    sub-int v6, v4, v5

    invoke-static {p0, p1, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([BIII)V

    .line 889
    sub-int v5, v1, v2

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 890
    sub-int v6, v3, v5

    invoke-static {p0, v4, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([BIII)V

    .line 893
    sub-int v0, v4, v0

    if-le v0, v7, :cond_a4

    .line 894
    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([BII)V

    .line 895
    :cond_a4
    sub-int v0, v1, v2

    if-le v0, v7, :cond_ad

    .line 896
    sub-int v1, v3, v0

    invoke-static {p0, v1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([BII)V

    .line 897
    :cond_ad
    return-void

    .line 882
    :cond_ae
    invoke-static {p0, v4, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([BII)V

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_58

    :cond_b7
    move v0, p1

    goto :goto_4a
.end method

.method private static sort1([CII)V
    .registers 11

    const/4 v2, 0x7

    const/4 v7, 0x1

    .line 760
    if-ge p2, v2, :cond_1f

    move v1, p1

    .line 761
    :goto_5
    add-int v0, p2, p1

    if-ge v1, v0, :cond_ad

    move v0, v1

    .line 762
    :goto_a
    if-le v0, p1, :cond_1c

    add-int/lit8 v2, v0, -0x1

    aget-char v2, p0, v2

    aget-char v3, p0, v0

    if-le v2, v3, :cond_1c

    .line 763
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v0, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([CII)V

    .line 762
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 761
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 768
    :cond_1f
    shr-int/lit8 v0, p2, 0x1

    add-int v1, v0, p1

    .line 769
    if-le p2, v2, :cond_4e

    .line 771
    add-int v0, p1, p2

    add-int/lit8 v2, v0, -0x1

    .line 772
    const/16 v0, 0x28

    if-le p2, v0, :cond_b7

    .line 773
    div-int/lit8 v3, p2, 0x8

    .line 774
    add-int v0, p1, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p1

    invoke-static {p0, p1, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([CIII)I

    move-result v0

    .line 775
    sub-int v4, v1, v3

    add-int v5, v1, v3

    invoke-static {p0, v4, v1, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([CIII)I

    move-result v1

    .line 776
    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    sub-int v3, v2, v3

    invoke-static {p0, v4, v3, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([CIII)I

    move-result v2

    .line 778
    :goto_4a
    invoke-static {p0, v0, v1, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([CIII)I

    move-result v1

    .line 780
    :cond_4e
    aget-char v5, p0, v1

    .line 783
    add-int v0, p1, p2

    add-int/lit8 v3, v0, -0x1

    move v1, v3

    move v0, p1

    move v2, v3

    move v4, p1

    .line 785
    :goto_58
    if-gt v4, v2, :cond_6b

    aget-char v3, p0, v4

    if-gt v3, v5, :cond_6b

    .line 786
    aget-char v3, p0, v4

    if-ne v3, v5, :cond_67

    .line 787
    invoke-static {p0, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([CII)V

    add-int/lit8 v0, v0, 0x1

    .line 788
    :cond_67
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_58

    .line 790
    :cond_6b
    :goto_6b
    if-lt v2, v4, :cond_7d

    aget-char v3, p0, v2

    if-lt v3, v5, :cond_7d

    .line 791
    aget-char v3, p0, v2

    if-ne v3, v5, :cond_7a

    .line 792
    invoke-static {p0, v2, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([CII)V

    add-int/lit8 v1, v1, -0x1

    .line 793
    :cond_7a
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    .line 795
    :cond_7d
    if-le v4, v2, :cond_ae

    .line 796
    add-int v3, p1, p2

    .line 802
    sub-int v5, v0, p1

    sub-int v6, v4, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 803
    sub-int v6, v4, v5

    invoke-static {p0, p1, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([CIII)V

    .line 804
    sub-int v5, v1, v2

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 805
    sub-int v6, v3, v5

    invoke-static {p0, v4, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([CIII)V

    .line 808
    sub-int v0, v4, v0

    if-le v0, v7, :cond_a4

    .line 809
    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([CII)V

    .line 810
    :cond_a4
    sub-int v0, v1, v2

    if-le v0, v7, :cond_ad

    .line 811
    sub-int v1, v3, v0

    invoke-static {p0, v1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([CII)V

    .line 812
    :cond_ad
    return-void

    .line 797
    :cond_ae
    invoke-static {p0, v4, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([CII)V

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_58

    :cond_b7
    move v0, p1

    goto :goto_4a
.end method

.method private static sort1([DII)V
    .registers 14

    const/4 v2, 0x7

    const/4 v10, 0x1

    .line 930
    if-ge p2, v2, :cond_21

    move v1, p1

    .line 931
    :goto_5
    add-int v0, p2, p1

    if-ge v1, v0, :cond_b7

    move v0, v1

    .line 932
    :goto_a
    if-le v0, p1, :cond_1e

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p0, v2

    aget-wide v4, p0, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1e

    .line 933
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v0, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([DII)V

    .line 932
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 931
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 938
    :cond_21
    shr-int/lit8 v0, p2, 0x1

    add-int v1, v0, p1

    .line 939
    if-le p2, v2, :cond_50

    .line 941
    add-int v0, p1, p2

    add-int/lit8 v2, v0, -0x1

    .line 942
    const/16 v0, 0x28

    if-le p2, v0, :cond_c1

    .line 943
    div-int/lit8 v3, p2, 0x8

    .line 944
    add-int v0, p1, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p1

    invoke-static {p0, p1, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([DIII)I

    move-result v0

    .line 945
    sub-int v4, v1, v3

    add-int v5, v1, v3

    invoke-static {p0, v4, v1, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([DIII)I

    move-result v1

    .line 946
    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    sub-int v3, v2, v3

    invoke-static {p0, v4, v3, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([DIII)I

    move-result v2

    .line 948
    :goto_4c
    invoke-static {p0, v0, v1, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([DIII)I

    move-result v1

    .line 950
    :cond_50
    aget-wide v6, p0, v1

    .line 953
    add-int v0, p1, p2

    add-int/lit8 v3, v0, -0x1

    move v1, v3

    move v0, p1

    move v2, v3

    move v4, p1

    .line 955
    :goto_5a
    if-gt v4, v2, :cond_71

    aget-wide v8, p0, v4

    cmpg-double v3, v8, v6

    if-gtz v3, :cond_71

    .line 956
    aget-wide v8, p0, v4

    cmpl-double v3, v8, v6

    if-nez v3, :cond_6d

    .line 957
    invoke-static {p0, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([DII)V

    add-int/lit8 v0, v0, 0x1

    .line 958
    :cond_6d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5a

    .line 960
    :cond_71
    :goto_71
    if-lt v2, v4, :cond_87

    aget-wide v8, p0, v2

    cmpl-double v3, v8, v6

    if-ltz v3, :cond_87

    .line 961
    aget-wide v8, p0, v2

    cmpl-double v3, v8, v6

    if-nez v3, :cond_84

    .line 962
    invoke-static {p0, v2, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([DII)V

    add-int/lit8 v1, v1, -0x1

    .line 963
    :cond_84
    add-int/lit8 v2, v2, -0x1

    goto :goto_71

    .line 965
    :cond_87
    if-le v4, v2, :cond_b8

    .line 966
    add-int v3, p1, p2

    .line 972
    sub-int v5, v0, p1

    sub-int v6, v4, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 973
    sub-int v6, v4, v5

    invoke-static {p0, p1, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([DIII)V

    .line 974
    sub-int v5, v1, v2

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 975
    sub-int v6, v3, v5

    invoke-static {p0, v4, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([DIII)V

    .line 978
    sub-int v0, v4, v0

    if-le v0, v10, :cond_ae

    .line 979
    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([DII)V

    .line 980
    :cond_ae
    sub-int v0, v1, v2

    if-le v0, v10, :cond_b7

    .line 981
    sub-int v1, v3, v0

    invoke-static {p0, v1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([DII)V

    .line 982
    :cond_b7
    return-void

    .line 967
    :cond_b8
    invoke-static {p0, v4, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([DII)V

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_5a

    :cond_c1
    move v0, p1

    goto :goto_4c
.end method

.method private static sort1([FII)V
    .registers 11

    const/4 v2, 0x7

    const/4 v7, 0x1

    .line 1015
    if-ge p2, v2, :cond_21

    move v1, p1

    .line 1016
    :goto_5
    add-int v0, p2, p1

    if-ge v1, v0, :cond_b7

    move v0, v1

    .line 1017
    :goto_a
    if-le v0, p1, :cond_1e

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    aget v3, p0, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e

    .line 1018
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v0, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([FII)V

    .line 1017
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1016
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1023
    :cond_21
    shr-int/lit8 v0, p2, 0x1

    add-int v1, v0, p1

    .line 1024
    if-le p2, v2, :cond_50

    .line 1026
    add-int v0, p1, p2

    add-int/lit8 v2, v0, -0x1

    .line 1027
    const/16 v0, 0x28

    if-le p2, v0, :cond_c1

    .line 1028
    div-int/lit8 v3, p2, 0x8

    .line 1029
    add-int v0, p1, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p1

    invoke-static {p0, p1, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([FIII)I

    move-result v0

    .line 1030
    sub-int v4, v1, v3

    add-int v5, v1, v3

    invoke-static {p0, v4, v1, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([FIII)I

    move-result v1

    .line 1031
    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    sub-int v3, v2, v3

    invoke-static {p0, v4, v3, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([FIII)I

    move-result v2

    .line 1033
    :goto_4c
    invoke-static {p0, v0, v1, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([FIII)I

    move-result v1

    .line 1035
    :cond_50
    aget v5, p0, v1

    .line 1038
    add-int v0, p1, p2

    add-int/lit8 v3, v0, -0x1

    move v1, v3

    move v0, p1

    move v2, v3

    move v4, p1

    .line 1040
    :goto_5a
    if-gt v4, v2, :cond_71

    aget v3, p0, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_71

    .line 1041
    aget v3, p0, v4

    cmpl-float v3, v3, v5

    if-nez v3, :cond_6d

    .line 1042
    invoke-static {p0, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([FII)V

    add-int/lit8 v0, v0, 0x1

    .line 1043
    :cond_6d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5a

    .line 1045
    :cond_71
    :goto_71
    if-lt v2, v4, :cond_87

    aget v3, p0, v2

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_87

    .line 1046
    aget v3, p0, v2

    cmpl-float v3, v3, v5

    if-nez v3, :cond_84

    .line 1047
    invoke-static {p0, v2, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([FII)V

    add-int/lit8 v1, v1, -0x1

    .line 1048
    :cond_84
    add-int/lit8 v2, v2, -0x1

    goto :goto_71

    .line 1050
    :cond_87
    if-le v4, v2, :cond_b8

    .line 1051
    add-int v3, p1, p2

    .line 1057
    sub-int v5, v0, p1

    sub-int v6, v4, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1058
    sub-int v6, v4, v5

    invoke-static {p0, p1, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([FIII)V

    .line 1059
    sub-int v5, v1, v2

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1060
    sub-int v6, v3, v5

    invoke-static {p0, v4, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([FIII)V

    .line 1063
    sub-int v0, v4, v0

    if-le v0, v7, :cond_ae

    .line 1064
    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([FII)V

    .line 1065
    :cond_ae
    sub-int v0, v1, v2

    if-le v0, v7, :cond_b7

    .line 1066
    sub-int v1, v3, v0

    invoke-static {p0, v1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([FII)V

    .line 1067
    :cond_b7
    return-void

    .line 1052
    :cond_b8
    invoke-static {p0, v4, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([FII)V

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_5a

    :cond_c1
    move v0, p1

    goto :goto_4c
.end method

.method private static sort1([III)V
    .registers 11

    const/4 v2, 0x7

    const/4 v7, 0x1

    .line 590
    if-ge p2, v2, :cond_1f

    move v1, p1

    .line 591
    :goto_5
    add-int v0, p2, p1

    if-ge v1, v0, :cond_ad

    move v0, v1

    .line 592
    :goto_a
    if-le v0, p1, :cond_1c

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    aget v3, p0, v0

    if-le v2, v3, :cond_1c

    .line 593
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v0, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([III)V

    .line 592
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 591
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 598
    :cond_1f
    shr-int/lit8 v0, p2, 0x1

    add-int v1, v0, p1

    .line 599
    if-le p2, v2, :cond_4e

    .line 601
    add-int v0, p1, p2

    add-int/lit8 v2, v0, -0x1

    .line 602
    const/16 v0, 0x28

    if-le p2, v0, :cond_b7

    .line 603
    div-int/lit8 v3, p2, 0x8

    .line 604
    add-int v0, p1, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p1

    invoke-static {p0, p1, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([IIII)I

    move-result v0

    .line 605
    sub-int v4, v1, v3

    add-int v5, v1, v3

    invoke-static {p0, v4, v1, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([IIII)I

    move-result v1

    .line 606
    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    sub-int v3, v2, v3

    invoke-static {p0, v4, v3, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([IIII)I

    move-result v2

    .line 608
    :goto_4a
    invoke-static {p0, v0, v1, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([IIII)I

    move-result v1

    .line 610
    :cond_4e
    aget v5, p0, v1

    .line 613
    add-int v0, p1, p2

    add-int/lit8 v3, v0, -0x1

    move v1, v3

    move v0, p1

    move v2, v3

    move v4, p1

    .line 615
    :goto_58
    if-gt v4, v2, :cond_6b

    aget v3, p0, v4

    if-gt v3, v5, :cond_6b

    .line 616
    aget v3, p0, v4

    if-ne v3, v5, :cond_67

    .line 617
    invoke-static {p0, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([III)V

    add-int/lit8 v0, v0, 0x1

    .line 618
    :cond_67
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_58

    .line 620
    :cond_6b
    :goto_6b
    if-lt v2, v4, :cond_7d

    aget v3, p0, v2

    if-lt v3, v5, :cond_7d

    .line 621
    aget v3, p0, v2

    if-ne v3, v5, :cond_7a

    .line 622
    invoke-static {p0, v2, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([III)V

    add-int/lit8 v1, v1, -0x1

    .line 623
    :cond_7a
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    .line 625
    :cond_7d
    if-le v4, v2, :cond_ae

    .line 626
    add-int v3, p1, p2

    .line 632
    sub-int v5, v0, p1

    sub-int v6, v4, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 633
    sub-int v6, v4, v5

    invoke-static {p0, p1, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([IIII)V

    .line 634
    sub-int v5, v1, v2

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 635
    sub-int v6, v3, v5

    invoke-static {p0, v4, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([IIII)V

    .line 638
    sub-int v0, v4, v0

    if-le v0, v7, :cond_a4

    .line 639
    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([III)V

    .line 640
    :cond_a4
    sub-int v0, v1, v2

    if-le v0, v7, :cond_ad

    .line 641
    sub-int v1, v3, v0

    invoke-static {p0, v1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([III)V

    .line 642
    :cond_ad
    return-void

    .line 627
    :cond_ae
    invoke-static {p0, v4, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([III)V

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_58

    :cond_b7
    move v0, p1

    goto :goto_4a
.end method

.method private static sort1([JII)V
    .registers 14

    const/4 v2, 0x7

    const/4 v10, 0x1

    .line 505
    if-ge p2, v2, :cond_21

    move v1, p1

    .line 506
    :goto_5
    add-int v0, p2, p1

    if-ge v1, v0, :cond_b7

    move v0, v1

    .line 507
    :goto_a
    if-le v0, p1, :cond_1e

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p0, v2

    aget-wide v4, p0, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    .line 508
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v0, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([JII)V

    .line 507
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 506
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 513
    :cond_21
    shr-int/lit8 v0, p2, 0x1

    add-int v1, v0, p1

    .line 514
    if-le p2, v2, :cond_50

    .line 516
    add-int v0, p1, p2

    add-int/lit8 v2, v0, -0x1

    .line 517
    const/16 v0, 0x28

    if-le p2, v0, :cond_c1

    .line 518
    div-int/lit8 v3, p2, 0x8

    .line 519
    add-int v0, p1, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p1

    invoke-static {p0, p1, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([JIII)I

    move-result v0

    .line 520
    sub-int v4, v1, v3

    add-int v5, v1, v3

    invoke-static {p0, v4, v1, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([JIII)I

    move-result v1

    .line 521
    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    sub-int v3, v2, v3

    invoke-static {p0, v4, v3, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([JIII)I

    move-result v2

    .line 523
    :goto_4c
    invoke-static {p0, v0, v1, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([JIII)I

    move-result v1

    .line 525
    :cond_50
    aget-wide v6, p0, v1

    .line 528
    add-int v0, p1, p2

    add-int/lit8 v3, v0, -0x1

    move v1, v3

    move v0, p1

    move v2, v3

    move v4, p1

    .line 530
    :goto_5a
    if-gt v4, v2, :cond_71

    aget-wide v8, p0, v4

    cmp-long v3, v8, v6

    if-gtz v3, :cond_71

    .line 531
    aget-wide v8, p0, v4

    cmp-long v3, v8, v6

    if-nez v3, :cond_6d

    .line 532
    invoke-static {p0, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([JII)V

    add-int/lit8 v0, v0, 0x1

    .line 533
    :cond_6d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5a

    .line 535
    :cond_71
    :goto_71
    if-lt v2, v4, :cond_87

    aget-wide v8, p0, v2

    cmp-long v3, v8, v6

    if-ltz v3, :cond_87

    .line 536
    aget-wide v8, p0, v2

    cmp-long v3, v8, v6

    if-nez v3, :cond_84

    .line 537
    invoke-static {p0, v2, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([JII)V

    add-int/lit8 v1, v1, -0x1

    .line 538
    :cond_84
    add-int/lit8 v2, v2, -0x1

    goto :goto_71

    .line 540
    :cond_87
    if-le v4, v2, :cond_b8

    .line 541
    add-int v3, p1, p2

    .line 547
    sub-int v5, v0, p1

    sub-int v6, v4, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 548
    sub-int v6, v4, v5

    invoke-static {p0, p1, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([JIII)V

    .line 549
    sub-int v5, v1, v2

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 550
    sub-int v6, v3, v5

    invoke-static {p0, v4, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([JIII)V

    .line 553
    sub-int v0, v4, v0

    if-le v0, v10, :cond_ae

    .line 554
    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([JII)V

    .line 555
    :cond_ae
    sub-int v0, v1, v2

    if-le v0, v10, :cond_b7

    .line 556
    sub-int v1, v3, v0

    invoke-static {p0, v1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([JII)V

    .line 557
    :cond_b7
    return-void

    .line 542
    :cond_b8
    invoke-static {p0, v4, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([JII)V

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_5a

    :cond_c1
    move v0, p1

    goto :goto_4c
.end method

.method private static sort1([SII)V
    .registers 11

    const/4 v2, 0x7

    const/4 v7, 0x1

    .line 675
    if-ge p2, v2, :cond_1f

    move v1, p1

    .line 676
    :goto_5
    add-int v0, p2, p1

    if-ge v1, v0, :cond_ad

    move v0, v1

    .line 677
    :goto_a
    if-le v0, p1, :cond_1c

    add-int/lit8 v2, v0, -0x1

    aget-short v2, p0, v2

    aget-short v3, p0, v0

    if-le v2, v3, :cond_1c

    .line 678
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v0, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([SII)V

    .line 677
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 676
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 683
    :cond_1f
    shr-int/lit8 v0, p2, 0x1

    add-int v1, v0, p1

    .line 684
    if-le p2, v2, :cond_4e

    .line 686
    add-int v0, p1, p2

    add-int/lit8 v2, v0, -0x1

    .line 687
    const/16 v0, 0x28

    if-le p2, v0, :cond_b7

    .line 688
    div-int/lit8 v3, p2, 0x8

    .line 689
    add-int v0, p1, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p1

    invoke-static {p0, p1, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([SIII)I

    move-result v0

    .line 690
    sub-int v4, v1, v3

    add-int v5, v1, v3

    invoke-static {p0, v4, v1, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([SIII)I

    move-result v1

    .line 691
    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    sub-int v3, v2, v3

    invoke-static {p0, v4, v3, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([SIII)I

    move-result v2

    .line 693
    :goto_4a
    invoke-static {p0, v0, v1, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->med3([SIII)I

    move-result v1

    .line 695
    :cond_4e
    aget-short v5, p0, v1

    .line 698
    add-int v0, p1, p2

    add-int/lit8 v3, v0, -0x1

    move v1, v3

    move v0, p1

    move v2, v3

    move v4, p1

    .line 700
    :goto_58
    if-gt v4, v2, :cond_6b

    aget-short v3, p0, v4

    if-gt v3, v5, :cond_6b

    .line 701
    aget-short v3, p0, v4

    if-ne v3, v5, :cond_67

    .line 702
    invoke-static {p0, v0, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([SII)V

    add-int/lit8 v0, v0, 0x1

    .line 703
    :cond_67
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_58

    .line 705
    :cond_6b
    :goto_6b
    if-lt v2, v4, :cond_7d

    aget-short v3, p0, v2

    if-lt v3, v5, :cond_7d

    .line 706
    aget-short v3, p0, v2

    if-ne v3, v5, :cond_7a

    .line 707
    invoke-static {p0, v2, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([SII)V

    add-int/lit8 v1, v1, -0x1

    .line 708
    :cond_7a
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    .line 710
    :cond_7d
    if-le v4, v2, :cond_ae

    .line 711
    add-int v3, p1, p2

    .line 717
    sub-int v5, v0, p1

    sub-int v6, v4, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 718
    sub-int v6, v4, v5

    invoke-static {p0, p1, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([SIII)V

    .line 719
    sub-int v5, v1, v2

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 720
    sub-int v6, v3, v5

    invoke-static {p0, v4, v6, v5}, Lcom/spartacusrex/spartacuside/helper/Arrays;->vecswap([SIII)V

    .line 723
    sub-int v0, v4, v0

    if-le v0, v7, :cond_a4

    .line 724
    invoke-static {p0, p1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([SII)V

    .line 725
    :cond_a4
    sub-int v0, v1, v2

    if-le v0, v7, :cond_ad

    .line 726
    sub-int v1, v3, v0

    invoke-static {p0, v1, v0}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([SII)V

    .line 727
    :cond_ad
    return-void

    .line 712
    :cond_ae
    invoke-static {p0, v4, v2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([SII)V

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_58

    :cond_b7
    move v0, p1

    goto :goto_4a
.end method

.method private static sort2([DII)V
    .registers 15

    const/4 v2, 0x0

    const-wide/16 v10, 0x0

    .line 413
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move v1, p1

    move v0, v2

    .line 425
    :goto_9
    if-ge v1, p2, :cond_30

    .line 426
    aget-wide v6, p0, v1

    aget-wide v8, p0, v1

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_19

    .line 427
    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, v1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([DII)V

    goto :goto_9

    .line 429
    :cond_19
    aget-wide v6, p0, v1

    cmpl-double v3, v6, v10

    if-nez v3, :cond_2d

    aget-wide v6, p0, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_2d

    .line 430
    aput-wide v10, p0, v1

    .line 431
    add-int/lit8 v0, v0, 0x1

    .line 433
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 438
    :cond_30
    sub-int v1, p2, p1

    invoke-static {p0, p1, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([DII)V

    .line 441
    if-eqz v0, :cond_4e

    .line 442
    invoke-static {p0, p1, p2, v10, v11}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([DIID)I

    move-result v1

    .line 444
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    .line 445
    if-lt v1, p1, :cond_45

    aget-wide v4, p0, v1

    cmpl-double v3, v4, v10

    if-eqz v3, :cond_3b

    .line 448
    :cond_45
    :goto_45
    if-ge v2, v0, :cond_4e

    .line 449
    add-int/lit8 v1, v1, 0x1

    aput-wide v10, p0, v1

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 451
    :cond_4e
    return-void
.end method

.method private static sort2([FII)V
    .registers 10

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 460
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    move v1, p1

    move v0, v2

    .line 472
    :goto_8
    if-ge v1, p2, :cond_2d

    .line 473
    aget v4, p0, v1

    aget v5, p0, v1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_18

    .line 474
    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, v1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([FII)V

    goto :goto_8

    .line 476
    :cond_18
    aget v4, p0, v1

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2a

    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v4, v3, :cond_2a

    .line 477
    aput v6, p0, v1

    .line 478
    add-int/lit8 v0, v0, 0x1

    .line 480
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 485
    :cond_2d
    sub-int v1, p2, p1

    invoke-static {p0, p1, v1}, Lcom/spartacusrex/spartacuside/helper/Arrays;->sort1([FII)V

    .line 488
    if-eqz v0, :cond_4b

    .line 489
    invoke-static {p0, p1, p2, v6}, Lcom/spartacusrex/spartacuside/helper/Arrays;->binarySearch0([FIIF)I

    move-result v1

    .line 491
    :cond_38
    add-int/lit8 v1, v1, -0x1

    .line 492
    if-lt v1, p1, :cond_42

    aget v3, p0, v1

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_38

    .line 495
    :cond_42
    :goto_42
    if-ge v2, v0, :cond_4b

    .line 496
    add-int/lit8 v1, v1, 0x1

    aput v6, p0, v1

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 498
    :cond_4b
    return-void
.end method

.method private static swap([BII)V
    .registers 5

    .line 903
    aget-byte v0, p0, p1

    .line 904
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 905
    aput-byte v0, p0, p2

    .line 906
    return-void
.end method

.method private static swap([CII)V
    .registers 5

    .line 818
    aget-char v0, p0, p1

    .line 819
    aget-char v1, p0, p2

    aput-char v1, p0, p1

    .line 820
    aput-char v0, p0, p2

    .line 821
    return-void
.end method

.method private static swap([DII)V
    .registers 7

    .line 988
    aget-wide v0, p0, p1

    .line 989
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 990
    aput-wide v0, p0, p2

    .line 991
    return-void
.end method

.method private static swap([FII)V
    .registers 5

    .line 1073
    aget v0, p0, p1

    .line 1074
    aget v1, p0, p2

    aput v1, p0, p1

    .line 1075
    aput v0, p0, p2

    .line 1076
    return-void
.end method

.method private static swap([III)V
    .registers 5

    .line 648
    aget v0, p0, p1

    .line 649
    aget v1, p0, p2

    aput v1, p0, p1

    .line 650
    aput v0, p0, p2

    .line 651
    return-void
.end method

.method private static swap([JII)V
    .registers 7

    .line 563
    aget-wide v0, p0, p1

    .line 564
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 565
    aput-wide v0, p0, p2

    .line 566
    return-void
.end method

.method private static swap([Ljava/lang/Object;II)V
    .registers 5

    .line 1211
    aget-object v0, p0, p1

    .line 1212
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 1213
    aput-object v0, p0, p2

    .line 1214
    return-void
.end method

.method private static swap([SII)V
    .registers 5

    .line 733
    aget-short v0, p0, p1

    .line 734
    aget-short v1, p0, p2

    aput-short v1, p0, p1

    .line 735
    aput-short v0, p0, p2

    .line 736
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 5

    .line 3892
    if-nez p0, :cond_5

    .line 3893
    const-string v0, "null"

    .line 3903
    :goto_4
    return-object v0

    .line 3894
    :cond_5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 3895
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 3896
    const-string v0, "[]"

    goto :goto_4

    .line 3898
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3899
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3900
    const/4 v0, 0x0

    .line 3901
    :goto_19
    aget-byte v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3902
    if-ne v0, v1, :cond_2a

    .line 3903
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3904
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3900
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static toString([C)Ljava/lang/String;
    .registers 5

    .line 3862
    if-nez p0, :cond_5

    .line 3863
    const-string v0, "null"

    .line 3873
    :goto_4
    return-object v0

    .line 3864
    :cond_5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 3865
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 3866
    const-string v0, "[]"

    goto :goto_4

    .line 3868
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3869
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3870
    const/4 v0, 0x0

    .line 3871
    :goto_19
    aget-char v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3872
    if-ne v0, v1, :cond_2a

    .line 3873
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3874
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3870
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static toString([D)Ljava/lang/String;
    .registers 7

    .line 3982
    if-nez p0, :cond_5

    .line 3983
    const-string v0, "null"

    .line 3993
    :goto_4
    return-object v0

    .line 3984
    :cond_5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 3985
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 3986
    const-string v0, "[]"

    goto :goto_4

    .line 3988
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3989
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3990
    const/4 v0, 0x0

    .line 3991
    :goto_19
    aget-wide v4, p0, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3992
    if-ne v0, v1, :cond_2a

    .line 3993
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3994
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3990
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static toString([F)Ljava/lang/String;
    .registers 5

    .line 3952
    if-nez p0, :cond_5

    .line 3953
    const-string v0, "null"

    .line 3963
    :goto_4
    return-object v0

    .line 3954
    :cond_5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 3955
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 3956
    const-string v0, "[]"

    goto :goto_4

    .line 3958
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3959
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3960
    const/4 v0, 0x0

    .line 3961
    :goto_19
    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3962
    if-ne v0, v1, :cond_2a

    .line 3963
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3964
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3960
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static toString([I)Ljava/lang/String;
    .registers 5

    .line 3802
    if-nez p0, :cond_5

    .line 3803
    const-string v0, "null"

    .line 3813
    :goto_4
    return-object v0

    .line 3804
    :cond_5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 3805
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 3806
    const-string v0, "[]"

    goto :goto_4

    .line 3808
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3809
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3810
    const/4 v0, 0x0

    .line 3811
    :goto_19
    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3812
    if-ne v0, v1, :cond_2a

    .line 3813
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3814
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3810
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static toString([J)Ljava/lang/String;
    .registers 7

    .line 3772
    if-nez p0, :cond_5

    .line 3773
    const-string v0, "null"

    .line 3783
    :goto_4
    return-object v0

    .line 3774
    :cond_5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 3775
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 3776
    const-string v0, "[]"

    goto :goto_4

    .line 3778
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3779
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3780
    const/4 v0, 0x0

    .line 3781
    :goto_19
    aget-wide v4, p0, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3782
    if-ne v0, v1, :cond_2a

    .line 3783
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3784
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3780
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 4015
    if-nez p0, :cond_5

    .line 4016
    const-string v0, "null"

    .line 4026
    :goto_4
    return-object v0

    .line 4017
    :cond_5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 4018
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 4019
    const-string v0, "[]"

    goto :goto_4

    .line 4021
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4022
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4023
    const/4 v0, 0x0

    .line 4024
    :goto_19
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4025
    if-ne v0, v1, :cond_2e

    .line 4026
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 4027
    :cond_2e
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4023
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static toString([S)Ljava/lang/String;
    .registers 5

    .line 3832
    if-nez p0, :cond_5

    .line 3833
    const-string v0, "null"

    .line 3843
    :goto_4
    return-object v0

    .line 3834
    :cond_5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 3835
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 3836
    const-string v0, "[]"

    goto :goto_4

    .line 3838
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3839
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3840
    const/4 v0, 0x0

    .line 3841
    :goto_19
    aget-short v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3842
    if-ne v0, v1, :cond_2a

    .line 3843
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3844
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3840
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static toString([Z)Ljava/lang/String;
    .registers 5

    .line 3922
    if-nez p0, :cond_5

    .line 3923
    const-string v0, "null"

    .line 3933
    :goto_4
    return-object v0

    .line 3924
    :cond_5
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 3925
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    .line 3926
    const-string v0, "[]"

    goto :goto_4

    .line 3928
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3929
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3930
    const/4 v0, 0x0

    .line 3931
    :goto_19
    aget-boolean v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3932
    if-ne v0, v1, :cond_2a

    .line 3933
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3934
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3930
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method private static vecswap([BIII)V
    .registers 5

    .line 912
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    .line 913
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([BII)V

    .line 912
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 914
    :cond_d
    return-void
.end method

.method private static vecswap([CIII)V
    .registers 5

    .line 827
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    .line 828
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([CII)V

    .line 827
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 829
    :cond_d
    return-void
.end method

.method private static vecswap([DIII)V
    .registers 5

    .line 997
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    .line 998
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([DII)V

    .line 997
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 999
    :cond_d
    return-void
.end method

.method private static vecswap([FIII)V
    .registers 5

    .line 1082
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    .line 1083
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([FII)V

    .line 1082
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1084
    :cond_d
    return-void
.end method

.method private static vecswap([IIII)V
    .registers 5

    .line 657
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    .line 658
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([III)V

    .line 657
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 659
    :cond_d
    return-void
.end method

.method private static vecswap([JIII)V
    .registers 5

    .line 572
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    .line 573
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([JII)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 574
    :cond_d
    return-void
.end method

.method private static vecswap([SIII)V
    .registers 5

    .line 742
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    .line 743
    invoke-static {p0, p1, p2}, Lcom/spartacusrex/spartacuside/helper/Arrays;->swap([SII)V

    .line 742
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 744
    :cond_d
    return-void
.end method
