.class final Lcom/google/common/util/concurrent/Callables$4;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lcom/google/common/base/Supplier;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$nameSupplier:Lcom/google/common/base/Supplier;

.field final val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$4;->val$nameSupplier:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$4;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$4;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v3

    .line 119
    :try_start_14
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$4;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1f

    .line 121
    if-eqz v3, :cond_1e

    .line 122
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 125
    :cond_1e
    return-void

    .line 121
    :catchall_1f
    move-exception v0

    if-eqz v3, :cond_25

    .line 122
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 124
    :cond_25
    throw v0
.end method
