.class public final Lcom/google/android/gms/internal/ads/SD;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, -0x1

    const/16 v8, 0x2f

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/String;)[I

    move-result-object v2

    aget v0, v2, v6

    if-eq v0, v9, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v5

    aget v2, v2, v7

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v0, 0x3

    aget v0, v2, v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    aget v0, v3, v0

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget v0, v2, v7

    if-nez v0, :cond_4

    aget v0, v3, v7

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    aget v0, v2, v5

    if-eqz v0, :cond_5

    aget v0, v3, v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v5

    add-int/2addr v3, v0

    aget v2, v2, v7

    add-int/2addr v0, v2

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    aget v0, v2, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_6

    aget v0, v3, v5

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v3, v5

    aget v3, v3, v5

    aget v2, v2, v7

    add-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    aget v0, v3, v6

    add-int/lit8 v0, v0, 0x2

    aget v4, v3, v5

    if-ge v0, v4, :cond_7

    aget v0, v3, v5

    aget v4, v3, v7

    if-ne v0, v4, :cond_7

    aget v0, v3, v5

    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v3, v5

    aget v3, v3, v5

    aget v2, v2, v7

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    aget v0, v3, v7

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-ne v0, v9, :cond_8

    aget v0, v3, v5

    :goto_1
    invoke-virtual {v1, p0, v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v3, v5

    aget v2, v2, v7

    add-int/2addr v0, v2

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static j6(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .registers 10

    const/16 v6, 0x2f

    const/16 v5, 0x2e

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    move v0, p1

    :goto_1
    move v1, v0

    :goto_2
    if-gt v1, p2, :cond_7

    if-ne v1, p2, :cond_2

    move v2, v1

    :goto_3
    add-int/lit8 v3, v0, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int v1, v2, v0

    :goto_4
    sub-int/2addr p2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_6

    add-int/lit8 v2, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x2

    if-ne v1, v4, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_5

    const-string v1, "/"

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_4

    move v1, v0

    :goto_5
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int v1, v2, v1

    goto :goto_4

    :cond_4
    move v1, p1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;)[I
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v9, 0x2f

    const/4 v7, -0x1

    const/4 v0, 0x4

    new-array v3, v0, [I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    aput v7, v3, v5

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v7, :cond_8

    :goto_1
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v7, :cond_1

    if-le v1, v0, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v7, :cond_3

    if-le v2, v1, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-le v6, v2, :cond_5

    move v6, v7

    :cond_5
    add-int/lit8 v2, v6, 0x2

    if-ge v2, v1, :cond_9

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_9

    move v2, v4

    :goto_2
    if-eqz v2, :cond_a

    add-int/lit8 v2, v6, 0x3

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v7, :cond_6

    if-le v2, v1, :cond_7

    :cond_6
    move v2, v1

    :cond_7
    :goto_3
    aput v6, v3, v5

    aput v2, v3, v4

    const/4 v2, 0x2

    aput v1, v3, v2

    const/4 v1, 0x3

    aput v0, v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    move v2, v5

    goto :goto_2

    :cond_a
    add-int/lit8 v2, v6, 0x1

    goto :goto_3
.end method
