.class Lcom/baidu/mobstat/ci$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/baidu/mobstat/ci$c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/ci$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/DisplayMetrics;

.field private final d:Lcom/baidu/mobstat/ci$a;

.field private final e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const/16 v0, 0xa0

    iput v0, p0, Lcom/baidu/mobstat/ci$b;->e:I

    .line 309
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ci$b;->c:Landroid/util/DisplayMetrics;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    .line 311
    new-instance v0, Lcom/baidu/mobstat/ci$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/ci$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ci$b;->d:Lcom/baidu/mobstat/ci$a;

    .line 312
    return-void
.end method

.method private a(Lcom/baidu/mobstat/ci$c;)V
    .registers 15

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 363
    iget-object v3, p1, Lcom/baidu/mobstat/ci$c;->b:Landroid/view/View;

    .line 364
    :try_start_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 368
    const-class v4, Landroid/view/View;

    const-string v5, "createSnapshot"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Bitmap$Config;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    aput-object v2, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 369
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 370
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 387
    :goto_0
    if-nez v0, :cond_0

    .line 388
    :try_start_1
    invoke-virtual {v3}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 389
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 390
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 391
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 398
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 399
    if-eqz v2, :cond_2

    .line 400
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    .line 402
    if-eqz v4, :cond_1

    .line 403
    const/high16 v0, 0x43200000    # 160.0f

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 406
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 407
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 409
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v6, v6

    .line 410
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v7, v8

    .line 412
    if-lez v4, :cond_2

    if-lez v5, :cond_2

    if-lez v6, :cond_2

    if-lez v7, :cond_2

    .line 413
    iget-object v4, p0, Lcom/baidu/mobstat/ci$b;->d:Lcom/baidu/mobstat/ci$a;

    const/16 v5, 0xa0

    invoke-virtual {v4, v6, v7, v5, v2}, Lcom/baidu/mobstat/ci$a;->a(IIILandroid/graphics/Bitmap;)V

    .line 417
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 418
    invoke-virtual {v3, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 420
    :cond_3
    iput v0, p1, Lcom/baidu/mobstat/ci$c;->d:F

    .line 421
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->d:Lcom/baidu/mobstat/ci$a;

    iput-object v0, p1, Lcom/baidu/mobstat/ci$c;->c:Lcom/baidu/mobstat/ci$a;

    .line 422
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v4, "autotrace: Can\'t call createSnapshot, will use drawCache"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 383
    goto :goto_0

    .line 373
    :catch_1
    move-exception v0

    .line 374
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v4, "autotrace: Can\'t call createSnapshot with arguments"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 383
    goto :goto_0

    .line 375
    :catch_2
    move-exception v0

    .line 376
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v4, "autotrace: Exception when calling createSnapshot"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 383
    goto/16 :goto_0

    .line 377
    :catch_3
    move-exception v0

    .line 378
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v4, "autotrace: Can\'t access createSnapshot, using drawCache"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 383
    goto/16 :goto_0

    .line 379
    :catch_4
    move-exception v0

    .line 380
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v4, "autotrace: createSnapshot didn\'t return a bitmap"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 383
    goto/16 :goto_0

    .line 381
    :catch_5
    move-exception v0

    .line 382
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    const-string v4, " autotrace:createSnapshot encounter exception"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 393
    :catch_6
    move-exception v2

    .line 394
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autotrace: Can\'t take a bitmap snapshot of view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipping for now."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v0

    goto/16 :goto_1
.end method

.method private b()V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cd;->a(Landroid/app/Activity;Z)V

    .line 352
    return-void
.end method

.method private c()V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cd;->a(Landroid/app/Activity;Z)V

    .line 357
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/ci$c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 326
    iget-object v1, p0, Lcom/baidu/mobstat/ci$b;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v0}, Lcom/baidu/mobstat/de;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    .line 332
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/mobstat/ci$b;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 333
    new-instance v0, Lcom/baidu/mobstat/ci$c;

    invoke-direct {v0, v2, v3}, Lcom/baidu/mobstat/ci$c;-><init>(Ljava/lang/String;Landroid/view/View;)V

    .line 334
    iget-object v2, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 338
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 339
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ci$c;

    .line 341
    invoke-direct {p0}, Lcom/baidu/mobstat/ci$b;->b()V

    .line 342
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ci$b;->a(Lcom/baidu/mobstat/ci$c;)V

    .line 343
    invoke-direct {p0}, Lcom/baidu/mobstat/ci$b;->c()V

    .line 338
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/baidu/mobstat/ci$b;->a:Landroid/app/Activity;

    .line 316
    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/baidu/mobstat/ci$b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
