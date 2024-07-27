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
    .registers 20

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/BDStatCore$9;->a:Ljava/lang/String;

    .line 743
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    const-string v4, ""

    .line 747
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$9;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/BDStatCore$9;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/mobstat/BDStatCore$9;->c:J

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v6, v7, v5}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$9;->j:Lcom/baidu/mobstat/BDStatCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/BDStatCore$9;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/mobstat/BDStatCore$9;->e:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$9;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v8

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$9;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/BDStatCore$9;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mobstat/BDStatCore$9;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/mobstat/BDStatCore$9;->e:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/baidu/mobstat/BDStatCore$9;->c:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mobstat/BDStatCore$9;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/BDStatCore$9;->g:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/mobstat/BDStatCore$9;->h:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/mobstat/BDStatCore$9;->i:Z

    move/from16 v18, v0

    move-object v11, v4

    .line 754
    invoke-virtual/range {v6 .. v18}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IZ)V

    .line 756
    return-void
.end method
