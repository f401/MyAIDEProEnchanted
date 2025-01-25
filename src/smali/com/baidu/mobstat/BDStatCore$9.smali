.class Lcom/baidu/mobstat/BDStatCore$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/content/Context;

.field final c:J

.field final d:Ljava/lang/String;

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:I

.field final i:Z

.field final j:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 12

    .line 738
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$9;->j:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/BDStatCore$9;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/baidu/mobstat/BDStatCore$9;->c:J

    iput-object p6, p0, Lcom/baidu/mobstat/BDStatCore$9;->d:Ljava/lang/String;

    iput p7, p0, Lcom/baidu/mobstat/BDStatCore$9;->e:I

    iput-object p8, p0, Lcom/baidu/mobstat/BDStatCore$9;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/baidu/mobstat/BDStatCore$9;->g:Ljava/lang/String;

    iput p10, p0, Lcom/baidu/mobstat/BDStatCore$9;->h:I

    iput-boolean p11, p0, Lcom/baidu/mobstat/BDStatCore$9;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 742
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$9;->a:Ljava/lang/String;

    .line 743
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 744
    const-string v0, ""

    .line 747
    :cond_a
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$9;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$9;->b:Landroid/content/Context;

    iget-wide v3, p0, Lcom/baidu/mobstat/BDStatCore$9;->c:J

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 749
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "Put event"

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$9;->j:Lcom/baidu/mobstat/BDStatCore;

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$9;->d:Ljava/lang/String;

    iget v4, p0, Lcom/baidu/mobstat/BDStatCore$9;->e:I

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$9;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v3

    .line 753
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$9;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$9;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/mobstat/BDStatCore$9;->d:Ljava/lang/String;

    iget v7, p0, Lcom/baidu/mobstat/BDStatCore$9;->e:I

    iget-wide v8, p0, Lcom/baidu/mobstat/BDStatCore$9;->c:J

    iget-object v10, p0, Lcom/baidu/mobstat/BDStatCore$9;->f:Ljava/lang/String;

    iget-object v11, p0, Lcom/baidu/mobstat/BDStatCore$9;->g:Ljava/lang/String;

    iget v12, p0, Lcom/baidu/mobstat/BDStatCore$9;->h:I

    iget-boolean v13, p0, Lcom/baidu/mobstat/BDStatCore$9;->i:Z

    .line 754
    move-object v6, v0

    invoke-virtual/range {v1 .. v13}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
