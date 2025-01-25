.class final Lcom/google/android/gms/internal/ads/ki;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:[B

.field private final j6:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasy;Ljava/io/OutputStream;[B)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ki;->j6:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ki;->DW:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ki;->j6:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_20
    .catchall {:try_start_1 .. :try_end_8} :catchall_1e

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ki;->DW:[B

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ki;->DW:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_19
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    invoke-static {v1}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    return-void

    :catchall_17
    move-exception v0

    goto :goto_3f

    :catch_19
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_21

    :catchall_1e
    move-exception v1

    goto :goto_42

    :catch_20
    move-exception v1

    :goto_21
    :try_start_21
    const-string v2, "Error transporting the ad response"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    const-string v3, "LargeParcelTeleporter.pipeData.1"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_3b

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ki;->j6:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    return-void

    :cond_37
    invoke-static {v0}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    return-void

    :catchall_3b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3f
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_42
    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ki;->j6:Ljava/io/OutputStream;

    :cond_46
    invoke-static {v0}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    throw v1
.end method
