.class Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassDefItemConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field futureClazz:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/ClassDefItem;",
            ">;"
        }
    .end annotation
.end field

.field maxFieldIdsInClass:I

.field maxMethodIdsInClass:I

.field name:Ljava/lang/String;

.field private final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/command/dexer/Main;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/ClassDefItem;",
            ">;II)V"
        }
    .end annotation

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    .line 1922
    iput-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->name:Ljava/lang/String;

    .line 1923
    iput-object p3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->futureClazz:Ljava/util/concurrent/Future;

    .line 1924
    iput p4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxMethodIdsInClass:I

    .line 1925
    iput p5, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxFieldIdsInClass:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;)Lcom/s1243808733/android/dx/command/dexer/Main;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1931
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->futureClazz:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    .line 1932
    if-eqz v0, :cond_0

    .line 1933
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$1000042(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)Z

    .line 1934
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$1000037(Lcom/s1243808733/android/dx/command/dexer/Main;Z)V

    .line 1936
    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 1944
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000009(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v1

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v1, :cond_1

    .line 1950
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000018(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1951
    :try_start_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000019(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxMethodIdsInClass:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$S1000019(Lcom/s1243808733/android/dx/command/dexer/Main;I)V

    .line 1952
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000020(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxFieldIdsInClass:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$S1000020(Lcom/s1243808733/android/dx/command/dexer/Main;I)V

    .line 1953
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000018(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v1

    .line 1941
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1942
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Exception;

    :goto_0
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 1944
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000009(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v1

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v1, :cond_2

    .line 1950
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000018(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1951
    :try_start_4
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000019(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxMethodIdsInClass:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$S1000019(Lcom/s1243808733/android/dx/command/dexer/Main;I)V

    .line 1952
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000020(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxFieldIdsInClass:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$S1000020(Lcom/s1243808733/android/dx/command/dexer/Main;I)V

    .line 1953
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000018(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v1

    :cond_2
    throw v0

    :cond_3
    move-object v0, v1

    .line 1942
    goto :goto_0

    .line 1953
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
