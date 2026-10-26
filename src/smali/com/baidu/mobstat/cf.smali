.class public Lcom/baidu/mobstat/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/cf$a;
    }
.end annotation


# static fields
.field private static volatile a:Z = true


# instance fields
.field private b:Lcom/baidu/mobstat/cf$a;

.field private c:Landroid/app/Activity;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/cf$a;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/baidu/mobstat/cf$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/cf$1;-><init>(Lcom/baidu/mobstat/cf;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cf;->d:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/baidu/mobstat/cf;->b:Lcom/baidu/mobstat/cf$a;

    return-void
.end method

.method private a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 2

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 106
    instance-of v1, v0, Lcom/baidu/mobstat/cg;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/baidu/mobstat/cg;

    .line 108
    invoke-virtual {v0}, Lcom/baidu/mobstat/cg;->a()Landroid/view/Window$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/cf;)Lcom/baidu/mobstat/cf$a;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/baidu/mobstat/cf;->b:Lcom/baidu/mobstat/cf$a;

    return-object v0
.end method

.method public static a(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 37
    invoke-static {}, Lcom/baidu/mobstat/ci;->a()V

    .line 40
    :cond_0
    sput-boolean p0, Lcom/baidu/mobstat/cf;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/baidu/mobstat/cf;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/cf;)Landroid/os/Handler;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/baidu/mobstat/cf;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cf;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/cf;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0
.end method

.method private d(Landroid/app/Activity;)V
    .locals 4

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v2, Lcom/baidu/mobstat/cg;

    new-instance v3, Lcom/baidu/mobstat/cf$2;

    invoke-direct {v3, p0}, Lcom/baidu/mobstat/cf$2;-><init>(Lcom/baidu/mobstat/cf;)V

    invoke-direct {v2, v1, v3}, Lcom/baidu/mobstat/cg;-><init>(Landroid/view/Window$Callback;Lcom/baidu/mobstat/cg$a;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/baidu/mobstat/cf;->c:Landroid/app/Activity;

    .line 67
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cf;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/baidu/mobstat/cf;->c:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/cf;->c(Landroid/app/Activity;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/cf;->c:Landroid/app/Activity;

    return-void
.end method
