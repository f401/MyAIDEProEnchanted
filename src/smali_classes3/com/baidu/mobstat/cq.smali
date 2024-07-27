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

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    .line 106
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .registers 2

    .line 48
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/cm;->a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/baidu/mobstat/cu;->a()Lcom/baidu/mobstat/cu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cu;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 2

    .line 61
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/baidu/mobstat/cr;->a()Lcom/baidu/mobstat/cr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .line 250
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cu;->a()Lcom/baidu/mobstat/cu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/cu;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
