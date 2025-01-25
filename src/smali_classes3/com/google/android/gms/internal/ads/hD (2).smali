.class public final Lcom/google/android/gms/internal/ads/hD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/iD;


# instance fields
.field private DW:Landroid/net/Uri;

.field private FH:I

.field private Hw:I

.field private final j6:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hD;->DW:Landroid/net/Uri;

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hD;->DW:Landroid/net/Uri;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;)J
    .registers 9

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hD;->DW:Landroid/net/Uri;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    long-to-int v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    array-length v2, v2

    int-to-long v2, v2

    sub-long/2addr v2, v0

    :cond_16
    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/hD;->Hw:I

    if-lez v0, :cond_25

    iget v1, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    array-length v2, v2

    if-gt v1, v2, :cond_25

    int-to-long v0, v0

    return-wide v0

    :cond_25
    iget v0, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    array-length p1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsatisfiable range: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "], length: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final read([BII)I
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/hD;->Hw:I

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/hD;->Hw:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/hD;->Hw:I

    return p3
.end method
