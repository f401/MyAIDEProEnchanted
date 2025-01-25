.class final Lorg/xutils/image/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lorg/xutils/common/Callback$PrepareCallback;
.implements Lorg/xutils/common/Callback$CacheCallback;
.implements Lorg/xutils/common/Callback$ProgressCallback;
.implements Lorg/xutils/common/Callback$TypedCallback;
.implements Lorg/xutils/common/Callback$Cancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/ImageLoader$FakeImageView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$PrepareCallback",
        "<",
        "Ljava/io/File;",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$CacheCallback",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$ProgressCallback",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$TypedCallback",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$Cancelable;"
    }
.end annotation


# static fields
.field private static final DISK_CACHE_DIR_NAME:Ljava/lang/String; = "xUtils_img"

.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final FAKE_IMG_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageLoader$FakeImageView;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEM_CACHE:Lorg/xutils/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/cache/LruCache",
            "<",
            "Lorg/xutils/image/MemCacheKey;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEM_CACHE_MIN_SIZE:I = 0x400000

.field private static final SEQ_SEEK:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final loadType:Ljava/lang/reflect/Type;


# instance fields
.field private cacheCallback:Lorg/xutils/common/Callback$CacheCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CacheCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cancelled:Z

.field private fileLockedExceptionRetryCount:I

.field private hasCache:Z

.field private httpCancelable:Lorg/xutils/common/Callback$Cancelable;

.field private key:Lorg/xutils/image/MemCacheKey;

.field private options:Lorg/xutils/image/ImageOptions;

.field private prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$PrepareCallback",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private progressCallback:Lorg/xutils/common/Callback$ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$ProgressCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final seq:J

.field private volatile skipOnFinishedCallback:Z

.field private volatile skipOnWaitingCallback:Z

.field private volatile stopped:Z

.field private viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/high16 v1, 0x400000

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/xutils/image/ImageLoader;->SEQ_SEEK:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/image/ImageLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 68
    new-instance v2, Lorg/xutils/image/ImageLoader$1;

    invoke-direct {v2, v1}, Lorg/xutils/image/ImageLoader$1;-><init>(I)V

    sput-object v2, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    .line 102
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    .line 103
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 106
    const/high16 v3, 0x100000

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x8

    .line 107
    if-ge v0, v1, :cond_34

    move v0, v1

    .line 110
    :cond_34
    invoke-virtual {v2, v0}, Lorg/xutils/cache/LruCache;->resize(I)V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    .line 364
    const-class v0, Ljava/io/File;

    sput-object v0, Lorg/xutils/image/ImageLoader;->loadType:Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 53
    sget-object v0, Lorg/xutils/image/ImageLoader;->SEQ_SEEK:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/image/ImageLoader;->seq:J

    .line 55
    iput-boolean v2, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 56
    iput-boolean v2, p0, Lorg/xutils/image/ImageLoader;->cancelled:Z

    .line 57
    iput-boolean v2, p0, Lorg/xutils/image/ImageLoader;->skipOnWaitingCallback:Z

    .line 58
    iput-boolean v2, p0, Lorg/xutils/image/ImageLoader;->skipOnFinishedCallback:Z

    .line 400
    iput-boolean v2, p0, Lorg/xutils/image/ImageLoader;->hasCache:Z

    .line 114
    return-void
.end method

.method static synthetic access$000(Lorg/xutils/image/ImageLoader;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xutils/image/ImageLoader;)Lorg/xutils/image/MemCacheKey;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xutils/image/ImageLoader;)Lorg/xutils/image/ImageOptions;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xutils/image/ImageLoader;)I
    .registers 2

    .line 40
    iget v0, p0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/xutils/image/ImageLoader;)Lorg/xutils/common/Callback$CommonCallback;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    return-object v0
.end method

.method static clearCacheFiles()V
    .registers 1

    .line 123
    const-string v0, "xUtils_img"

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/cache/LruDiskCache;->clearCacheFiles()V

    .line 124
    return-void
.end method

.method static clearMemCache()V
    .registers 1

    .line 118
    sget-object v0, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v0}, Lorg/xutils/cache/LruCache;->evictAll()V

    .line 119
    return-void
