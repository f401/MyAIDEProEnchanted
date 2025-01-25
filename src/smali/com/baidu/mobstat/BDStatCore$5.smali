.class Lcom/baidu/mobstat/BDStatCore$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/app/Activity;ZLcom/baidu/mobstat/ExtraInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field final b:Z

.field final c:Landroid/content/Context;

.field final d:Lcom/baidu/mobstat/ExtraInfo;

.field final e:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;ZLandroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .registers 6

    .line 485
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$5;->e:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$5;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/baidu/mobstat/BDStatCore$5;->b:Z

    iput-object p4, p0, Lcom/baidu/mobstat/BDStatCore$5;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/baidu/mobstat/BDStatCore$5;->d:Lcom/baidu/mobstat/ExtraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 489
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_b

    return-void

    .line 494
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    .line 499
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 500
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 502
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 503
    const-string v0, ""

    goto :goto_2f

    :cond_2b
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    move-object v7, v0

    .line 505
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore$5;->b:Z

    if-nez v0, :cond_4d

    .line 506
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "End page view "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 508
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 510
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$5;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/mobstat/BDStatCore$5;->c:Landroid/content/Context;

    iget-boolean v10, p0, Lcom/baidu/mobstat/BDStatCore$5;->b:Z

    iget-object v11, p0, Lcom/baidu/mobstat/BDStatCore$5;->d:Lcom/baidu/mobstat/ExtraInfo;

    invoke-virtual/range {v3 .. v11}, Lcom/baidu/mobstat/SessionAnalysis;->onPageEndAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method
