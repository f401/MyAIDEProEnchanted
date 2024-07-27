.class Lcom/baidu/mobstat/ci$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/ci$a;->b:Landroid/graphics/Paint;

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    .line 436
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ci$a;)Landroid/graphics/Bitmap;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a(IIILandroid/graphics/Bitmap;)V
    .registers 9

    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p2, :cond_1

    .line 445
    :cond_0
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 456
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 457
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/mobstat/ci$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    :cond_2
    monitor-exit p0

    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
