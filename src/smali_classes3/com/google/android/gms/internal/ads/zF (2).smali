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

    if-lez v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    iput v0, p0, Lcom/google/android/gms/internal/ads/zF;->Hw:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zF;->v5:I

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)[B
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qF;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qF;->j6()Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zF;->FH:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    monitor-exit v0

    new-array p1, v2, [B

    return-object p1

    :cond_10
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zF;->FH:Ljava/security/MessageDigest;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zF;->FH:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length v1, p1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zF;->Hw:I

    if-le v1, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    array-length v3, p1

    :goto_2f
    new-array v1, v3, [B

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zF;->v5:I

    const/16 v4, 0x8

    rem-int/2addr p1, v4
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_65

    if-lez p1, :cond_63

    const-wide/16 v5, 0x0

    :goto_3d
    if-ge v2, v3, :cond_4b

    if-lez v2, :cond_42

    shl-long/2addr v5, v4

    :cond_42
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v7, p1

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_4b
    :try_start_4b
    iget p1, p0, Lcom/google/android/gms/internal/ads/zF;->v5:I

    rem-int/2addr p1, v4

    rsub-int/lit8 p1, p1, 0x8

    ushr-long v2, v5, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zF;->Hw:I
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_65

    add-int/lit8 p1, p1, -0x1

    :goto_56
    if-ltz p1, :cond_63

    const-wide/16 v5, 0xff

    and-long/2addr v5, v2

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, p1

    ushr-long/2addr v2, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_56

    :cond_63
    :try_start_63
    monitor-exit v0

    return-object v1

    :catchall_65
    move-exception p1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_65

    goto :goto_69

    :goto_68
    throw p1

    :goto_69
    goto :goto_68
.end method
