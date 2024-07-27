.class Lcom/baidu/mobstat/BDStatCore$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:J

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 974
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$16;->e:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$16;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/baidu/mobstat/BDStatCore$16;->b:J

    iput-object p5, p0, Lcom/baidu/mobstat/BDStatCore$16;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/mobstat/BDStatCore$16;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 978
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$16;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->init(Landroid/content/Context;)V

    .line 980
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$16;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$16;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/mobstat/BDStatCore$16;->b:J

    iget-object v4, p0, Lcom/baidu/mobstat/BDStatCore$16;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/mobstat/BDStatCore$16;->d:Ljava/lang/String;

    iget-wide v7, p0, Lcom/baidu/mobstat/BDStatCore$16;->b:J

    move-object v10, v9

    invoke-virtual/range {v0 .. v11}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 982
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/mobstat/BDStatCore$16;->a:Landroid/content/Context;

    iget-wide v8, p0, Lcom/baidu/mobstat/BDStatCore$16;->b:J

    move v7, v11

    move v10, v11

    invoke-virtual/range {v4 .. v10}, Lcom/baidu/mobstat/DataCore;->saveLogData(Landroid/content/Context;ZZJZ)V

    .line 983
    iget-wide v0, p0, Lcom/baidu/mobstat/BDStatCore$16;->b:J

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$16;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->d(Lcom/baidu/mobstat/BDStatCore;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$16;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$16;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/LogSender;->onSend(Landroid/content/Context;)V

    .line 986
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$16;->e:Lcom/baidu/mobstat/BDStatCore;

    iget-wide v2, p0, Lcom/baidu/mobstat/BDStatCore$16;->b:J

    invoke-static {v0, v2, v3}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;J)J

    .line 989
    :cond_0
    return-void
.end method
