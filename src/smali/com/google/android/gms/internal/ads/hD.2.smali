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

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .registers 8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hD;->DW:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    array-length v0, v0

    int-to-long v0, v0

    sub-long/2addr v0, v2

    :cond_0
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/hD;->Hw:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/hD;->Hw:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/mD;->v5:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    array-length v1, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x4d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unsatisfiable range: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "], length: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read([BII)I
    .registers 7

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/hD;->Hw:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hD;->j6:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/hD;->FH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/hD;->Hw:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/hD;->Hw:I

    goto :goto_0
.end method
