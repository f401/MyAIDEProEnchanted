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

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ci$a;)Landroid/graphics/Bitmap;
    .registers 1

    .line 432
    iget-object p0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a(IIILandroid/graphics/Bitmap;)V
    .registers 6

    monitor-enter p0

    .line 443
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3a

    if-eq v0, p2, :cond_27

    .line 445
    :cond_13
    :try_start_13
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_1b} :catch_1c
    .catchall {:try_start_13 .. :try_end_1b} :catchall_3a

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 447
    const/4 p1, 0x0

    :try_start_1e
    iput-object p1, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    .line 450
    :goto_20
    iget-object p1, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_27

    .line 451
    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 455
    :cond_27
    iget-object p1, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_38

    .line 456
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/baidu/mobstat/ci$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 457
    iget-object p2, p0, Lcom/baidu/mobstat/ci$a;->b:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_3a

    .line 459
    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
