.class public Lcom/baidu/mobstat/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 28
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 36
    :cond_b
    sget-object v0, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/b;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/b;->a(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object p0

    .line 39
    sget-object v0, Lcom/baidu/mobstat/g;->a:Lcom/baidu/mobstat/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 4

    .line 60
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 64
    :cond_b
    sget-object v0, Lcom/baidu/mobstat/e;->a:Lcom/baidu/mobstat/e;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/e;->a(Landroid/content/Context;Z)V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    invoke-static {p0}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object p0

    if-eqz p1, :cond_1d

    .line 72
    sget-object p1, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/g;

    goto :goto_1f

    :cond_1d
    sget-object p1, Lcom/baidu/mobstat/g;->b:Lcom/baidu/mobstat/g;

    :goto_1f
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    .line 100
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 107
    :cond_b
    sget-object v0, Lcom/baidu/mobstat/d;->a:Lcom/baidu/mobstat/d;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/d;->a(Landroid/content/Context;)V

    .line 109
    invoke-static {p0}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object p0

    .line 110
    sget-object v0, Lcom/baidu/mobstat/g;->g:Lcom/baidu/mobstat/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .registers 4

    .line 83
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 87
    :cond_b
    sget-object v0, Lcom/baidu/mobstat/f;->a:Lcom/baidu/mobstat/f;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/f;->a(Landroid/content/Context;Z)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    invoke-static {p0}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Lcom/baidu/mobstat/w;

    move-result-object p0

    if-eqz p1, :cond_1d

    .line 91
    sget-object p1, Lcom/baidu/mobstat/g;->d:Lcom/baidu/mobstat/g;

    goto :goto_1f

    :cond_1d
    sget-object p1, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/g;

    :goto_1f
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;J)V

    return-void
.end method
