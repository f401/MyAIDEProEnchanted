.class Lcom/baidu/mobstat/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/v$a;
    }
.end annotation


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/mobstat/a;)V
    .registers 4

    const-class v0, Lcom/baidu/mobstat/v;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-boolean v0, Lcom/baidu/mobstat/v;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_49

    if-eqz v0, :cond_b

    .line 47
    const-class p0, Lcom/baidu/mobstat/v;

    monitor-exit p0

    return-void

    .line 50
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 51
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p0

    const-string p1, "isWifiAvailable = false, will not to update"

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_49

    .line 52
    const-class p0, Lcom/baidu/mobstat/v;

    monitor-exit p0

    return-void

    .line 55
    :cond_1e
    :try_start_1e
    invoke-interface {p1, p0}, Lcom/baidu/mobstat/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 56
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p0

    const-string p1, "check time, will not to update"

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_49

    .line 57
    const-class p0, Lcom/baidu/mobstat/v;

    monitor-exit p0

    return-void

    .line 60
    :cond_31
    :try_start_31
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    const-string v1, "can start update config"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/baidu/mobstat/v$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mobstat/v$a;-><init>(Landroid/content/Context;Lcom/baidu/mobstat/a;)V

    .line 63
    invoke-virtual {v0}, Lcom/baidu/mobstat/v$a;->start()V

    .line 65
    const/4 p0, 0x1

    sput-boolean p0, Lcom/baidu/mobstat/v;->a:Z
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_49

    .line 66
    const-class p0, Lcom/baidu/mobstat/v;

    monitor-exit p0

    return-void

    :catchall_49
    move-exception p0

    const-class p1, Lcom/baidu/mobstat/v;

    monitor-exit p1

    throw p0
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 29
    sput-boolean p0, Lcom/baidu/mobstat/v;->a:Z

    return p0
.end method
