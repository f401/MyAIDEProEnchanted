.class Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager$1;
.super Ljava/lang/Thread;


# instance fields
.field final j6:Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager$1;->j6:Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ReferenceManager;->j6()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager$1;->j6:Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;

    invoke-static {v0}, Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;->j6(Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Lorg/codehaus/groovy/util/Reference;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/codehaus/groovy/util/Reference;

    invoke-interface {v0}, Lorg/codehaus/groovy/util/Reference;->getHandler()Lorg/codehaus/groovy/util/Finalizable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/codehaus/groovy/util/Finalizable;->DW()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    return-void
.end method
