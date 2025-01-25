.class Lcom/baidu/mobstat/BDStatCore$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/content/Context;

.field final c:J

.field final d:Z

.field final e:Ljava/lang/String;

.field final f:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;)V
    .registers 8

    .line 814
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$11;->f:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$11;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/BDStatCore$11;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/baidu/mobstat/BDStatCore$11;->c:J

    iput-boolean p6, p0, Lcom/baidu/mobstat/BDStatCore$11;->d:Z

    iput-object p7, p0, Lcom/baidu/mobstat/BDStatCore$11;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 818
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$11;->a:Ljava/lang/String;

    .line 819
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 820
    const-string v0, ""

    .line 823
    :cond_a
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$11;->f:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$11;->b:Landroid/content/Context;

    iget-wide v3, p0, Lcom/baidu/mobstat/BDStatCore$11;->c:J

    iget-boolean v5, p0, Lcom/baidu/mobstat/BDStatCore$11;->d:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 825
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "Start event"

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$11;->f:Lcom/baidu/mobstat/BDStatCore;

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$11;->e:Ljava/lang/String;

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 826
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 828
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$11;->f:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$11;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mobstat/BDStatCore$11;->e:Ljava/lang/String;

    iget-wide v5, p0, Lcom/baidu/mobstat/BDStatCore$11;->c:J

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mobstat/EventAnalysis;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
