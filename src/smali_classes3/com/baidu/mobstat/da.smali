.class public Lcom/baidu/mobstat/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/da$a;
    }
.end annotation


# static fields
.field private static volatile a:I

.field private static final k:Lcom/baidu/mobstat/da;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Lorg/json/JSONObject;

.field private f:Z

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/os/Handler;

.field private i:Lcom/baidu/mobstat/da$a;

.field private j:Lcom/baidu/mobstat/cz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/baidu/mobstat/da;->a:I

    .line 48
    new-instance v0, Lcom/baidu/mobstat/da;

    invoke-direct {v0}, Lcom/baidu/mobstat/da;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/da;->k:Lcom/baidu/mobstat/da;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/da;->g:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/baidu/mobstat/cz;

    invoke-direct {v0}, Lcom/baidu/mobstat/cz;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/da;->j:Lcom/baidu/mobstat/cz;

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "visitorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/da;->h:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/da;
    .registers 1

    .line 51
    sget-object v0, Lcom/baidu/mobstat/da;->k:Lcom/baidu/mobstat/da;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Landroid/view/View;Z)V
    .registers 6

    .line 352
    if-nez p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-static {p0, p1}, Lcom/baidu/mobstat/de;->c(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    .line 361
    check-cast p1, Landroid/webkit/WebView;

    .line 363
    const v0, -0x17701

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 365
    if-nez v0, :cond_0

    .line 366
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 367
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview auto set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 369
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview auto set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 373
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/baidu/mobstat/StatService;->trackWebView(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V

    goto :goto_0

    .line 378
    :cond_4
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 379
    check-cast p1, Landroid/view/ViewGroup;

    .line 381
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Landroid/app/Activity;ZZ)V
    .registers 3

    .line 27
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/da;->b(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private a(Landroid/app/Activity;I)Z
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/baidu/mobstat/da;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/baidu/mobstat/da;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 135
    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/baidu/mobstat/da;->c:I

    if-ne v0, p2, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .registers 1

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/baidu/mobstat/da;->a:I

    .line 70
    return-void
.end method

.method private static b(Landroid/app/Activity;Z)V
    .registers 3

    .line 347
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 348
    invoke-static {p0, v0, p1}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 349
    return-void
.end method

.method private static b(Landroid/app/Activity;ZZ)V
    .registers 3

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-static {p0, p2}, Lcom/baidu/mobstat/da;->b(Landroid/app/Activity;Z)V

    .line 344
    :cond_0
    return-void
.end method

.method static synthetic c()I
    .registers 1

    .line 27
    sget v0, Lcom/baidu/mobstat/da;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/mobstat/da;->a:I

    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Z)V
    .registers 5

    const/4 v1, 0x2

    .line 117
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/baidu/mobstat/cm;->b(Landroid/app/Activity;Z)V

    .line 120
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    :cond_0
    :goto_1
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/da;->b:Ljava/lang/ref/WeakReference;

    .line 125
    iput v1, p0, Lcom/baidu/mobstat/da;->c:I

    .line 127
    iget-object v0, p0, Lcom/baidu/mobstat/da;->i:Lcom/baidu/mobstat/da$a;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/baidu/mobstat/da;->i:Lcom/baidu/mobstat/da$a;

    invoke-virtual {v0}, Lcom/baidu/mobstat/da$a;->a()V

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;ZLorg/json/JSONObject;Z)V
    .registers 15

    const/4 v8, 0x1

    .line 74
    if-nez p2, :cond_2

    move v0, v8

    :goto_0
    invoke-static {p1, v0}, Lcom/baidu/mobstat/cm;->a(Landroid/app/Activity;Z)V

    .line 77
    iget-boolean v0, p0, Lcom/baidu/mobstat/da;->d:Z

    if-nez v0, :cond_0

    .line 78
    iput-boolean p4, p0, Lcom/baidu/mobstat/da;->d:Z

    .line 83
    :cond_0
    if-eqz p2, :cond_1

    .line 84
    iput-boolean p2, p0, Lcom/baidu/mobstat/da;->f:Z

    .line 85
    iput-object p3, p0, Lcom/baidu/mobstat/da;->e:Lorg/json/JSONObject;

    .line 89
    :cond_1
    invoke-direct {p0, p1, v8}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    :goto_1
    return-void

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/da;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/baidu/mobstat/da;->i:Lcom/baidu/mobstat/da$a;

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/baidu/mobstat/da;->i:Lcom/baidu/mobstat/da$a;

    invoke-virtual {v0}, Lcom/baidu/mobstat/da$a;->a()V

    .line 100
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/da;->b:Ljava/lang/ref/WeakReference;

    .line 101
    iput v8, p0, Lcom/baidu/mobstat/da;->c:I

    .line 105
    new-instance v3, Lcom/baidu/mobstat/df$a;

    iget-object v0, p0, Lcom/baidu/mobstat/da;->b:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/baidu/mobstat/da;->j:Lcom/baidu/mobstat/cz;

    invoke-direct {v3, v8, v0, v1}, Lcom/baidu/mobstat/df$a;-><init>(ILjava/lang/ref/WeakReference;Lcom/baidu/mobstat/df$b;)V

    .line 107
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    .line 110
    new-instance v0, Lcom/baidu/mobstat/da$a;

    iget-object v4, p0, Lcom/baidu/mobstat/da;->g:Landroid/os/Handler;

    iget-object v5, p0, Lcom/baidu/mobstat/da;->h:Landroid/os/Handler;

    iget-object v6, p0, Lcom/baidu/mobstat/da;->e:Lorg/json/JSONObject;

    iget-boolean v7, p0, Lcom/baidu/mobstat/da;->d:Z

    iget-boolean v9, p0, Lcom/baidu/mobstat/da;->f:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/da$a;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/df;Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONObject;ZZZ)V

    iput-object v0, p0, Lcom/baidu/mobstat/da;->i:Lcom/baidu/mobstat/da$a;

    goto :goto_1
.end method
