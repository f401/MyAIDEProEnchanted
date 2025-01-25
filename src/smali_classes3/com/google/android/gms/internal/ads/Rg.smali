.class final Lcom/google/android/gms/internal/ads/Rg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Cl<",
        "Lcom/google/android/gms/internal/ads/V;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:D

.field private final FH:Z

.field private final Hw:Ljava/lang/String;

.field private final j6:Z

.field private final v5:Lcom/google/android/gms/internal/ads/Kg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Kg;ZDZLjava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rg;->v5:Lcom/google/android/gms/internal/ads/Kg;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Rg;->j6:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/Rg;->DW:D

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Rg;->FH:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Rg;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final DW(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/V;
    .registers 12

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Rg;->DW:D

    const-wide/high16 v3, 0x4064000000000000L  # 160.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Rg;->FH:Z

    if-nez v1, :cond_16

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_1b
    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_20

    goto :goto_27

    :catch_20
    move-exception p1

    const-string v0, "Error grabbing image."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v3

    :goto_27
    if-nez p1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rg;->v5:Lcom/google/android/gms/internal/ads/Kg;

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Rg;->j6:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Kg;->j6(IZ)V

    return-object v3

    :cond_32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/gms/common/util/o;->Zo()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ek;->j6()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    if-ne v7, v8, :cond_5e

    const/4 v7, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v7, 0x0

    :goto_5f
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x6c

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Decoded image w: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " on ui thread: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_96
    new-instance v0, Lcom/google/android/gms/internal/ads/V;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rg;->Hw:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Rg;->DW:D

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/V;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    return-object v0
.end method


# virtual methods
.method public final synthetic j6()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rg;->v5:Lcom/google/android/gms/internal/ads/Kg;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Rg;->j6:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Kg;->j6(IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic j6(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Rg;->DW(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/V;

    move-result-object p1

    return-object p1
.end method
