.class Lcom/baidu/mobstat/BDStatCore$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
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

.field final f:Ljava/util/Map;

.field final g:Lorg/json/JSONArray;

.field final h:Lorg/json/JSONArray;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/String;

.field final k:Ljava/lang/String;

.field final l:Z

.field final m:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    .line 781
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$10;->m:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/BDStatCore$10;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/baidu/mobstat/BDStatCore$10;->c:J

    iput-object p6, p0, Lcom/baidu/mobstat/BDStatCore$10;->d:Ljava/lang/String;

    iput p7, p0, Lcom/baidu/mobstat/BDStatCore$10;->e:I

    iput-object p8, p0, Lcom/baidu/mobstat/BDStatCore$10;->f:Ljava/util/Map;

    iput-object p9, p0, Lcom/baidu/mobstat/BDStatCore$10;->g:Lorg/json/JSONArray;

    iput-object p10, p0, Lcom/baidu/mobstat/BDStatCore$10;->h:Lorg/json/JSONArray;

    iput-object p11, p0, Lcom/baidu/mobstat/BDStatCore$10;->i:Ljava/lang/String;

    iput-object p12, p0, Lcom/baidu/mobstat/BDStatCore$10;->j:Ljava/lang/String;

    iput-object p13, p0, Lcom/baidu/mobstat/BDStatCore$10;->k:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/baidu/mobstat/BDStatCore$10;->l:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/BDStatCore$10;->a:Ljava/lang/String;

    .line 786
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    const-string v4, ""

    .line 790
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$10;->m:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/BDStatCore$10;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/mobstat/BDStatCore$10;->c:J

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v6, v7, v5}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$10;->m:Lcom/baidu/mobstat/BDStatCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/BDStatCore$10;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/mobstat/BDStatCore$10;->e:I

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/BDStatCore$10;->f:Ljava/util/Map;

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 793
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$10;->m:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v8

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$10;->m:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/BDStatCore$10;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mobstat/BDStatCore$10;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/mobstat/BDStatCore$10;->e:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/baidu/mobstat/BDStatCore$10;->c:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mobstat/BDStatCore$10;->g:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/BDStatCore$10;->h:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/BDStatCore$10;->i:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/BDStatCore$10;->j:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/BDStatCore$10;->k:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/BDStatCore$10;->f:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/mobstat/BDStatCore$10;->l:Z

    move/from16 v21, v0

    move-object v11, v4

    invoke-virtual/range {v6 .. v21}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 798
    return-void
.end method
