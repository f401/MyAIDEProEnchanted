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
            "Ljava/lang/ref/WeakReference<",
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

    if-nez p1, :cond_3

    return-void

    .line 356
    :cond_3
    invoke-static {p0, p1}, Lcom/baidu/mobstat/de;->c(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 360
    :cond_a
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_70

    .line 361
    check-cast p1, Landroid/webkit/WebView;

    .line 363
    const v0, -0x17701

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6f

    .line 366
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    const-string v1, "webview auto set "

    if-eqz v0, :cond_42

    if-eqz p2, :cond_42

    .line 367
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 369
    :cond_42
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/dc;->b()Z

    move-result p2

    if-eqz p2, :cond_67

    .line 370
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 373
    :cond_67
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/StatService;->trackWebView(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V

    :cond_6f
    return-void

    .line 378
    :cond_70
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_87

    .line 379
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 381
    :goto_77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_87

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    :cond_87
    return-void
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

    if-eqz v0, :cond_12

    .line 134
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-ne v0, p1, :cond_12

    .line 135
    iget p1, p0, Lcom/baidu/mobstat/da;->c:I

    if-ne p1, p2, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public static b()V
    .registers 1

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/baidu/mobstat/da;->a:I

    return-void
.end method

.method private static b(Landroid/app/Activity;Z)V
    .registers 3

    .line 347
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 348
    invoke-static {p0, v0, p1}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method private static b(Landroid/app/Activity;ZZ)V
    .registers 3

    if-eqz p1, :cond_5

    .line 342
    invoke-static {p0, p2}, Lcom/baidu/mobstat/da;->b(Landroid/app/Activity;Z)V

    :cond_5
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
    .registers 4

    .line 117
    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/baidu/mobstat/cm;->b(Landroid/app/Activity;Z)V

    .line 120
    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 124
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/da;->b:Ljava/lang/ref/WeakReference;

    .line 125
    iput p2, p0, Lcom/baidu/mobstat/da;->c:I

    .line 127
    iget-object p1, p0, Lcom/baidu/mobstat/da;->i:Lcom/baidu/mobstat/da$a;

    if-eqz p1, :cond_1d

    .line 128
    invoke-virtual {p1}, Lcom/baidu/mobstat/da$a;->a()V

    :cond_1d
    return-void
.end method

.method public a(Landroid/app/Activity;ZLorg/json/JSONObject;Z)V
    .registers 15

    .line 74
    xor-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cm;->a(Landroid/app/Activity;Z)V

    .line 77
    iget-boolean v0, p0, Lcom/baidu/mobstat/da;->d:Z

    if-nez v0, :cond_b

    .line 78
    iput-boolean p4, p0, Lcom/baidu/mobstat/da;->d:Z

    :cond_b
    if-eqz p2, :cond_11

    .line 84
    iput-boolean p2, p0, Lcom/baidu/mobstat/da;->f:Z

    .line 85
    iput-object p3, p0, Lcom/baidu/mobstat/da;->e:Lorg/json/JSONObject;

    .line 89
    :cond_11
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;I)Z

    move-result p3

    if-eqz p3, :cond_19

    return-void

    .line 94
    :cond_19
    iget-object p3, p0, Lcom/baidu/mobstat/da;->b:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_24

    .line 95
    iget-object p3, p0, Lcom/baidu/mobstat/da;->i:Lcom/baidu/mobstat/da$a;

    if-eqz p3, :cond_24

    .line 96
    invoke-virtual {p3}, Lcom/baidu/mobstat/da$a;->a()V

    .line 100
    :cond_24
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/baidu/mobstat/da;->b:Ljava/lang/ref/WeakReference;

    .line 101
    iput p2, p0, Lcom/baidu/mobstat/da;->c:I

    .line 105
    new-instance v3, Lcom/baidu/mobstat/df$a;

    iget-object p4, p0, Lcom/baidu/mobstat/da;->j:Lcom/baidu/mobstat/cz;

    invoke-direct {v3, p2, p3, p4}, Lcom/baidu/mobstat/df$a;-><init>(ILjava/lang/ref/WeakReference;Lcom/baidu/mobstat/df$b;)V

    .line 107
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    .line 110
    new-instance p2, Lcom/baidu/mobstat/da$a;

    iget-object v4, p0, Lcom/baidu/mobstat/da;->g:Landroid/os/Handler;

    iget-object v5, p0, Lcom/baidu/mobstat/da;->h:Landroid/os/Handler;

    iget-object v6, p0, Lcom/baidu/mobstat/da;->e:Lorg/json/JSONObject;

    iget-boolean v7, p0, Lcom/baidu/mobstat/da;->d:Z

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/baidu/mobstat/da;->f:Z

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/da$a;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/df;Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONObject;ZZZ)V

    iput-object p2, p0, Lcom/baidu/mobstat/da;->i:Lcom/baidu/mobstat/da$a;

    return-void
.end method
