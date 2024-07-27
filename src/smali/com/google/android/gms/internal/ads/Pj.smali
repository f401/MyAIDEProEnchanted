.class final Lcom/google/android/gms/internal/ads/Pj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Mj;

.field private final j6:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Mj;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pj;->DW:Lcom/google/android/gms/internal/ads/Mj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Pj;->j6:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pj;->j6:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pj;->DW:Lcom/google/android/gms/internal/ads/Mj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Mj;->j6(Lcom/google/android/gms/internal/ads/Mj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Pj;->DW:Lcom/google/android/gms/internal/ads/Mj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Mj;->DW(Lcom/google/android/gms/internal/ads/Mj;)Lcom/google/android/gms/internal/ads/mw;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/rw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/rw;-><init>()V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Pj;->DW:Lcom/google/android/gms/internal/ads/Mj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Mj;->DW(Lcom/google/android/gms/internal/ads/Mj;)Lcom/google/android/gms/internal/ads/mw;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/rw;->v5:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pj;->DW:Lcom/google/android/gms/internal/ads/Mj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Mj;->DW(Lcom/google/android/gms/internal/ads/Mj;)Lcom/google/android/gms/internal/ads/mw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    const-string v2, "image/png"

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/rw;->Hw:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pj;->DW:Lcom/google/android/gms/internal/ads/Mj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Mj;->DW(Lcom/google/android/gms/internal/ads/Mj;)Lcom/google/android/gms/internal/ads/mw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/rw;->FH:Ljava/lang/Integer;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
