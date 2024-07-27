.class public Lorg/xutils/x$Ext;
.super Ljava/lang/Object;
.source "x.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ext"
.end annotation


# static fields
.field private static app:Landroid/app/Application;

.field private static debug:Z

.field private static httpManager:Lorg/xutils/HttpManager;

.field private static imageManager:Lorg/xutils/ImageManager;

.field private static taskController:Lorg/xutils/common/TaskController;

.field private static viewInjector:Lorg/xutils/ViewInjector;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 81
    sget-boolean v0, Lorg/xutils/x$Ext;->debug:Z

    return v0
.end method

.method static synthetic access$100()Landroid/app/Application;
    .registers 1

    .line 81
    sget-object v0, Lorg/xutils/x$Ext;->app:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/Application;)Landroid/app/Application;
    .registers 1

    .line 81
    sput-object p0, Lorg/xutils/x$Ext;->app:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$200()Lorg/xutils/common/TaskController;
    .registers 1

    .line 81
    sget-object v0, Lorg/xutils/x$Ext;->taskController:Lorg/xutils/common/TaskController;

    return-object v0
.end method

.method static synthetic access$300()Lorg/xutils/HttpManager;
    .registers 1

    .line 81
    sget-object v0, Lorg/xutils/x$Ext;->httpManager:Lorg/xutils/HttpManager;

    return-object v0
.end method

.method static synthetic access$400()Lorg/xutils/ImageManager;
    .registers 1

    .line 81
    sget-object v0, Lorg/xutils/x$Ext;->imageManager:Lorg/xutils/ImageManager;

    return-object v0
.end method

.method static synthetic access$500()Lorg/xutils/ViewInjector;
    .registers 1

    .line 81
    sget-object v0, Lorg/xutils/x$Ext;->viewInjector:Lorg/xutils/ViewInjector;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 2

    .line 93
    invoke-static {}, Lorg/xutils/common/task/TaskControllerImpl;->registerInstance()V

    .line 94
    sget-object v0, Lorg/xutils/x$Ext;->app:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 95
    sput-object p0, Lorg/xutils/x$Ext;->app:Landroid/app/Application;

    .line 97
    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1

    .line 100
    sput-boolean p0, Lorg/xutils/x$Ext;->debug:Z

    .line 101
    return-void
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 1

    .line 122
    invoke-static {p0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 123
    return-void
.end method

.method public static setHttpManager(Lorg/xutils/HttpManager;)V
    .registers 1

    .line 110
    sput-object p0, Lorg/xutils/x$Ext;->httpManager:Lorg/xutils/HttpManager;

    .line 111
    return-void
.end method

.method public static setImageManager(Lorg/xutils/ImageManager;)V
    .registers 1

    .line 114
    sput-object p0, Lorg/xutils/x$Ext;->imageManager:Lorg/xutils/ImageManager;

    .line 115
    return-void
.end method

.method public static setTaskController(Lorg/xutils/common/TaskController;)V
    .registers 2

    .line 104
    sget-object v0, Lorg/xutils/x$Ext;->taskController:Lorg/xutils/common/TaskController;

    if-nez v0, :cond_0

    .line 105
    sput-object p0, Lorg/xutils/x$Ext;->taskController:Lorg/xutils/common/TaskController;

    .line 107
    :cond_0
    return-void
.end method

.method public static setViewInjector(Lorg/xutils/ViewInjector;)V
    .registers 1

    .line 118
    sput-object p0, Lorg/xutils/x$Ext;->viewInjector:Lorg/xutils/ViewInjector;

    .line 119
    return-void
.end method
