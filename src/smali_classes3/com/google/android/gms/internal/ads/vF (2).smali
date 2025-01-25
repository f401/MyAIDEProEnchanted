.class public final Lcom/google/android/gms/internal/ads/vF;
.super Lcom/google/android/gms/internal/ads/qF;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private FH:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qF;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)[B
    .registers 10

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_23

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uF;->j6(Ljava/lang/String;)I

    move-result p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_76

    :cond_23
    array-length v0, p1

    const/4 v4, 0x5

    if-ge v0, v4, :cond_53

    array-length v0, p1

    shl-int/2addr v0, v3

    new-array v0, v0, [B

    const/4 v4, 0x0

    :goto_2c
    array-length v5, p1

    if-ge v4, v5, :cond_75

    aget-object v5, p1, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/uF;->j6(Ljava/lang/String;)I

    move-result v5

    shr-int/lit8 v6, v5, 0x10

    const v7, 0xffff

    and-int/2addr v5, v7

    xor-int/2addr v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [B

    int-to-byte v7, v5

    aput-byte v7, v6, v1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v6, v3

    shl-int/lit8 v5, v4, 0x1

    aput-byte v7, v0, v5

    add-int/2addr v5, v3

    aget-byte v6, v6, v3

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_53
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v3, 0x0

    :goto_57
    array-length v4, p1

    if-ge v3, v4, :cond_75

    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/uF;->j6(Ljava/lang/String;)I

    move-result v4

    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v6, v4, 0xff

    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v4, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_75
    move-object p1, v0

    :goto_76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qF;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vF;->FH:Ljava/security/MessageDigest;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qF;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vF;->FH:Ljava/security/MessageDigest;

    if-nez v3, :cond_87

    monitor-exit v0

    new-array p1, v1, [B

    return-object p1

    :cond_87
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vF;->FH:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vF;->FH:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length v3, p1

    if-le v3, v2, :cond_99

    goto :goto_9a

    :cond_99
    array-length v2, p1

    :goto_9a
    new-array v3, v2, [B

    invoke-static {p1, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return-object v3

    :catchall_a1
    move-exception p1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_7f .. :try_end_a3} :catchall_a1

    goto :goto_a5

    :goto_a4
    throw p1

    :goto_a5
    goto :goto_a4
.end method
