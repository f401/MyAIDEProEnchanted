.class Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;
.super Ljava/lang/Object;
.source "BackgroundInitializer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final execFinally:Ljava/util/concurrent/ExecutorService;

.field final this$0:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 313
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->this$0:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    .line 315
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
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

    .line 326
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->this$0:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->initialize()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_e

    move-result-object v0

    .line 328
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_d

    .line 329
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 326
    :cond_d
    return-object v0

    .line 328
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_16

    .line 329
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 331
    :cond_16
    throw v0
.end method
