.class Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getNetworkType()Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    move-result-object v1

    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$1000(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    move-result-object v0

    if-ne v0, v1, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$1002(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    if-ne v1, v0, :cond_30

    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;->onDisconnected()V

    goto :goto_20

    :cond_30
    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;->onConnected(Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)V

    goto :goto_3a
.end method
