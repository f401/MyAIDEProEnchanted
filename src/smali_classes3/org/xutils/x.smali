.class public final Lorg/xutils/x;
.super Ljava/lang/Object;
.source "x.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/x$Ext;,
        Lorg/xutils/x$MockApplication;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static app()Landroid/app/Application;
    .registers 3

    .line 36
    invoke-static {}, Lorg/xutils/x$Ext;->access$100()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    :try_start_0
    const-string v0, "com.android.layoutlib.bridge.impl.RenderAction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    const-string v1, "getCurrentContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 43
    new-instance v1, Lorg/xutils/x$MockApplication;

    invoke-direct {v1, v0}, Lorg/xutils/x$MockApplication;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lorg/xutils/x$Ext;->access$102(Landroid/app/Application;)Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->access$100()Landroid/app/Application;

    move-result-object v0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please invoke x.Ext.init(app) on Application#onCreate() and register your Application in manifest."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lorg/xutils/db/DbManagerImpl;->getInstance(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    return-object v0
.end method

.method public static http()Lorg/xutils/HttpManager;
    .registers 1

    .line 57
    invoke-static {}, Lorg/xutils/x$Ext;->access$300()Lorg/xutils/HttpManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lorg/xutils/http/HttpManagerImpl;->registerInstance()V

    .line 60
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->access$300()Lorg/xutils/HttpManager;

    move-result-object v0

    return-object v0
.end method

.method public static image()Lorg/xutils/ImageManager;
    .registers 1

    .line 64
    invoke-static {}, Lorg/xutils/x$Ext;->access$400()Lorg/xutils/ImageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lorg/xutils/image/ImageManagerImpl;->registerInstance()V

    .line 67
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->access$400()Lorg/xutils/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method public static isDebug()Z
    .registers 1

    .line 32
    invoke-static {}, Lorg/xutils/x$Ext;->access$000()Z

    move-result v0

    return v0
.end method

.method public static task()Lorg/xutils/common/TaskController;
    .registers 1

    .line 53
    invoke-static {}, Lorg/xutils/x$Ext;->access$200()Lorg/xutils/common/TaskController;

    move-result-object v0

    return-object v0
.end method

.method public static view()Lorg/xutils/ViewInjector;
    .registers 1

    .line 71
    invoke-static {}, Lorg/xutils/x$Ext;->access$500()Lorg/xutils/ViewInjector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lorg/xutils/view/ViewInjectorImpl;->registerInstance()V

    .line 74
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->access$500()Lorg/xutils/ViewInjector;

    move-result-object v0

    return-object v0
.end method
