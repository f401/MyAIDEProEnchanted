.class Lcom/baidu/mobstat/cr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:I

.field final f:J

.field final g:Ljava/lang/String;

.field final h:Lorg/json/JSONArray;

.field final i:Ljava/lang/String;

.field final j:Lorg/json/JSONArray;

.field final k:Ljava/lang/String;

.field final l:Ljava/util/Map;

.field final m:Z

.field final n:Lorg/json/JSONObject;

.field final o:Ljava/lang/String;

.field final p:Lorg/json/JSONArray;

.field final q:Lcom/baidu/mobstat/cr;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 20

    .line 218
    iput-object p1, p0, Lcom/baidu/mobstat/cr$1;->q:Lcom/baidu/mobstat/cr;

    iput-object p2, p0, Lcom/baidu/mobstat/cr$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/cr$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/cr$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/mobstat/cr$1;->d:Ljava/lang/String;

    iput p6, p0, Lcom/baidu/mobstat/cr$1;->e:I

    iput-wide p7, p0, Lcom/baidu/mobstat/cr$1;->f:J

    iput-object p9, p0, Lcom/baidu/mobstat/cr$1;->g:Ljava/lang/String;

    iput-object p10, p0, Lcom/baidu/mobstat/cr$1;->h:Lorg/json/JSONArray;

    iput-object p11, p0, Lcom/baidu/mobstat/cr$1;->i:Ljava/lang/String;

    iput-object p12, p0, Lcom/baidu/mobstat/cr$1;->j:Lorg/json/JSONArray;

    iput-object p13, p0, Lcom/baidu/mobstat/cr$1;->k:Ljava/lang/String;

    iput-object p14, p0, Lcom/baidu/mobstat/cr$1;->l:Ljava/util/Map;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/baidu/mobstat/cr$1;->m:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/baidu/mobstat/cr$1;->n:Lorg/json/JSONObject;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/baidu/mobstat/cr$1;->o:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/baidu/mobstat/cr$1;->p:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .line 220
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v4

    .line 221
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/cr$1;->q:Lcom/baidu/mobstat/cr;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/cr$1;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/cr$1;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/cr$1;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/cr$1;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/mobstat/cr$1;->e:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/baidu/mobstat/cr$1;->f:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/mobstat/cr$1;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/mobstat/cr$1;->h:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mobstat/cr$1;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mobstat/cr$1;->j:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/cr$1;->k:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/cr$1;->l:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/mobstat/cr$1;->m:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/cr$1;->n:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/cr$1;->o:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/cr$1;->p:Lorg/json/JSONArray;

    move-object/from16 v21, v0

    invoke-static/range {v2 .. v21}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0
.end method
