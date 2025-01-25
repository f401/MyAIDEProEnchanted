.class public Lcom/baidu/mobstat/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/cq$a;,
        Lcom/baidu/mobstat/cq$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 83
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 87
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 91
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    .line 106
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 110
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 114
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .registers 2

    .line 48
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 52
    :cond_b
    invoke-static {p0}, Lcom/baidu/mobstat/cm;->a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 34
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 38
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/cu;->a()Lcom/baidu/mobstat/cu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cu;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 2

    .line 61
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 65
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 69
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .line 250
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 256
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cu;->a()Lcom/baidu/mobstat/cu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cu;->a(Ljava/lang/String;)V

    return-void
.end method
