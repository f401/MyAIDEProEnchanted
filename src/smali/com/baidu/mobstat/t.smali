.class public Lcom/baidu/mobstat/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/baidu/mobstat/a;
    .registers 4

    const-class v0, Lcom/baidu/mobstat/t;

    monitor-enter v0

    .line 22
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "getBPStretegyController begin"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/baidu/mobstat/u;

    invoke-direct {v0}, Lcom/baidu/mobstat/u;-><init>()V

    .line 29
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    const-string v2, "Get BPStretegyController load local class"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 33
    invoke-static {p0, v0}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Lcom/baidu/mobstat/a;)V

    .line 36
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p0

    const-string v1, "getBPStretegyController end"

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2a

    .line 37
    const-class p0, Lcom/baidu/mobstat/t;

    monitor-exit p0

    return-object v0

    :catchall_2a
    move-exception p0

    const-class v0, Lcom/baidu/mobstat/t;

    monitor-exit v0

    throw p0
.end method
