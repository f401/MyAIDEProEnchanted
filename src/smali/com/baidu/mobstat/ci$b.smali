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
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/baidu/mobstat/ci$c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

    return-void
.end method

.method private a(Lcom/baidu/mobstat/ci$c;)V
    .registers 15

    .line 363
    iget-object v0, p1, Lcom/baidu/mobstat/ci$c;->b:Landroid/view/View;

    .line 367
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 368
    const-class v6, Landroid/view/View;

    const-string v7, "createSnapshot"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/graphics/Bitmap$Config;

    aput-object v10, v9, v1

    aput-object v4, v9, v2

    const/4 v4, 0x2

    aput-object v5, v9, v4

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 369
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 370
    new-array v6, v8, [Ljava/lang/Object;

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v7, v6, v1

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_39} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_39} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_39} :catch_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_39} :catch_50
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_39} :catch_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_3a

    goto :goto_7c

    :catch_3a
    move-exception v4

    .line 382
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v5

    const-string v6, " autotrace:createSnapshot encounter exception"

    invoke-virtual {v5, v6, v4}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7b

    :catch_45
    move-exception v4

    .line 380
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v5

    const-string v6, "autotrace: createSnapshot didn\'t return a bitmap"

    invoke-virtual {v5, v6, v4}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7b

    :catch_50
    move-exception v4

    .line 378
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v5

    const-string v6, "autotrace: Can\'t access createSnapshot, using drawCache"

    invoke-virtual {v5, v6, v4}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7b

    :catch_5b
    move-exception v4

    .line 376
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v5

    const-string v6, "autotrace: Exception when calling createSnapshot"

    invoke-virtual {v5, v6, v4}, Lcom/baidu/mobstat/cx;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7b

    :catch_66
    move-exception v4

    .line 374
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v5

    const-string v6, "autotrace: Can\'t call createSnapshot with arguments"

    invoke-virtual {v5, v6, v4}, Lcom/baidu/mobstat/cx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7b

    :catch_71
    move-exception v4

    .line 372
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v5

    const-string v6, "autotrace: Can\'t call createSnapshot, will use drawCache"

    invoke-virtual {v5, v6, v4}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7b
    move-object v4, v3

    :goto_7c
    if-nez v4, :cond_ac

    .line 388
    :try_start_7e
    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 389
    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 390
    invoke-virtual {v0, v2}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 391
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_90} :catch_91

    goto :goto_ac

    :catch_91
    move-exception v2

    .line 394
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "autotrace: Can\'t take a bitmap snapshot of view "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", skipping for now."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ac
    :goto_ac
    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v4, :cond_ed

    .line 400
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    if-eqz v5, :cond_ba

    const/high16 v2, 0x43200000  # 160.0f

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 406
    :cond_ba
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 407
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 409
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v2

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe0000000000000L  # 0.5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    double-to-int v7, v7

    .line 410
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v9

    double-to-int v8, v11

    if-lez v5, :cond_ed

    if-lez v6, :cond_ed

    if-lez v7, :cond_ed

    if-lez v8, :cond_ed

    .line 413
    iget-object v5, p0, Lcom/baidu/mobstat/ci$b;->d:Lcom/baidu/mobstat/ci$a;

    const/16 v6, 0xa0

    invoke-virtual {v5, v7, v8, v6, v4}, Lcom/baidu/mobstat/ci$a;->a(IIILandroid/graphics/Bitmap;)V

    :cond_ed
    if-eqz v3, :cond_f8

    .line 417
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f8

    .line 418
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 420
    :cond_f8
    iput v2, p1, Lcom/baidu/mobstat/ci$c;->d:F

    .line 421
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->d:Lcom/baidu/mobstat/ci$a;

    iput-object v0, p1, Lcom/baidu/mobstat/ci$c;->c:Lcom/baidu/mobstat/ci$a;

    return-void
.end method

.method private b()V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cd;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method private c()V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cd;->a(Landroid/app/Activity;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v1}, Lcom/baidu/mobstat/de;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    .line 332
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/mobstat/ci$b;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 333
    new-instance v1, Lcom/baidu/mobstat/ci$c;

    invoke-direct {v1, v2, v3}, Lcom/baidu/mobstat/ci$c;-><init>(Ljava/lang/String;Landroid/view/View;)V

    .line 334
    iget-object v2, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 337
    :cond_44
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_4b
    if-ge v1, v0, :cond_61

    .line 339
    iget-object v2, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ci$c;

    .line 341
    invoke-direct {p0}, Lcom/baidu/mobstat/ci$b;->b()V

    .line 342
    invoke-direct {p0, v2}, Lcom/baidu/mobstat/ci$b;->a(Lcom/baidu/mobstat/ci$c;)V

    .line 343
    invoke-direct {p0}, Lcom/baidu/mobstat/ci$b;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 346
    :cond_61
    iget-object v0, p0, Lcom/baidu/mobstat/ci$b;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/baidu/mobstat/ci$b;->a:Landroid/app/Activity;

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
