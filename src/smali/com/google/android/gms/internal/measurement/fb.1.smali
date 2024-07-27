.class Lcom/google/android/gms/internal/measurement/fb;
.super Lcom/google/android/gms/internal/measurement/eb;


# instance fields
.field protected final v5:[B


# direct methods
.method constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/eb;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final DW()Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->Hw()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/bd;->j6([BII)Z

    move-result v0

    return v0
.end method

.method protected Hw()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method Zo(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/Wa;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->size()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/Wa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/fb;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/measurement/fb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Wa;->FH()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Wa;->FH()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/fb;->j6(Lcom/google/android/gms/internal/measurement/Wa;II)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final j6(III)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->Hw()I

    move-result v1

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/measurement/Hb;->j6(I[BII)I

    move-result v0

    return v0
.end method

.method public final j6(II)Lcom/google/android/gms/internal/measurement/Wa;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->size()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/internal/measurement/Wa;->DW(III)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/Wa;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->Hw()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ab;-><init>([BII)V

    goto :goto_0
.end method

.method protected final j6(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->Hw()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/Va;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->Hw()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/Va;->j6([BII)V

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/Wa;II)Z
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v1

    if-gt p3, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v1

    if-gt p3, v1, :cond_3

    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/fb;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/fb;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->Hw()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->Hw()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/fb;->Hw()I

    move-result v1

    :goto_0
    add-int v6, v5, p3

    if-ge v2, v6, :cond_1

    aget-byte v6, v3, v2

    aget-byte v7, v4, v1

    if-eq v6, v7, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/measurement/Wa;->j6(II)Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/measurement/fb;->j6(II)Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/Wa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    array-length v0, v0

    return v0
.end method

.method public v5(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->v5:[B

    aget-byte v0, v0, p1

    return v0
.end method
