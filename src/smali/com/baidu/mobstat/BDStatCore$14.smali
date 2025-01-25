.class Lcom/baidu/mobstat/BDStatCore$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V
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

.field final f:J

.field final g:Ljava/util/Map;

.field final h:Lcom/baidu/mobstat/ExtraInfo;

.field final i:Z

.field final j:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;JLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Z)V
    .registers 13

    .line 891
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$14;->j:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$14;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/BDStatCore$14;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/baidu/mobstat/BDStatCore$14;->c:J

    iput-boolean p6, p0, Lcom/baidu/mobstat/BDStatCore$14;->d:Z

    iput-object p7, p0, Lcom/baidu/mobstat/BDStatCore$14;->e:Ljava/lang/String;

    iput-wide p8, p0, Lcom/baidu/mobstat/BDStatCore$14;->f:J

    iput-object p10, p0, Lcom/baidu/mobstat/BDStatCore$14;->g:Ljava/util/Map;

    iput-object p11, p0, Lcom/baidu/mobstat/BDStatCore$14;->h:Lcom/baidu/mobstat/ExtraInfo;

    iput-boolean p12, p0, Lcom/baidu/mobstat/BDStatCore$14;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 895
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$14;->a:Ljava/lang/String;

    .line 896
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 897
    const-string v0, ""

    .line 900
    :cond_a
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$14;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$14;->b:Landroid/content/Context;

    iget-wide v3, p0, Lcom/baidu/mobstat/BDStatCore$14;->c:J

    iget-boolean v5, p0, Lcom/baidu/mobstat/BDStatCore$14;->d:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 902
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "Put event"

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$14;->j:Lcom/baidu/mobstat/BDStatCore;

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$14;->e:Ljava/lang/String;

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/baidu/mobstat/BDStatCore$14;->f:J

    iget-object v7, p0, Lcom/baidu/mobstat/BDStatCore$14;->g:Ljava/util/Map;

    iget-object v8, p0, Lcom/baidu/mobstat/BDStatCore$14;->h:Lcom/baidu/mobstat/ExtraInfo;

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 903
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$14;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v3

    .line 906
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$14;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$14;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/mobstat/BDStatCore$14;->e:Ljava/lang/String;

    iget-wide v7, p0, Lcom/baidu/mobstat/BDStatCore$14;->c:J

    iget-wide v9, p0, Lcom/baidu/mobstat/BDStatCore$14;->f:J

    iget-object v11, p0, Lcom/baidu/mobstat/BDStatCore$14;->h:Lcom/baidu/mobstat/ExtraInfo;

    iget-object v12, p0, Lcom/baidu/mobstat/BDStatCore$14;->g:Ljava/util/Map;

    iget-boolean v13, p0, Lcom/baidu/mobstat/BDStatCore$14;->i:Z

    move-object v6, v0

    invoke-virtual/range {v1 .. v13}, Lcom/baidu/mobstat/EventAnalysis;->onEventDuration(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    return-void
.end method
