.class Lcom/baidu/mobstat/BDStatCore$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onResume(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field final b:Z

.field final c:Landroid/content/Context;

.field final d:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;ZLandroid/content/Context;)V
    .registers 5

    .line 351
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$2;->d:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$2;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/baidu/mobstat/BDStatCore$2;->b:Z

    iput-object p4, p0, Lcom/baidu/mobstat/BDStatCore$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 355
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_b

    return-void

    .line 360
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    .line 365
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 369
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore$2;->b:Z

    if-eqz v0, :cond_2b

    .line 370
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$2;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v4}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    :cond_2b
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore$2;->b:Z

    if-nez v0, :cond_48

    .line 374
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start page view "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 376
    :cond_48
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$2;->d:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/BDStatCore$2;->c:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/baidu/mobstat/BDStatCore$2;->b:Z

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->onPageStartAct(Landroid/content/Context;Ljava/lang/String;JZ)V

    return-void
.end method
