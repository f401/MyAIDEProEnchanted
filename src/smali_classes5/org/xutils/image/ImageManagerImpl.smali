.class public final Lorg/xutils/image/ImageManagerImpl;
.super Ljava/lang/Object;
.source "ImageManagerImpl.java"

# interfaces
.implements Lorg/xutils/ImageManager;


# static fields
.field private static volatile instance:Lorg/xutils/image/ImageManagerImpl;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageManagerImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static registerInstance()V
    .registers 2

    .line 24
    sget-object v0, Lorg/xutils/image/ImageManagerImpl;->instance:Lorg/xutils/image/ImageManagerImpl;

    if-nez v0, :cond_13

    .line 25
    sget-object v1, Lorg/xutils/image/ImageManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_7
    sget-object v0, Lorg/xutils/image/ImageManagerImpl;->instance:Lorg/xutils/image/ImageManagerImpl;

    if-nez v0, :cond_12

    .line 27
    new-instance v0, Lorg/xutils/image/ImageManagerImpl;

    invoke-direct {v0}, Lorg/xutils/image/ImageManagerImpl;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageManagerImpl;->instance:Lorg/xutils/image/ImageManagerImpl;

    .line 29
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    .line 31
    :cond_13
    sget-object v0, Lorg/xutils/image/ImageManagerImpl;->instance:Lorg/xutils/image/ImageManagerImpl;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setImageManager(Lorg/xutils/ImageManager;)V

    .line 32
    return-void

    .line 29
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public bind(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5

    .line 37
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageManagerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/xutils/image/ImageManagerImpl$1;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageManagerImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/xutils/image/ImageManagerImpl$3;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V
    .registers 6

    .line 47
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageManagerImpl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/xutils/image/ImageManagerImpl$2;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v6

    new-instance v0, Lorg/xutils/image/ImageManagerImpl$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xutils/image/ImageManagerImpl$4;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V

    invoke-interface {v6, v0}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public clearCacheFiles()V
    .registers 1

    .line 92
    invoke-static {}, Lorg/xutils/image/ImageLoader;->clearCacheFiles()V

    .line 93
    invoke-static {}, Lorg/xutils/image/ImageDecoder;->clearCacheFiles()V

    .line 94
    return-void
.end method

.method public clearMemCache()V
    .registers 1

    .line 87
    invoke-static {}, Lorg/xutils/image/ImageLoader;->clearMemCache()V

    .line 88
    return-void
.end method

.method public loadDrawable(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
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

    .line 77
    invoke-static {p1, p2, p3}, Lorg/xutils/image/ImageLoader;->doLoadDrawable(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public loadFile(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;
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

    .line 82
    invoke-static {p1, p2, p3}, Lorg/xutils/image/ImageLoader;->doLoadFile(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    return-object v0
.end method
