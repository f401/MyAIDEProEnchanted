.class Lcom/baidu/mobstat/BDStatCore$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/util/Map;

.field final d:Lcom/baidu/mobstat/ExtraInfo;

.field final e:Landroid/content/Context;

.field final f:J

.field final g:Z

.field final h:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Landroid/content/Context;JZ)V
    .registers 10

    .line 848
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$13;->h:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$13;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/BDStatCore$13;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/BDStatCore$13;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/baidu/mobstat/BDStatCore$13;->d:Lcom/baidu/mobstat/ExtraInfo;

    iput-object p6, p0, Lcom/baidu/mobstat/BDStatCore$13;->e:Landroid/content/Context;

    iput-wide p7, p0, Lcom/baidu/mobstat/BDStatCore$13;->f:J

    iput-boolean p9, p0, Lcom/baidu/mobstat/BDStatCore$13;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 852
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$13;->a:Ljava/lang/String;

    .line 853
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 854
    const-string v0, ""

    .line 857
    :cond_a
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$13;->h:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v9

    .line 859
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v1, "End event"

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$13;->h:Lcom/baidu/mobstat/BDStatCore;

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$13;->b:Ljava/lang/String;

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    iget-object v7, p0, Lcom/baidu/mobstat/BDStatCore$13;->c:Ljava/util/Map;

    iget-object v8, p0, Lcom/baidu/mobstat/BDStatCore$13;->d:Lcom/baidu/mobstat/ExtraInfo;

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$13;->h:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$13;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/mobstat/BDStatCore$13;->b:Ljava/lang/String;

    iget-wide v7, p0, Lcom/baidu/mobstat/BDStatCore$13;->f:J

    iget-object v11, p0, Lcom/baidu/mobstat/BDStatCore$13;->d:Lcom/baidu/mobstat/ExtraInfo;

    iget-object v12, p0, Lcom/baidu/mobstat/BDStatCore$13;->c:Ljava/util/Map;

    iget-boolean v13, p0, Lcom/baidu/mobstat/BDStatCore$13;->g:Z

    move-wide v3, v9

    move-object v6, v0

    move-object v9, v11

    move-object v10, v12

    move v11, v13

    invoke-virtual/range {v1 .. v11}, Lcom/baidu/mobstat/EventAnalysis;->onEventEnd(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    return-void
.end method
