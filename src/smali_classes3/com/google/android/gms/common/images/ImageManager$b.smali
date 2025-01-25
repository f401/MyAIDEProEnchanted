.class final Lcom/google/android/gms/common/images/ImageManager$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final DW:Landroid/os/ParcelFileDescriptor;

.field private final FH:Lcom/google/android/gms/common/images/ImageManager;

.field private final j6:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$b;->FH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$b;->j6:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/ImageManager$b;->DW:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    const-string v0, "LoadBitmapFromDiskRunnable can\'t be executed in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$b;->DW:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    const-string v2, "ImageManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4c

    :try_start_e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_3d

    :catch_17
    move-exception v0

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$b;->j6:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x22

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "OOM while loading bitmap for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x1

    :goto_3d
    :try_start_3d
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$b;->DW:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception v0

    const-string v5, "closed failed"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    move v10, v3

    move-object v9, v4

    goto :goto_4e

    :cond_4c
    move-object v9, v4

    const/4 v10, 0x0

    :goto_4e
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$b;->FH:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->VH(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/common/images/ImageManager$c;

    iget-object v7, p0, Lcom/google/android/gms/common/images/ImageManager$b;->FH:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v8, p0, Lcom/google/android/gms/common/images/ImageManager$b;->j6:Landroid/net/Uri;

    move-object v6, v3

    move-object v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/common/images/ImageManager$c;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_67
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6a} :catch_6b

    return-void

    :catch_6b
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$b;->j6:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Latch interrupted while posting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
