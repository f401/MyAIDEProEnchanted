.class Lcom/baidu/mobstat/df$a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/df$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/df$a;

.field private b:Landroid/view/View$AccessibilityDelegate;

.field private c:Landroid/view/View;

.field private volatile d:Z

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/df$a;Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Landroid/view/View$AccessibilityDelegate;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/view/View$AccessibilityDelegate;",
            "Z)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/baidu/mobstat/df$a$a;->a:Lcom/baidu/mobstat/df$a;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 58
    iput-object p5, p0, Lcom/baidu/mobstat/df$a$a;->b:Landroid/view/View$AccessibilityDelegate;

    .line 59
    invoke-static {p1, p2}, Lcom/baidu/mobstat/df$a;->a(Lcom/baidu/mobstat/df$a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 60
    iput-object p3, p0, Lcom/baidu/mobstat/df$a$a;->c:Landroid/view/View;

    .line 61
    iput-boolean p6, p0, Lcom/baidu/mobstat/df$a$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View$AccessibilityDelegate;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/baidu/mobstat/df$a$a;->b:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/baidu/mobstat/df$a$a;->d:Z

    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 8

    .line 82
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 84
    iget-object p1, p0, Lcom/baidu/mobstat/df$a$a;->a:Lcom/baidu/mobstat/df$a;

    invoke-virtual {p1}, Lcom/baidu/mobstat/df$a;->a()V

    return-void

    .line 89
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/df$a$a;->e:J

    .line 92
    iget-object v0, p0, Lcom/baidu/mobstat/df$a$a;->c:Landroid/view/View;

    if-ne p1, v0, :cond_8e

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8e

    .line 94
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_b2

    const-string v1, "watch view  OnEvent:"

    if-eqz v0, :cond_48

    :try_start_29
    iget-boolean v0, p0, Lcom/baidu/mobstat/df$a$a;->d:Z

    if-eqz v0, :cond_48

    .line 95
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 98
    :cond_48
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 99
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 104
    :cond_6d
    iget-object v0, p0, Lcom/baidu/mobstat/df$a$a;->a:Lcom/baidu/mobstat/df$a;

    invoke-static {v0}, Lcom/baidu/mobstat/df$a;->a(Lcom/baidu/mobstat/df$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 105
    iget-object v0, p0, Lcom/baidu/mobstat/df$a$a;->a:Lcom/baidu/mobstat/df$a;

    invoke-static {v0}, Lcom/baidu/mobstat/df$a;->a(Lcom/baidu/mobstat/df$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_8e

    .line 107
    iget-object v1, p0, Lcom/baidu/mobstat/df$a$a;->a:Lcom/baidu/mobstat/df$a;

    invoke-static {v1}, Lcom/baidu/mobstat/df$a;->b(Lcom/baidu/mobstat/df$a;)Lcom/baidu/mobstat/df$b;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/mobstat/df$a$a;->d:Z

    invoke-interface {v1, p1, v2, v0}, Lcom/baidu/mobstat/df$b;->a(Landroid/view/View;ZLandroid/app/Activity;)V

    .line 113
    :cond_8e
    iget-wide v0, p0, Lcom/baidu/mobstat/df$a$a;->e:J

    iget-wide v2, p0, Lcom/baidu/mobstat/df$a$a;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_9a

    return-void

    .line 117
    :cond_9a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/df$a$a;->f:J

    .line 120
    iget-object v0, p0, Lcom/baidu/mobstat/df$a$a;->b:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_ae

    instance-of v1, v0, Lcom/baidu/mobstat/df$a$a;

    if-nez v1, :cond_ae

    if-eq v0, p0, :cond_ae

    .line 123
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_c0

    .line 125
    :cond_ae
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V
    :try_end_b1
    .catchall {:try_start_29 .. :try_end_b1} :catchall_b2

    goto :goto_c0

    .line 130
    :catchall_b2
    move-exception p1

    iget-object p1, p0, Lcom/baidu/mobstat/df$a$a;->a:Lcom/baidu/mobstat/df$a;

    invoke-virtual {p1}, Lcom/baidu/mobstat/df$a;->a()V

    .line 131
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/CooperService;->setEnableAutoEvent(Z)V

    :goto_c0
    return-void
.end method
