.class Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->enqueueFailedEvent(Lcom/google/common/util/concurrent/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
        "<",
        "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

.field final val$service:Lcom/google/common/util/concurrent/Service;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    .registers 3

    .line 716
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->val$service:Lcom/google/common/util/concurrent/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .registers 3

    .line 719
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->val$service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ServiceManager$Listener;->failure(Lcom/google/common/util/concurrent/Service;)V

    .line 720
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 716
    check-cast p1, Lcom/google/common/util/concurrent/ServiceManager$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->call(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed({service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->val$service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
