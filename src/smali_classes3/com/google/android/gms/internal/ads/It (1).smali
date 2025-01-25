.class Lcom/google/android/gms/internal/ads/It;
.super Lcom/google/android/gms/internal/ads/Ht;


# instance fields
.field protected final v5:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ht;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final FH()Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->Zo()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Gv;->j6([BII)Z

    move-result v0

    return v0
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/Kt;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->Zo()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Kt;->j6([BIIZ)Lcom/google/android/gms/internal/ads/Kt;

    move-result-object v0

    return-object v0
.end method

.method protected Zo()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/yt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/It;

    if-eqz v0, :cond_3d

    check-cast p1, Lcom/google/android/gms/internal/ads/It;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yt;->v5()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->v5()I

    move-result v1

    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    if-eq v0, v1, :cond_34

    return v2

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/It;->j6(Lcom/google/android/gms/internal/ads/yt;II)Z

    move-result p1

    return p1

    :cond_3d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final j6(III)I
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->Zo()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/ju;->j6(I[BII)I

    move-result p1

    return p1
.end method

.method public final j6(II)Lcom/google/android/gms/internal/ads/yt;
    .registers 5

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/yt;->DW(III)I

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    return-object p1

    :cond_e
    new-instance p2, Lcom/google/android/gms/internal/ads/Ct;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->Zo()I

    move-result v1

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ct;-><init>([BII)V

    return-object p2
.end method

.method protected final j6(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->Zo()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/xt;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->Zo()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/xt;->j6([BII)V

    return-void
.end method

.method protected j6([BIII)V
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/yt;II)Z
    .registers 10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result p2

    if-gt p3, p2, :cond_67

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result p2

    if-gt p3, p2, :cond_42

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/It;

    const/4 v0, 0x0

    if-eqz p2, :cond_35

    check-cast p1, Lcom/google/android/gms/internal/ads/It;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/It;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->Zo()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->Zo()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/It;->Zo()I

    move-result p1

    :goto_23
    add-int v4, v2, p3

    if-ge v3, v4, :cond_33

    aget-byte v4, p2, v3

    aget-byte v5, v1, p1

    if-eq v4, v5, :cond_2e

    return v0

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    :cond_33
    const/4 p1, 0x1

    return p1

    :cond_35
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/yt;->j6(II)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/ads/It;->j6(II)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/yt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ran off end of other: 0, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/It;->size()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_88

    :goto_87
    throw p1

    :goto_88
    goto :goto_87
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    array-length v0, v0

    return v0
.end method

.method public v5(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/It;->v5:[B

    aget-byte p1, v0, p1

    return p1
.end method
