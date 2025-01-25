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
    .registers 22

    .line 218
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->q:Lcom/baidu/mobstat/cr;

    move-object v1, p2

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->a:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->b:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->c:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->d:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/baidu/mobstat/cr$1;->e:I

    move-wide v1, p7

    iput-wide v1, v0, Lcom/baidu/mobstat/cr$1;->f:J

    move-object v1, p9

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->g:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->h:Lorg/json/JSONArray;

    move-object v1, p11

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->i:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->j:Lorg/json/JSONArray;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->k:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->l:Ljava/util/Map;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/baidu/mobstat/cr$1;->m:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->n:Lorg/json/JSONObject;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->o:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/baidu/mobstat/cr$1;->p:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .line 220
    move-object/from16 v0, p0

    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v4

    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-gtz v3, :cond_11

    return-void

    .line 225
    :cond_11
    iget-object v2, v0, Lcom/baidu/mobstat/cr$1;->q:Lcom/baidu/mobstat/cr;

    iget-object v3, v0, Lcom/baidu/mobstat/cr$1;->a:Landroid/content/Context;

    iget-object v6, v0, Lcom/baidu/mobstat/cr$1;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/baidu/mobstat/cr$1;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/baidu/mobstat/cr$1;->d:Ljava/lang/String;

    iget v9, v0, Lcom/baidu/mobstat/cr$1;->e:I

    iget-wide v10, v0, Lcom/baidu/mobstat/cr$1;->f:J

    iget-object v12, v0, Lcom/baidu/mobstat/cr$1;->g:Ljava/lang/String;

    iget-object v13, v0, Lcom/baidu/mobstat/cr$1;->h:Lorg/json/JSONArray;

    iget-object v14, v0, Lcom/baidu/mobstat/cr$1;->i:Ljava/lang/String;

    iget-object v15, v0, Lcom/baidu/mobstat/cr$1;->j:Lorg/json/JSONArray;

    iget-object v1, v0, Lcom/baidu/mobstat/cr$1;->k:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/baidu/mobstat/cr$1;->l:Ljava/util/Map;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Lcom/baidu/mobstat/cr$1;->m:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/baidu/mobstat/cr$1;->n:Lorg/json/JSONObject;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/baidu/mobstat/cr$1;->o:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/baidu/mobstat/cr$1;->p:Lorg/json/JSONArray;

    move-object/from16 v21, v1

    invoke-static/range {v2 .. v21}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method
