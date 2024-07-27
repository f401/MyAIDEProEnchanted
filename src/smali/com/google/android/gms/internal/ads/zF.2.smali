.class public final Lcom/google/android/gms/internal/ads/zF;
.super Lcom/google/android/gms/internal/ads/qF;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private FH:Ljava/security/MessageDigest;

.field private final Hw:I

.field private final v5:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qF;-><init>()V

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zF;->Hw:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zF;->v5:I

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)[B
    .registers 11

    const/16 v8, 0x8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qF;->DW:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qF;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zF;->FH:Ljava/security/MessageDigest;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zF;->FH:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    monitor-exit v4

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zF;->FH:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zF;->FH:Ljava/security/MessageDigest;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zF;->FH:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zF;->Hw:I

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zF;->Hw:I

    :goto_1
    new-array v2, v0, [B

    const/4 v0, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v1, v0, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zF;->v5:I

    rem-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_4

    const-wide/16 v0, 0x0

    :goto_2
    array-length v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v5, :cond_3

    if-lez v3, :cond_1

    shl-long/2addr v0, v8

    :cond_1
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    int-to-long v6, v5

    add-long/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :try_start_1
    array-length v0, v1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/google/android/gms/internal/ads/zF;->v5:I

    rem-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x8

    ushr-long/2addr v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zF;->Hw:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_4

    const-wide/16 v6, 0xff

    and-long/2addr v6, v0

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    ushr-long/2addr v0, v8

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    :try_start_2
    monitor-exit v4

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
