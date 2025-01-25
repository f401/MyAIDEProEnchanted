.class Lcom/baidu/mobstat/BDStatCore$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field final b:Landroid/support/v4/app/Fragment;

.field final c:Landroid/app/Activity;

.field final d:Landroid/content/Context;

.field final e:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/support/v4/app/Fragment;Landroid/app/Activity;Landroid/content/Context;)V
    .registers 6

    .line 536
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$6;->e:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$6;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/baidu/mobstat/BDStatCore$6;->b:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lcom/baidu/mobstat/BDStatCore$6;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/baidu/mobstat/BDStatCore$6;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 540
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$6;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_b

    return-void

    .line 545
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 550
    :cond_12
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$6;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 551
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$6;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 553
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$6;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_31

    .line 554
    const-string v0, ""

    goto :goto_35

    :cond_31
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_35
    move-object v5, v0

    .line 556
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "End page view "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 558
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$6;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$6;->d:Landroid/content/Context;

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->onPageEndFrag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
