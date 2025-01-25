.class public La/j/b;
.super Ljava/lang/Object;


# direct methods
.method public static a([BI[BI)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_1c

    aget-byte v5, p0, v3

    aget-byte v6, p2, v3

    if-ge v5, v6, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    aget-byte v5, p0, v3

    aget-byte v6, p2, v3

    if-le v5, v6, :cond_19

    move v0, v1

    goto :goto_10

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1c
    if-lt p1, p3, :cond_10

    if-ne p1, p3, :cond_22

    move v0, v2

    goto :goto_10

    :cond_22
    move v0, v1

    goto :goto_10
.end method

.method public static a([CI[CI)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_1c

    aget-char v5, p0, v3

    aget-char v6, p2, v3

    if-ge v5, v6, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    aget-char v5, p0, v3

    aget-char v6, p2, v3

    if-le v5, v6, :cond_19

    move v0, v1

    goto :goto_10

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1c
    if-lt p1, p3, :cond_10

    if-ne p1, p3, :cond_22

    move v0, v2

    goto :goto_10

    :cond_22
    move v0, v1

    goto :goto_10
.end method

.method public static a([DI[DI)I
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_20

    aget-wide v6, p0, v3

    aget-wide v8, p2, v3

    cmpg-double v5, v6, v8

    if-gez v5, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    aget-wide v6, p0, v3

    aget-wide v8, p2, v3

    cmpl-double v5, v6, v8

    if-lez v5, :cond_1d

    move v0, v1

    goto :goto_12

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_20
    if-lt p1, p3, :cond_12

    if-ne p1, p3, :cond_26

    move v0, v2

    goto :goto_12

    :cond_26
    move v0, v1

    goto :goto_12
.end method

.method public static a([FI[FI)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_20

    aget v5, p0, v3

    aget v6, p2, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    aget v5, p0, v3

    aget v6, p2, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1d

    move v0, v1

    goto :goto_12

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_20
    if-lt p1, p3, :cond_12

    if-ne p1, p3, :cond_26

    move v0, v2

    goto :goto_12

    :cond_26
    move v0, v1

    goto :goto_12
.end method

.method public static a([II[II)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_1c

    aget v5, p0, v3

    aget v6, p2, v3

    if-ge v5, v6, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    aget v5, p0, v3

    aget v6, p2, v3

    if-le v5, v6, :cond_19

    move v0, v1

    goto :goto_10

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1c
    if-lt p1, p3, :cond_10

    if-ne p1, p3, :cond_22

    move v0, v2

    goto :goto_10

    :cond_22
    move v0, v1

    goto :goto_10
.end method

.method public static a([JI[JI)I
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_20

    aget-wide v6, p0, v3

    aget-wide v8, p2, v3

    cmp-long v5, v6, v8

    if-gez v5, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    aget-wide v6, p0, v3

    aget-wide v8, p2, v3

    cmp-long v5, v6, v8

    if-lez v5, :cond_1d

    move v0, v1

    goto :goto_12

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_20
    if-lt p1, p3, :cond_12

    if-ne p1, p3, :cond_26

    move v0, v2

    goto :goto_12

    :cond_26
    move v0, v1

    goto :goto_12
.end method

.method public static a([Ljava/lang/Object;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    array-length v0, p0

    invoke-static {p0, v0}, La/j/b;->a([Ljava/lang/Object;I)I

    move-result v0

    goto :goto_3
.end method

.method public static a([Ljava/lang/Object;I)I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    if-ge v0, p1, :cond_15

    ushr-int/lit8 v1, v2, 0x1f

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    :cond_15
    return v2
.end method

.method public static a([SI[SI)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_1c

    aget-short v5, p0, v3

    aget-short v6, p2, v3

    if-ge v5, v6, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    aget-short v5, p0, v3

    aget-short v6, p2, v3

    if-le v5, v6, :cond_19

    move v0, v1

    goto :goto_10

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1c
    if-lt p1, p3, :cond_10

    if-ne p1, p3, :cond_22

    move v0, v2

    goto :goto_10

    :cond_22
    move v0, v1

    goto :goto_10
.end method

.method public static a([ZI[ZI)I
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_20

    aget-boolean v5, p0, v3

    if-nez v5, :cond_13

    aget-boolean v5, p2, v3

    if-eqz v5, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    aget-boolean v5, p0, v3

    if-eqz v5, :cond_1d

    aget-boolean v5, p2, v3

    if-nez v5, :cond_1d

    move v0, v1

    goto :goto_12

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_20
    if-lt p1, p3, :cond_12

    if-ne p1, p3, :cond_26

    move v0, v2

    goto :goto_12

    :cond_26
    move v0, v1

    goto :goto_12
.end method

.method public static a([Ljava/lang/Object;II)V
    .registers 5

    add-int/lit8 v0, p2, 0x1

    array-length v1, p0

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    aput-object v1, p0, v0

    return-void
.end method

.method public static a([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    array-length v0, p0

    invoke-static {p0, p1, v0}, La/j/b;->b([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_5
.end method

.method public static a([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_12

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :goto_e
    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public static a([BI)[B
    .registers 5

    const/4 v2, 0x0

    array-length v0, p0

    if-lt v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-array v0, p1, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_4
.end method

.method public static a([II)[I
    .registers 5

    const/4 v2, 0x0

    array-length v0, p0

    if-lt v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-array v0, p1, [I

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_4
.end method

.method public static a([III)[I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, La/j/b;->a([II)[I

    move-result-object v0

    aput p2, v0, p1

    return-object v0
.end method

.method public static a([JIJ)[J
    .registers 8

    const/4 v2, 0x0

    array-length v0, p0

    if-lt v0, p1, :cond_8

    invoke-static {p0, v2, p1, p2, p3}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_7
    :goto_7
    return-object p0

    :cond_8
    new-array p0, p1, [J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_7

    invoke-static {p0, v2, p1, p2, p3}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_7
.end method

.method public static a([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .registers 7

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, La/j/b;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {v0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p3, v0, p2

    return-object v0
.end method

.method public static a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, La/j/b;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return-object v0
.end method

.method public static a([ZI)[Z
    .registers 5

    const/4 v2, 0x0

    array-length v0, p0

    if-lt v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-array v0, p1, [Z

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_4
.end method

.method public static a([ZIZ)[Z
    .registers 5

    const/4 v1, 0x0

    array-length v0, p0

    if-lt v0, p1, :cond_8

    invoke-static {p0, v1, p1, p2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_7
    :goto_7
    return-object p0

    :cond_8
    new-array p0, p1, [Z

    if-eqz p2, :cond_7

    invoke-static {p0, v1, p1, p2}, Ljava/util/Arrays;->fill([ZIIZ)V

    goto :goto_7
.end method

.method public static b([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_8

    if-nez p1, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eqz p1, :cond_7

    invoke-static {p0, p1, p2}, La/j/b;->a([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_7
.end method

.method public static b([III)[I
    .registers 5

    const/4 v1, 0x0

    array-length v0, p0

    if-lt v0, p1, :cond_8

    invoke-static {p0, v1, p1, p2}, Ljava/util/Arrays;->fill([IIII)V

    :cond_7
    :goto_7
    return-object p0

    :cond_8
    new-array p0, p1, [I

    if-eqz p2, :cond_7

    invoke-static {p0, v1, p1, p2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_7
.end method

.method public static b([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_9

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static b([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 5

    const/4 v2, 0x0

    array-length v0, p0

    if-lt v0, p1, :cond_6

    move-object v0, p0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method

.method public static b([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    const/4 v1, 0x0

    array-length v0, p0

    if-lt v0, p1, :cond_9

    invoke-static {p0, v1, p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    move-object v0, p0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz p2, :cond_8

    invoke-static {v0, v1, p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_8
.end method
