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
    .registers 8

    .line 355
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 356
    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 369
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore$2;->b:Z

    if-eqz v0, :cond_2

    .line 370
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$2;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore$2;->b:Z

    if-nez v0, :cond_3

    .line 374
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start page view "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$2;->d:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$2;->c:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/baidu/mobstat/BDStatCore$2;->b:Z

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mobstat/SessionAnalysis;->onPageStartAct(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto :goto_0
.end method
