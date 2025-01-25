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
    .registers 22

    .line 34
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v1, p1

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->a:Ljava/lang/String;

    .line 36
    move-object v1, p2

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->b:Ljava/lang/String;

    .line 37
    move-object v1, p3

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->c:Lorg/json/JSONArray;

    .line 38
    move-object v1, p4

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->d:Ljava/lang/String;

    .line 39
    move-object v1, p6

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->e:Ljava/lang/String;

    .line 40
    move-object v1, p7

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->f:Ljava/lang/String;

    .line 41
    move v1, p8

    iput-boolean v1, v0, Lcom/baidu/mobstat/cl;->g:Z

    .line 42
    move v1, p9

    iput v1, v0, Lcom/baidu/mobstat/cl;->k:I

    .line 43
    move-wide v1, p10

    iput-wide v1, v0, Lcom/baidu/mobstat/cl;->h:J

    .line 44
    move-wide v1, p12

    iput-wide v1, v0, Lcom/baidu/mobstat/cl;->i:J

    .line 45
    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/baidu/mobstat/cl;->j:J

    .line 46
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->l:Ljava/lang/String;

    .line 47
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->m:Ljava/lang/String;

    .line 48
    move-object v1, p5

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->n:Ljava/lang/String;

    .line 49
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/baidu/mobstat/cl;->o:Lorg/json/JSONArray;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    .line 197
    const-string v0, ""

    .line 199
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 200
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string p0, "p"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string p0, "path"

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string p0, "title"

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string p0, "index"

    invoke-virtual {v1, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string p0, "n"

    invoke-virtual {v1, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string p0, "user"

    invoke-virtual {v1, p0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    goto :goto_31

    :catch_2f
    move-exception p0

    move-object p0, v0

    .line 215
    :goto_31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    .line 161
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mobstat/cl;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/cl;->c:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/cl;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/cl;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/mobstat/cl;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/baidu/mobstat/cl;->g:Z

    invoke-static/range {v0 .. v6}, Lcom/baidu/mobstat/cl;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    return-object v2

    .line 167
    :cond_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 170
    :try_start_1f
    const-string v3, "id"

    iget-object v4, p0, Lcom/baidu/mobstat/cl;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v3, "d"

    iget-object v4, p0, Lcom/baidu/mobstat/cl;->l:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v3, "p"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string p1, "path"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    iget-object p1, p0, Lcom/baidu/mobstat/cl;->o:Lorg/json/JSONArray;

    if-eqz p1, :cond_45

    .line 175
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_42

    goto :goto_45

    :cond_42
    iget-object p1, p0, Lcom/baidu/mobstat/cl;->o:Lorg/json/JSONArray;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_44} :catch_89

    goto :goto_47

    :cond_45
    :goto_45
    const-string p1, ""

    .line 174
    :goto_47
    :try_start_47
    const-string p3, "v5"

    invoke-virtual {v1, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string p1, "title"

    iget-object p3, p0, Lcom/baidu/mobstat/cl;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string p1, "content"

    iget-object p3, p0, Lcom/baidu/mobstat/cl;->n:Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string p1, "index"

    iget-object p3, p0, Lcom/baidu/mobstat/cl;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string p1, "n"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string p1, "user"

    iget-boolean p2, p0, Lcom/baidu/mobstat/cl;->g:Z

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string p1, "c"

    iget p2, p0, Lcom/baidu/mobstat/cl;->k:I

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string p1, "t"

    iget-wide p2, p0, Lcom/baidu/mobstat/cl;->h:J

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 184
    const-string p1, "ps"

    iget-object p2, p0, Lcom/baidu/mobstat/cl;->m:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string p1, "sign"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_87} :catch_89

    move-object v2, v1

    goto :goto_8a

    :catch_89
    move-exception p1

    :goto_8a
    return-object v2
.end method

.method public a(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/baidu/mobstat/cl;->k:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 133
    iput-wide p1, p0, Lcom/baidu/mobstat/cl;->i:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/baidu/mobstat/cl;->l:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/baidu/mobstat/cl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .registers 3

    .line 137
    iput-wide p1, p0, Lcom/baidu/mobstat/cl;->j:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/baidu/mobstat/cl;->m:Ljava/lang/String;

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
