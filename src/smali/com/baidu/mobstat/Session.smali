.class public Lcom/baidu/mobstat/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/Session$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:J

.field private volatile d:J

.field private volatile e:J

.field private volatile f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/Session$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    .line 22
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    .line 25
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    .line 28
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    .line 31
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->e:J

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/Session;->f:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/Session$a;",
            ">;",
            "Lcom/baidu/mobstat/Session$a;",
            ")V"
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-nez p1, :cond_e

    return-void

    :cond_e
    if-nez p2, :cond_11

    return-void

    .line 106
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 108
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 112
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/Session$a;

    .line 114
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_5f

    .line 119
    :cond_38
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v1

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v2

    if-ne v1, v2, :cond_51

    goto :goto_5b

    .line 124
    :cond_51
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 125
    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/Session$a;->a(Lcom/baidu/mobstat/Session$a;)V

    goto :goto_64

    .line 120
    :cond_5b
    :goto_5b
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 115
    :cond_5f
    :goto_5f
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception p1

    :cond_64
    :goto_64
    return-void
.end method

.method public static getPVJson(Lcom/baidu/mobstat/Session$a;J)Lorg/json/JSONObject;
    .registers 7

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 252
    :try_start_5
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v1, "d"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 255
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->d()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 256
    const-wide/16 p1, 0x0

    cmp-long v3, v1, p1

    if-gez v3, :cond_23

    move-wide v1, p1

    :cond_23
    const-string p1, "ps"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    const-string p1, "t"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string p1, "at"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->f()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->e()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 262
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-eqz p2, :cond_4b

    .line 263
    const-string p2, "ext"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_4b
    const-string p1, "h5"

    invoke-static {p0}, Lcom/baidu/mobstat/Session$a;->d(Lcom/baidu/mobstat/Session$a;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string p1, "py"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    move-exception p0

    :goto_5f
    return-object v0
.end method


# virtual methods
.method public addPageView(Lcom/baidu/mobstat/Session$a;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/Session;->a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V

    return-void
.end method

.method public addPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;ZLjava/lang/String;)V
    .registers 26

    .line 83
    move-object v0, p0

    new-instance v13, Lcom/baidu/mobstat/Session$a;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/baidu/mobstat/Session$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;ZLjava/lang/String;)V

    .line 85
    iget-object v1, v0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-direct {p0, v1, v13}, Lcom/baidu/mobstat/Session;->a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V

    return-void
.end method

.method public constructJSONObject()Lorg/json/JSONObject;
    .registers 7

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 190
    :try_start_5
    const-string v1, "s"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    const-string v1, "e"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 192
    const-string v1, "i"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 194
    const-string v1, "c"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2b

    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->a:J

    goto :goto_2d

    :cond_2b
    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->c:J

    :goto_2d
    const-string v5, "s2"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_3b

    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->b:J

    goto :goto_3d

    :cond_3b
    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->d:J

    :goto_3d
    const-string v3, "e2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    const-string v1, "pc"

    iget v2, p0, Lcom/baidu/mobstat/Session;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    iget-object v1, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 201
    const-string v1, "launch"

    iget-object v2, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    :cond_5c
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 205
    :goto_62
    iget-object v3, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7e

    .line 206
    iget-object v3, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mobstat/Session$a;

    .line 207
    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-static {v3, v4, v5}, Lcom/baidu/mobstat/Session;->getPVJson(Lcom/baidu/mobstat/Session$a;J)Lorg/json/JSONObject;

    move-result-object v3

    .line 208
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 211
    :cond_7e
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 212
    const-string v2, "p"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_8d
    const-string v1, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/DataCore;->getSessionPy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v1

    :goto_9c
    return-object v0
.end method

.method public getPageSessionHead()Lorg/json/JSONObject;
    .registers 7

    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 227
    :try_start_5
    const-string v1, "s"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 228
    const-string v1, "e"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 229
    const-string v1, "i"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 231
    const-string v1, "c"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2b

    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->a:J

    goto :goto_2d

    :cond_2b
    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->c:J

    :goto_2d
    const-string v5, "s2"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_3b

    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->b:J

    goto :goto_3d

    :cond_3b
    iget-wide v1, p0, Lcom/baidu/mobstat/Session;->d:J

    :goto_3d
    const-string v3, "e2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 234
    const-string v1, "pc"

    iget v2, p0, Lcom/baidu/mobstat/Session;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    const-string v1, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/DataCore;->getSessionPy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_56} :catch_57

    goto :goto_58

    :catch_57
    move-exception v1

    :goto_58
    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .line 154
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    return-wide v0
.end method

.method public getTrackEndTime()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    return-wide v0
.end method

.method public getTrackStartTime()J
    .registers 3

    .line 66
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    return-wide v0
.end method

.method public hasEnd()Z
    .registers 6

    .line 167
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasStart()Z
    .registers 6

    .line 158
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public reset()V
    .registers 3

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    .line 47
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    .line 49
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    .line 51
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/Session;->f:I

    .line 55
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setEndTime(J)V
    .registers 3

    .line 176
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->b:J

    return-void
.end method

.method public setInvokeType(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/baidu/mobstat/Session;->f:I

    return-void
.end method

.method public setLaunchInfo(Lorg/json/JSONObject;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    return-void
.end method

.method public setStartTime(J)V
    .registers 8

    .line 140
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    return-void

    .line 144
    :cond_9
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->a:J

    .line 145
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->e:J

    return-void
.end method

.method public setTrackEndTime(J)V
    .registers 3

    .line 74
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->d:J

    return-void
.end method

.method public setTrackStartTime(J)V
    .registers 8

    .line 59
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    return-void

    .line 62
    :cond_9
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->c:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 245
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session;->constructJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
