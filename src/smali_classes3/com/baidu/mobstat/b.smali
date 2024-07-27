.class Lcom/baidu/mobstat/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/baidu/mobstat/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/baidu/mobstat/b;

    invoke-direct {v0}, Lcom/baidu/mobstat/b;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/b;->a:Lcom/baidu/mobstat/b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 6

    .line 28
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    sget-object v1, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;JLjava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
