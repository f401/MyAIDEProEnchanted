.class public final Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkChangedReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$LazyHolder;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->getInstance()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mType:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 2

    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mType:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object p1
.end method

.method static synthetic access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method private static getInstance()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$LazyHolder;->access$800()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method isRegistered(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_16
    return-void
.end method

.method registerListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$1;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method unregisterListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
