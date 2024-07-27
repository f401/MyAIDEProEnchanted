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
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/Session$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
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
            "Ljava/util/List",
            "<",
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

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz p1, :cond_0

    .line 102
    if-eqz p2, :cond_0

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 107
    if-nez v0, :cond_2

    .line 108
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    .line 112
    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/Session$a;

    .line 114
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_4
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v1

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v2

    if-ne v1, v2, :cond_6

    .line 120
    :cond_5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_6
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/Session$a;->a(Lcom/baidu/mobstat/Session$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getPVJson(Lcom/baidu/mobstat/Session$a;J)Lorg/json/JSONObject;
    .registers 14

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 252
    :try_start_0
    const-string v4, "n"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v4, "d"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->c()J

    move-result-wide v8

    invoke-virtual {v6, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 255
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->d()J

    move-result-wide v4

    sub-long/2addr v4, p1

    .line 256
    cmp-long v7, v4, v2

    if-gez v7, :cond_1

    :goto_0
    const-string v4, "ps"

    invoke-virtual {v6, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    const-string v2, "t"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    const-string v3, "at"

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const-string v3, "ext"

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/Session$a;->d(Lcom/baidu/mobstat/Session$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    const-string v1, "h5"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string v0, "py"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_3
    return-object v6

    :cond_1
    move-wide v2, v4

    .line 256
    goto :goto_0

    :cond_2
    move v2, v1

    .line 259
    goto :goto_1

    :cond_3
    move v0, v1

    .line 266
    goto :goto_2

    .line 268
    :catch_0
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public addPageView(Lcom/baidu/mobstat/Session$a;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/Session;->a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V

    .line 90
    return-void
.end method

.method public addPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;ZLjava/lang/String;)V
    .registers 24

    .line 83
    new-instance v0, Lcom/baidu/mobstat/Session$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/baidu/mobstat/Session$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;ZLjava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/baidu/mobstat/Session;->a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V

    .line 86
    return-void
.end method

.method public constructJSONObject()Lorg/json/JSONObject;
    .registers 9

    const-wide/16 v6, 0x0

    .line 187
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 190
    :try_start_0
    const-string v0, "s"

    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    const-string v0, "e"

    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->b:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 192
    const-string v0, "i"

    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->e:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 194
    const-string v0, "c"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    :goto_0
    const-string v3, "s2"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    :goto_1
    const-string v3, "e2"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    const-string v0, "pc"

    iget v1, p0, Lcom/baidu/mobstat/Session;->f:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "launch"

    iget-object v1, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 205
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/Session$a;

    .line 207
    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-static {v0, v4, v5}, Lcom/baidu/mobstat/Session;->getPVJson(Lcom/baidu/mobstat/Session$a;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 208
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 195
    :cond_1
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    goto :goto_0

    .line 196
    :cond_2
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    goto :goto_1

    .line 211
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    const-string v0, "p"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_4
    const-string v0, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/DataCore;->getSessionPy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_3
    return-object v2

    .line 216
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public getPageSessionHead()Lorg/json/JSONObject;
    .registers 9

    const-wide/16 v6, 0x0

    .line 224
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 227
    :try_start_0
    const-string v0, "s"

    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 228
    const-string v0, "e"

    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->b:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 229
    const-string v0, "i"

    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->e:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 231
    const-string v0, "c"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    :goto_0
    const-string v3, "s2"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    :goto_1
    const-string v3, "e2"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 234
    const-string v0, "pc"

    iget v1, p0, Lcom/baidu/mobstat/Session;->f:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    const-string v0, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/DataCore;->getSessionPy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    :goto_2
    return-object v2

    .line 232
    :cond_0
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    goto :goto_0

    .line 233
    :cond_1
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    goto :goto_2
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
    .registers 5

    .line 167
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .registers 5

    .line 158
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 45
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

    .line 56
    return-void
.end method

.method public setEndTime(J)V
    .registers 4

    .line 176
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->b:J

    .line 177
    return-void
.end method

.method public setInvokeType(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/baidu/mobstat/Session;->f:I

    .line 79
    return-void
.end method

.method public setLaunchInfo(Lorg/json/JSONObject;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    .line 181
    return-void
.end method

.method public setStartTime(J)V
    .registers 8

    .line 140
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->a:J

    .line 145
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->e:J

    goto :goto_0
.end method

.method public setTrackEndTime(J)V
    .registers 4

    .line 74
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->d:J

    .line 75
    return-void
.end method

.method public setTrackStartTime(J)V
    .registers 8

    .line 59
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->c:J

    goto :goto_0
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
