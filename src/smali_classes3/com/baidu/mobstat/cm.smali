.class public Lcom/baidu/mobstat/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Z)V
    .registers 3

    .line 32
    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cn;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)V
    .registers 2

    .line 140
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cn;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/co;->a(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/app/Activity;)V
    .registers 3

    .line 120
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cn;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .registers 2

    .line 21
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 166
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Z)V
    .registers 3

    .line 59
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cn;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/co;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Z)V
    .registers 3

    .line 86
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cn;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/co;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method
