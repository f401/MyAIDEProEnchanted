.class Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-object v2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v2, p1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$100(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$002(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Z)Z

    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v1

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$200(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    :cond_28
    return-void
.end method