.end method

.method private static createRequestParams(Landroid/content/Context;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;
    .registers 5

    .line 490
    new-instance v0, Lorg/xutils/http/RequestParams;

    invoke-direct {v0, p1}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 491
    if-eqz p0, :cond_a

    .line 492
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setContext(Landroid/content/Context;)V

    .line 494
    :cond_a
    const-string v1, "xUtils_img"

    invoke-virtual {v0, v1}, Lorg/xutils/http/RequestParams;->setCacheDirName(Ljava/lang/String;)V

    .line 495
    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 496
    sget-object v1, Lorg/xutils/common/task/Priority;->BG_LOW:Lorg/xutils/common/task/Priority;

    invoke-virtual {v0, v1}, Lorg/xutils/http/RequestParams;->setPriority(Lorg/xutils/common/task/Priority;)V

    .line 497
    sget-object v1, Lorg/xutils/image/ImageLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lorg/xutils/http/RequestParams;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 498
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xutils/http/RequestParams;->setCancelFast(Z)V

    .line 499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xutils/http/RequestParams;->setUseCookie(Z)V

    .line 500
    if-eqz p2, :cond_32

    .line 501
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_32

    .line 503
    invoke-interface {v1, v0, p2}, Lorg/xutils/image/ImageOptions$ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object v0

    .line 506
    :cond_32
    return-object v0
.end method

.method static doBind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;ILorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "I",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    if-nez p0, :cond_c

    .line 174
    const-string v1, "view is null"

    invoke-static {v4, p2, v1, p4}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    move-object v1, v4

    .line 284
    :cond_b
    :goto_b
    return-object v1

    .line 178
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 179
    const-string v1, "url is null"

    invoke-static {p0, p2, v1, p4}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    move-object v1, v4

    .line 180
    goto :goto_b

    .line 183
    :cond_19
    if-nez p2, :cond_1d

    .line 184
    sget-object p2, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    .line 186
    :cond_1d
    invoke-virtual {p2, p0}, Lorg/xutils/image/ImageOptions;->optimizeMaxSize(Landroid/widget/ImageView;)V

    .line 190
    new-instance v6, Lorg/xutils/image/MemCacheKey;

    invoke-direct {v6, p1, p2}, Lorg/xutils/image/MemCacheKey;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    .line 191
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    instance-of v2, v1, Lorg/xutils/image/AsyncDrawable;

    if-eqz v2, :cond_9d

    .line 193
    check-cast v1, Lorg/xutils/image/AsyncDrawable;

    invoke-virtual {v1}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/ImageLoader;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_46

    iget-boolean v2, v1, Lorg/xutils/image/ImageLoader;->stopped:Z

    if-nez v2, :cond_46

    .line 195
    iget-object v2, v1, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    invoke-virtual {v6, v2}, Lorg/xutils/image/MemCacheKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move-object v1, v4

    .line 198
    goto :goto_b

    .line 200
    :cond_43
    invoke-virtual {v1}, Lorg/xutils/image/ImageLoader;->cancel()V

    .line 212
    :cond_46
    :goto_46
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->isUseMemCache()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 213
    sget-object v1, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v1, v6}, Lorg/xutils/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 214
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_138

    move-object v2, v1

    .line 215
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_67

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_138

    :cond_67
    move-object v6, v4

    .line 221
    :goto_68
    if-eqz v6, :cond_129

    .line 224
    :try_start_6a
    instance-of v1, p4, Lorg/xutils/common/Callback$ProgressCallback;
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_bf

    if-eqz v1, :cond_75

    .line 226
    :try_start_6e
    move-object v0, p4

    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    move-object v1, v0

    invoke-interface {v1}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_b6

    .line 232
    :cond_75
    :goto_75
    :try_start_75
    instance-of v1, p4, Lorg/xutils/common/Callback$CacheCallback;
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_bf

    if-eqz v1, :cond_e2

    .line 235
    :try_start_79
    move-object v0, p4

    check-cast v0, Lorg/xutils/common/Callback$CacheCallback;

    move-object v1, v0

    invoke-interface {v1, v6}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_d8

    move-result v1

    :goto_81
    move v2, v1

    .line 244
    :goto_82
    if-eqz v2, :cond_f5

    .line 245
    :try_start_84
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_ea

    .line 247
    if-eqz p4, :cond_93

    .line 249
    :try_start_90
    invoke-interface {p4, v6}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_e4

    .line 272
    :cond_93
    :goto_93
    if-eqz v2, :cond_9a

    if-eqz p4, :cond_9a

    .line 274
    :try_start_97
    invoke-interface {p4}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_ec

    :cond_9a
    :goto_9a
    move-object v1, v4

    .line 280
    goto/16 :goto_b

    .line 203
    :cond_9d
    instance-of v2, v1, Lorg/xutils/image/ReusableDrawable;

    if-eqz v2, :cond_46

    move-object v2, v1

    .line 204
    check-cast v2, Lorg/xutils/image/ReusableDrawable;

    invoke-interface {v2}, Lorg/xutils/image/ReusableDrawable;->getMemCacheKey()Lorg/xutils/image/MemCacheKey;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_46

    invoke-virtual {v2, v6}, Lorg/xutils/image/MemCacheKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 206
    sget-object v2, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v2, v6, v1}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 227
    :catchall_b6
    move-exception v1

    .line 228
    :try_start_b7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_bf

    goto :goto_75

    .line 263
    :catchall_bf
    move-exception v1

    move v2, v3

    .line 264
    :goto_c1
    :try_start_c1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c8
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_116

    .line 267
    :try_start_c8
    new-instance v1, Lorg/xutils/image/ImageLoader;

    invoke-direct {v1}, Lorg/xutils/image/ImageLoader;-><init>()V

    .line 268
    iput p3, v1, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 269
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/xutils/image/ImageLoader;->skipOnWaitingCallback:Z

    .line 270
    invoke-direct {v1, p0, p1, p2, p4}, Lorg/xutils/image/ImageLoader;->doLoadRequest(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    :try_end_d5
    .catchall {:try_start_c8 .. :try_end_d5} :catchall_136

    move-result-object v1

    goto/16 :goto_b

    .line 236
    :catchall_d8
    move-exception v1

    .line 237
    :try_start_d9
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_bf

    move v1, v3

    goto :goto_81

    :cond_e2
    move v2, v5

    .line 240
    goto :goto_82

    .line 250
    :catchall_e4
    move-exception v1

    .line 251
    const/4 v5, 0x1

    :try_start_e6
    invoke-interface {p4, v1, v5}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_93

    .line 263
    :catchall_ea
    move-exception v1

    goto :goto_c1

    .line 275
    :catchall_ec
    move-exception v1

    .line 276
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a

    .line 258
    :cond_f5
    :try_start_f5
    new-instance v1, Lorg/xutils/image/ImageLoader;

    invoke-direct {v1}, Lorg/xutils/image/ImageLoader;-><init>()V

    .line 259
    iput p3, v1, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 260
    const/4 v4, 0x1

    iput-boolean v4, v1, Lorg/xutils/image/ImageLoader;->skipOnWaitingCallback:Z

    .line 261
    invoke-direct {v1, p0, p1, p2, p4}, Lorg/xutils/image/ImageLoader;->doLoadRequest(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    :try_end_102
    .catchall {:try_start_f5 .. :try_end_102} :catchall_ea

    move-result-object v1

    .line 272
    if-eqz v2, :cond_b

    if-eqz p4, :cond_b

    .line 274
    :try_start_107
    invoke-interface {p4}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10c

    goto/16 :goto_b

    .line 275
    :catchall_10c
    move-exception v2

    .line 276
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 272
    :catchall_116
    move-exception v1

    move v3, v2

    :goto_118
    if-eqz v3, :cond_11f

    if-eqz p4, :cond_11f

    .line 274
    :try_start_11c
    invoke-interface {p4}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_120

    .line 279
    :cond_11f
    :goto_11f
    throw v1

    .line 275
    :catchall_120
    move-exception v2

    .line 276
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11f

    .line 282
    :cond_129
    new-instance v1, Lorg/xutils/image/ImageLoader;

    invoke-direct {v1}, Lorg/xutils/image/ImageLoader;-><init>()V

    .line 283
    iput p3, v1, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 284
    invoke-direct {v1, p0, p1, p2, p4}, Lorg/xutils/image/ImageLoader;->doLoadRequest(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v1

    goto/16 :goto_b

    .line 272
    :catchall_136
    move-exception v1

    goto :goto_118

    :cond_138
    move-object v6, v1

    goto/16 :goto_68

    :cond_13b
    move-object v6, v4

    goto/16 :goto_68
.end method

.method static doLoadDrawable(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 136
    const-string v1, "url is null"

    invoke-static {v0, p1, v1, p2}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 141
    :goto_c
    return-object v0

    .line 140
    :cond_d
    new-instance v0, Lorg/xutils/image/ImageLoader$FakeImageView;

    invoke-direct {v0}, Lorg/xutils/image/ImageLoader$FakeImageView;-><init>()V

    .line 141
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lorg/xutils/image/ImageLoader;->doBind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;ILorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    goto :goto_c
.end method

.method static doLoadFile(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CacheCallback",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 152
    const-string v1, "url is null"

    invoke-static {v0, p1, v1, p2}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 157
    :goto_c
    return-object v0

    .line 156
    :cond_d
    invoke-static {v0, p0, p1}, Lorg/xutils/image/ImageLoader;->createRequestParams(Landroid/content/Context;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object v0

    .line 157
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    goto :goto_c
.end method

.method private doLoadRequest(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    .line 298
    iput-object p3, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    .line 299
    new-instance v0, Lorg/xutils/image/MemCacheKey;

    invoke-direct {v0, p2, p3}, Lorg/xutils/image/MemCacheKey;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    iput-object v0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    .line 300
    iput-object p4, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    .line 301
    instance-of v0, p4, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_1b

    move-object v0, p4

    .line 302
    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    iput-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    .line 304
    :cond_1b
    instance-of v0, p4, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v0, :cond_24

    move-object v0, p4

    .line 305
    check-cast v0, Lorg/xutils/common/Callback$PrepareCallback;

    iput-object v0, p0, Lorg/xutils/image/ImageLoader;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    .line 307
    :cond_24
    instance-of v0, p4, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v0, :cond_2c

    .line 308
    check-cast p4, Lorg/xutils/common/Callback$CacheCallback;

    iput-object p4, p0, Lorg/xutils/image/ImageLoader;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    .line 312
    :cond_2c
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_38

    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->isForceLoadingDrawable()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 314
    :cond_38
    invoke-virtual {p3, p1}, Lorg/xutils/image/ImageOptions;->getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 317
    :cond_43
    new-instance v1, Lorg/xutils/image/AsyncDrawable;

    invoke-direct {v1, p0, v0}, Lorg/xutils/image/AsyncDrawable;-><init>(Lorg/xutils/image/ImageLoader;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/xutils/image/ImageLoader;->createRequestParams(Landroid/content/Context;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object v0

    .line 321
    instance-of v1, p1, Lorg/xutils/image/ImageLoader$FakeImageView;

    if-eqz v1, :cond_73

    .line 322
    sget-object v1, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    monitor-enter v1

    .line 323
    :try_start_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lorg/xutils/image/ImageLoader$FakeImageView;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_5a .. :try_end_73} :catchall_7e

    .line 326
    :cond_73
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/image/ImageLoader;->httpCancelable:Lorg/xutils/common/Callback$Cancelable;

    return-object v0

    .line 324
    :catchall_7e
    move-exception v0

    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v0
.end method

.method private static postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lorg/xutils/image/ImageOptions;",
            "Ljava/lang/String;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<*>;)V"
        }
    .end annotation

    .line 569
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageLoader$3;

    invoke-direct {v1, p3, p0, p1, p2}, Lorg/xutils/image/ImageLoader$3;-><init>(Lorg/xutils/common/Callback$CommonCallback;Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 602
    return-void
.end method

.method private setErrorDrawable4Callback()V
    .registers 4

    .line 558
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 559
    if-eqz v0, :cond_1c

    .line 560
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1, v0}, Lorg/xutils/image/ImageOptions;->getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 561
    iget-object v2, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v2}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 562
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    :cond_1c
    return-void
.end method

.method private setSuccessDrawable4Callback(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 538
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 539
    if-eqz v0, :cond_3a

    .line 540
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 541
    instance-of v1, p1, Lorg/xutils/image/GifDrawable;

    if-eqz v1, :cond_29

    .line 542
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_24

    .line 543
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 545
    :cond_24
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 547
    :cond_29
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 548
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/xutils/image/ImageAnimationHelper;->animationDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    .line 555
    :cond_3a
    :goto_3a
    return-void

    .line 549
    :cond_3b
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->isFadeIn()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 550
    invoke-static {v0, p1}, Lorg/xutils/image/ImageAnimationHelper;->fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3a

    .line 552
    :cond_47
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3a
.end method

.method private validView4Callback(Z)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 511
    if-eqz v0, :cond_3b

    .line 512
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 513
    instance-of v3, v0, Lorg/xutils/image/AsyncDrawable;

    if-eqz v3, :cond_32

    .line 514
    check-cast v0, Lorg/xutils/image/AsyncDrawable;

    invoke-virtual {v0}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/ImageLoader;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_39

    .line 516
    if-ne v0, p0, :cond_20

    move v0, v1

    .line 534
    :goto_1f
    return v0

    .line 519
    :cond_20
    iget-wide v4, p0, Lorg/xutils/image/ImageLoader;->seq:J

    iget-wide v6, v0, Lorg/xutils/image/ImageLoader;->seq:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2d

    .line 520
    invoke-virtual {v0}, Lorg/xutils/image/ImageLoader;->cancel()V

    move v0, v1

    .line 521
    goto :goto_1f

    .line 523
    :cond_2d
    invoke-virtual {p0}, Lorg/xutils/image/ImageLoader;->cancel()V

    move v0, v2

    .line 524
    goto :goto_1f

    .line 528
    :cond_32
    if-eqz p1, :cond_39

    .line 529
    invoke-virtual {p0}, Lorg/xutils/image/ImageLoader;->cancel()V

    move v0, v2

    .line 530
    goto :goto_1f

    :cond_39
    move v0, v1

    .line 528
    goto :goto_1f

    :cond_3b
    move v0, v2

    .line 534
    goto :goto_1f
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 332
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->cancelled:Z

    .line 333
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->httpCancelable:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_c

    .line 334
    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->cancel()V

    .line 336
    :cond_c
    return-void
.end method

.method public getLoadType()Ljava/lang/reflect/Type;
    .registers 2

    .line 368
    sget-object v0, Lorg/xutils/image/ImageLoader;->loadType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 3

    const/4 v0, 0x0

    .line 340
    iget-boolean v1, p0, Lorg/xutils/image/ImageLoader;->cancelled:Z

    if-nez v1, :cond_b

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public onCache(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 404
    invoke-direct {p0, v1}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v2

    if-nez v2, :cond_9

    .line 418
    :cond_8
    :goto_8
    return v0

    .line 406
    :cond_9
    if-eqz p1, :cond_8

    .line 407
    iput-boolean v1, p0, Lorg/xutils/image/ImageLoader;->hasCache:Z

    .line 408
    invoke-direct {p0, p1}, Lorg/xutils/image/ImageLoader;->setSuccessDrawable4Callback(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v0, :cond_19

    .line 410
    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    .line 411
    :cond_19
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_22

    .line 412
    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    move v0, v1

    .line 413
    goto :goto_8

    :cond_22
    move v0, v1

    .line 415
    goto :goto_8
.end method

.method public bridge synthetic onCache(Ljava/lang/Object;)Z
    .registers 3

    .line 40
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/ImageLoader;->onCache(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .registers 3

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 470
    :cond_a
    :goto_a
    return-void

    .line 467
    :cond_b
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_a

    .line 468
    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    goto :goto_a
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .registers 8

    const/4 v4, 0x1

    .line 435
    iput-boolean v4, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 460
    :cond_a
    :goto_a
    return-void

    .line 438
    :cond_b
    iget v0, p0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xutils/image/ImageLoader;->fileLockedExceptionRetryCount:I

    .line 439
    instance-of v1, p1, Lorg/xutils/ex/FileLockedException;

    if-eqz v1, :cond_42

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_42

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageFileLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    iget-object v1, v1, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageLoader$2;

    invoke-direct {v1, p0}, Lorg/xutils/image/ImageLoader$2;-><init>(Lorg/xutils/image/ImageLoader;)V

    const-wide/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Lorg/xutils/common/TaskController;->postDelayed(Ljava/lang/Runnable;J)V

    .line 452
    iput-boolean v4, p0, Lorg/xutils/image/ImageLoader;->skipOnFinishedCallback:Z

    goto :goto_a

    .line 454
    :cond_42
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    iget-object v0, v0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    invoke-direct {p0}, Lorg/xutils/image/ImageLoader;->setErrorDrawable4Callback()V

    .line 456
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_a

    .line 457
    invoke-interface {v0, p1, p2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_a
.end method

.method public onFinished()V
    .registers 4

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 475
    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader;->skipOnFinishedCallback:Z

    if-eqz v0, :cond_8

    .line 487
    :cond_7
    :goto_7
    return-void

    .line 477
    :cond_8
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 478
    instance-of v1, v0, Lorg/xutils/image/ImageLoader$FakeImageView;

    if-eqz v1, :cond_32

    .line 479
    sget-object v1, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    monitor-enter v1

    .line 480
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    iget-object v0, v0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_3a

    .line 484
    :cond_32
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_7

    .line 485
    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V

    goto :goto_7

    .line 481
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public onLoading(JJZ)V
    .registers 13

    .line 359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v1, :cond_11

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 360
    invoke-interface/range {v1 .. v6}, Lorg/xutils/common/Callback$ProgressCallback;->onLoading(JJZ)V

    .line 362
    :cond_11
    return-void
.end method

.method public onStarted()V
    .registers 2

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_e

    .line 353
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onStarted()V

    .line 355
    :cond_e
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 423
    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader;->hasCache:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 431
    :cond_a
    :goto_a
    return-void

    .line 425
    :cond_b
    if-eqz p1, :cond_a

    .line 426
    invoke-direct {p0, p1}, Lorg/xutils/image/ImageLoader;->setSuccessDrawable4Callback(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_a

    .line 428
    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 40
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/ImageLoader;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onWaiting()V
    .registers 2

    .line 345
    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader;->skipOnWaitingCallback:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_b

    .line 346
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 348
    :cond_b
    return-void
.end method

.method public prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v2, 0x0

    .line 373
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 393
    :cond_8
    :goto_8
    return-object v2

    .line 375
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 381
    :try_start_f
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v1, :cond_1a

    .line 382
    invoke-interface {v1, p1}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v2, v1

    .line 384
    :cond_1a
    if-nez v2, :cond_22

    .line 385
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {p1, v1, p0}, Lorg/xutils/image/ImageDecoder;->decodeFileWithLock(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 387
    :cond_22
    if-eqz v2, :cond_8

    .line 388
    instance-of v1, v2, Lorg/xutils/image/ReusableDrawable;

    if-eqz v1, :cond_8

    .line 389
    move-object v0, v2

    check-cast v0, Lorg/xutils/image/ReusableDrawable;

    move-object v1, v0

    iget-object v3, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    invoke-interface {v1, v3}, Lorg/xutils/image/ReusableDrawable;->setMemCacheKey(Lorg/xutils/image/MemCacheKey;)V

    .line 390
    sget-object v1, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    iget-object v3, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    invoke-virtual {v1, v3, v2}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_38} :catch_39

    goto :goto_8

    .line 394
    :catch_39
    move-exception v1

    .line 395
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 396
    throw v1

    .line 376
    :cond_3e
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/xutils/image/ImageLoader;->prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
