.class public Lcom/baidu/mobstat/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 40
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/cn;->b()Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 44
    :cond_e
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/co;->b()Z

    move-result p1

    if-eqz p1, :cond_19

    return-void

    .line 48
    :cond_19
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static a(Landroid/view/KeyEvent;)V
    .registers 2

    .line 140
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cn;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 144
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 148
    :cond_16
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/co;->a(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/app/Activity;)V
    .registers 3

    .line 120
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cn;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 124
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 128
    :cond_16
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/co;->a(Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method

.method public static a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .registers 2

    .line 21
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 166
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 170
    :cond_b
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 67
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/cn;->b()Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 71
    :cond_e
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/co;->b()Z

    move-result p1

    if-eqz p1, :cond_19

    return-void

    .line 75
    :cond_19
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/co;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/cn;->b()Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 98
    :cond_e
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/co;->b()Z

    move-result p1

    if-eqz p1, :cond_19

    return-void

    .line 102
    :cond_19
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Lcom/baidu/mobstat/co;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mobstat/co;->c(Landroid/app/Activity;)V

    return-void
.end method
