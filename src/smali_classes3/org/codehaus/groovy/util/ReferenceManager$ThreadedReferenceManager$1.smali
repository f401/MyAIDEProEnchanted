.class Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager$1;
.super Ljava/lang/Thread;


# instance fields
.field final j6:Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager$1;->j6:Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ReferenceManager;->j6()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager$1;->j6:Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;

    invoke-static {v1}, Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;->j6(Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-wide/16 v1, 0x3e8

    :try_start_10
    invoke-virtual {v0, v1, v2}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_14} :catch_2b

    if-nez v1, :cond_17

    goto :goto_6

    :cond_17
    instance-of v2, v1, Lorg/codehaus/groovy/util/Reference;

    if-eqz v2, :cond_27

    move-object v2, v1

    check-cast v2, Lorg/codehaus/groovy/util/Reference;

    invoke-interface {v2}, Lorg/codehaus/groovy/util/Reference;->getHandler()Lorg/codehaus/groovy/util/Finalizable;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-interface {v2}, Lorg/codehaus/groovy/util/Finalizable;->DW()V

    :cond_27
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_6

    :catch_2b
    move-exception v0

    :cond_2c
    return-void
.end method
