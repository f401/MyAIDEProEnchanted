.class public Lcom/baidu/mobstat/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONArray;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJJJLjava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 23

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/baidu/mobstat/cl;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/baidu/mobstat/cl;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/baidu/mobstat/cl;->c:Lorg/json/JSONArray;

    .line 38
    iput-object p4, p0, Lcom/baidu/mobstat/cl;->d:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/baidu/mobstat/cl;->e:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/baidu/mobstat/cl;->f:Ljava/lang/String;

    .line 41
    iput-boolean p8, p0, Lcom/baidu/mobstat/cl;->g:Z

    .line 42
    iput p9, p0, Lcom/baidu/mobstat/cl;->k:I

    .line 43
    iput-wide p10, p0, Lcom/baidu/mobstat/cl;->h:J

    .line 44
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/baidu/mobstat/cl;->i:J

    .line 45
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/baidu/mobstat/cl;->j:J

    .line 46
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/baidu/mobstat/cl;->l:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/baidu/mobstat/cl;->m:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/baidu/mobstat/cl;->n:Ljava/lang/String;

    .line 49
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/baidu/mobstat/cl;->o:Lorg/json/JSONArray;

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    .line 197
    const-string v0, ""

    .line 199
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 200
    const-string v1, "id"

    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v1, "p"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v1, "path"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v1, "title"

    invoke-virtual {v2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v1, "index"

    invoke-virtual {v2, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v1, "n"

    invoke-virtual {v2, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v3, "user"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_2
    return-object v0

    .line 207
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    :cond_1
    const-string v0, ""

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 12

    const/4 v7, 0x0

    .line 161
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mobstat/cl;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/cl;->c:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/cl;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/cl;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/mobstat/cl;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/baidu/mobstat/cl;->g:Z

    invoke-static/range {v0 .. v6}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 191
    :goto_0
    return-object v0

    .line 167
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    :try_start_0
    const-string v1, "id"

    iget-object v3, p0, Lcom/baidu/mobstat/cl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v1, "d"

    iget-object v3, p0, Lcom/baidu/mobstat/cl;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "path"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    iget-object v1, p0, Lcom/baidu/mobstat/cl;->o:Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mobstat/cl;->o:Lorg/json/JSONArray;

    .line 175
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, ""

    .line 174
    :goto_1
    :try_start_1
    const-string v3, "v5"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v1, "title"

    iget-object v3, p0, Lcom/baidu/mobstat/cl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v1, "content"

    iget-object v3, p0, Lcom/baidu/mobstat/cl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v1, "index"

    iget-object v3, p0, Lcom/baidu/mobstat/cl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v1, "n"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-boolean v1, p0, Lcom/baidu/mobstat/cl;->g:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    const-string v3, "user"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v1, "c"

    iget v3, p0, Lcom/baidu/mobstat/cl;->k:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v1, "t"

    iget-wide v4, p0, Lcom/baidu/mobstat/cl;->h:J

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 184
    const-string v1, "ps"

    iget-object v3, p0, Lcom/baidu/mobstat/cl;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v1, "sign"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 188
    goto :goto_0

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/baidu/mobstat/cl;->o:Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 181
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public a(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/baidu/mobstat/cl;->k:I

    .line 118
    return-void
.end method

.method public a(J)V
    .registers 4

    .line 133
    iput-wide p1, p0, Lcom/baidu/mobstat/cl;->i:J

    .line 134
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/baidu/mobstat/cl;->l:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .registers 4

    .line 137
    iput-wide p1, p0, Lcom/baidu/mobstat/cl;->j:J

    .line 138
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/baidu/mobstat/cl;->m:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public c()Lorg/json/JSONArray;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lcom/baidu/mobstat/cl;->g:Z

    return v0
.end method

.method public h()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/baidu/mobstat/cl;->k:I

    return v0
.end method

.method public i()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/baidu/mobstat/cl;->h:J

    return-wide v0
.end method

.method public j()J
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/baidu/mobstat/cl;->i:J

    return-wide v0
.end method

.method public k()J
    .registers 3

    .line 129
    iget-wide v0, p0, Lcom/baidu/mobstat/cl;->j:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->l:Ljava/lang/String;

    return-object v0
.end method
