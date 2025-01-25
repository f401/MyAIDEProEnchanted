.class final Lcom/google/common/util/concurrent/Callables$3;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/util/concurrent/Callable;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final val$callable:Ljava/util/concurrent/Callable;

.field final val$nameSupplier:Lcom/google/common/base/Supplier;


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 87
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v3

    .line 89
    :try_start_14
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_20

    move-result-object v0

    .line 91
    if-eqz v3, :cond_1f

    .line 92
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 89
    :cond_1f
    return-object v0

    .line 91
    :catchall_20
    move-exception v0

    if-eqz v3, :cond_26

    .line 92
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 94
    :cond_26
    throw v0
.end method
