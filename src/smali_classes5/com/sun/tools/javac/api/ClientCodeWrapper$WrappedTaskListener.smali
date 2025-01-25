.class public Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;
.super Ljava/lang/Object;
.source "ClientCodeWrapper.java"

# interfaces
.implements Lcom/sun/source/util/TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WrappedTaskListener"
.end annotation


# instance fields
.field protected clientTaskListener:Lcom/sun/source/util/TaskListener;

.field final this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Lcom/sun/source/util/TaskListener;)V
    .registers 3

    .line 620
    iput-object p1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    iput-object p2, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->clientTaskListener:Lcom/sun/source/util/TaskListener;

    .line 623
    return-void
.end method


# virtual methods
.method public finished(Lcom/sun/source/util/TaskEvent;)V
    .registers 4

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->clientTaskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v0, p1}, Lcom/sun/source/util/TaskListener;->finished(Lcom/sun/source/util/TaskEvent;)V
    :try_end_5
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_5} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_6

    .line 648
    return-void

    .line 646
    :catch_6
    move-exception v0

    .line 647
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 644
    :catch_d
    move-exception v0

    .line 645
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 642
    :catch_14
    move-exception v0

    .line 643
    throw v0
.end method

.method public started(Lcom/sun/source/util/TaskEvent;)V
    .registers 4

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->clientTaskListener:Lcom/sun/source/util/TaskListener;

    invoke-interface {v0, p1}, Lcom/sun/source/util/TaskListener;->started(Lcom/sun/source/util/TaskEvent;)V
    :try_end_5
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_5} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_6

    .line 635
    return-void

    .line 633
    :catch_6
    move-exception v0

    .line 634
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 631
    :catch_d
    move-exception v0

    .line 632
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 629
    :catch_14
    move-exception v0

    .line 630
    throw v0
.end method
