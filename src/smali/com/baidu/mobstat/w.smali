.class public Lcom/baidu/mobstat/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/w;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/w;->c:Lorg/json/JSONObject;

    .line 50
    const-wide/16 v0, 0x18

    iput-wide v0, p0, Lcom/baidu/mobstat/w;->d:J

    .line 52
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/mobstat/w;->e:J

    .line 54
    iput-wide v2, p0, Lcom/baidu/mobstat/w;->f:J

    .line 56
    iput-wide v2, p0, Lcom/baidu/mobstat/w;->g:J

    .line 58
    const-wide/16 v2, 0x5

    iput-wide v2, p0, Lcom/baidu/mobstat/w;->h:J

    .line 60
    iput-wide v0, p0, Lcom/baidu/mobstat/w;->i:J

    .line 62
    const-wide/16 v2, 0xf

    iput-wide v2, p0, Lcom/baidu/mobstat/w;->j:J

    .line 64
    iput-wide v2, p0, Lcom/baidu/mobstat/w;->k:J

    .line 66
    const-wide/16 v2, 0x1e

    iput-wide v2, p0, Lcom/baidu/mobstat/w;->l:J

    .line 68
    const-wide/16 v2, 0xc

    iput-wide v2, p0, Lcom/baidu/mobstat/w;->m:J

    .line 70
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/mobstat/w;->n:J

    .line 72
    iput-wide v0, p0, Lcom/baidu/mobstat/w;->o:J

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/w;->p:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/baidu/mobstat/w;->q:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/baidu/mobstat/w;->b:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/baidu/mobstat/w;->m()V

    .line 83
    invoke-virtual {p0}, Lcom/baidu/mobstat/w;->j()V

    .line 84
    invoke-virtual {p0}, Lcom/baidu/mobstat/w;->k()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/mobstat/w;
    .registers 2

    .line 35
    sget-object v0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/w;

    if-nez v0, :cond_1b

    .line 36
    const-class v0, Lcom/baidu/mobstat/w;

    monitor-enter v0

    .line 37
    :try_start_7
    sget-object v0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/w;

    if-nez v0, :cond_12

    .line 38
    new-instance v0, Lcom/baidu/mobstat/w;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/w;

    .line 40
    :cond_12
    const-class p0, Lcom/baidu/mobstat/w;

    monitor-exit p0

    goto :goto_1b

    :catchall_16
    move-exception p0

    const-class v0, Lcom/baidu/mobstat/w;

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_16

    throw p0

    .line 43
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/baidu/mobstat/w;->a:Lcom/baidu/mobstat/w;

    return-object p0
.end method

.method private b(J)J
    .registers 8

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    move-wide p1, v2

    :cond_d
    return-wide p1
.end method

.method private m()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/baidu/mobstat/w;->b:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/y;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :try_start_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/mobstat/w;->c:Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v0

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/g;)J
    .registers 5

    .line 353
    iget-wide v0, p1, Lcom/baidu/mobstat/g;->j:J

    .line 356
    :try_start_2
    invoke-virtual {p1}, Lcom/baidu/mobstat/g;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    iget-object v2, p0, Lcom/baidu/mobstat/w;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 358
    iget-object v2, p0, Lcom/baidu/mobstat/w;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p1

    .line 362
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 365
    :cond_1d
    :goto_1d
    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/w;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/baidu/mobstat/g;J)V
    .registers 5

    .line 369
    iput-wide p2, p1, Lcom/baidu/mobstat/g;->j:J

    .line 373
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/w;->c:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/baidu/mobstat/g;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p1

    .line 375
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 380
    :goto_14
    :try_start_14
    iget-object p1, p0, Lcom/baidu/mobstat/w;->b:Landroid/content/Context;

    sget-object p2, Lcom/baidu/mobstat/y;->d:Ljava/lang/String;

    iget-object p3, p0, Lcom/baidu/mobstat/w;->c:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception p1

    .line 382
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    :goto_2b
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/baidu/mobstat/w;->b:Landroid/content/Context;

    const-string v1, ".config2"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 335
    invoke-virtual {p0}, Lcom/baidu/mobstat/w;->j()V

    return-void
.end method

.method public a()Z
    .registers 6

    .line 113
    iget-wide v0, p0, Lcom/baidu/mobstat/w;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public a(J)Z
    .registers 6

    .line 396
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 400
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .line 339
    iget-object v0, p0, Lcom/baidu/mobstat/w;->b:Landroid/content/Context;

    const-string v1, ".sign"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 341
    invoke-virtual {p0}, Lcom/baidu/mobstat/w;->k()V

    return-void
.end method

.method public b()Z
    .registers 6

    .line 131
    iget-wide v0, p0, Lcom/baidu/mobstat/w;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public c()J
    .registers 5

    .line 140
    iget-wide v0, p0, Lcom/baidu/mobstat/w;->d:J

    const-wide/32 v2, 0x36ee80

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public d()J
    .registers 5

    .line 149
    iget-wide v0, p0, Lcom/baidu/mobstat/w;->o:J

    const-wide/32 v2, 0x36ee80

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public e()J
    .registers 5

    .line 158
    iget-wide v0, p0, Lcom/baidu/mobstat/w;->h:J

    const-wide/32 v2, 0xea60

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public f()J
    .registers 5

    .line 167
    iget-wide v0, p0, Lcom/baidu/mobstat/w;->i:J

    const-wide/32 v2, 0x36ee80

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public g()J
    .registers 5

    .line 176
    iget-wide v0, p0, Lcom/baidu/mobstat/w;->j:J

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public h()J
    .registers 5

    .line 185
    iget-wide v0, p0, Lcom/baidu/mobstat/w;->k:J

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public i()J
    .registers 5

    .line 212
    iget-wide v0, p0, Lcom/baidu/mobstat/w;->m:J

    const-wide/32 v2, 0x36ee80

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public j()V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/baidu/mobstat/w;->b:Landroid/content/Context;

    const-string v1, ".config2"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :try_start_8
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/dm;->a()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v2, v0}, Lcom/baidu/mobstat/dr;->b(Z[B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    .line 225
    :cond_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_f7

    .line 227
    :try_start_2a
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->e:J
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_32} :catch_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_f7

    goto :goto_3b

    :catch_33
    move-exception v1

    .line 229
    :try_start_34
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_f7

    .line 233
    :goto_3b
    :try_start_3b
    const-string v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->h:J
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_43} :catch_44
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_f7

    goto :goto_4c

    :catch_44
    move-exception v1

    .line 235
    :try_start_45
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_f7

    .line 239
    :goto_4c
    :try_start_4c
    const-string v1, "e"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->i:J
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_54} :catch_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_54} :catch_f7

    goto :goto_5d

    :catch_55
    move-exception v1

    .line 241
    :try_start_56
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5d} :catch_f7

    .line 245
    :goto_5d
    :try_start_5d
    const-string v1, "i"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->j:J
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_65} :catch_66
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_65} :catch_f7

    goto :goto_6e

    :catch_66
    move-exception v1

    .line 247
    :try_start_67
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_f7

    .line 251
    :goto_6e
    :try_start_6e
    const-string v1, "f"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->d:J
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_76} :catch_77
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_76} :catch_f7

    goto :goto_7f

    :catch_77
    move-exception v1

    .line 253
    :try_start_78
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_f7

    .line 257
    :goto_7f
    :try_start_7f
    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->o:J
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_87} :catch_88
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_87} :catch_f7

    goto :goto_90

    :catch_88
    move-exception v1

    .line 259
    :try_start_89
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_90} :catch_f7

    .line 263
    :goto_90
    :try_start_90
    const-string v1, "pk"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->k:J
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_98} :catch_99
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_98} :catch_f7

    goto :goto_a1

    :catch_99
    move-exception v1

    .line 265
    :try_start_9a
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a1} :catch_f7

    .line 269
    :goto_a1
    :try_start_a1
    const-string v1, "at"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->l:J
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_a1 .. :try_end_a9} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a9} :catch_f7

    goto :goto_b2

    :catch_aa
    move-exception v1

    .line 271
    :try_start_ab
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b2} :catch_f7

    .line 275
    :goto_b2
    :try_start_b2
    const-string v1, "as"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->m:J
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_ba} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ba} :catch_f7

    goto :goto_c3

    :catch_bb
    move-exception v1

    .line 277
    :try_start_bc
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c3} :catch_f7

    .line 281
    :goto_c3
    :try_start_c3
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->n:J
    :try_end_cb
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_cb} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_cb} :catch_f7

    goto :goto_d4

    :catch_cc
    move-exception v1

    .line 283
    :try_start_cd
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d4} :catch_f7

    .line 287
    :goto_d4
    :try_start_d4
    const-string v1, "mc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/w;->f:J
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_d4 .. :try_end_dc} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_dc} :catch_f7

    goto :goto_e5

    :catch_dd
    move-exception v1

    .line 289
    :try_start_de
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e5} :catch_f7

    .line 293
    :goto_e5
    :try_start_e5
    const-string v1, "lsc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/w;->g:J
    :try_end_ed
    .catch Lorg/json/JSONException; {:try_start_e5 .. :try_end_ed} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ed} :catch_f7

    goto :goto_ff

    :catch_ee
    move-exception v0

    .line 295
    :try_start_ef
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f6} :catch_f7

    goto :goto_ff

    :catch_f7
    move-exception v0

    .line 299
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    :goto_ff
    return-void
.end method

.method public k()V
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/baidu/mobstat/w;->b:Landroid/content/Context;

    const-string v1, ".sign"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :try_start_8
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/dm;->a()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/dk;->a([B)[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v2, v0}, Lcom/baidu/mobstat/dr;->b(Z[B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 309
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    .line 313
    :cond_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_4d

    .line 316
    :try_start_2a
    const-string v1, "sign"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/w;->q:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_3b

    :catch_33
    move-exception v1

    .line 318
    :try_start_34
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_4d

    .line 322
    :goto_3b
    :try_start_3b
    const-string v1, "ver"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/w;->p:Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_55

    :catch_44
    move-exception v0

    .line 324
    :try_start_45
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4d

    goto :goto_55

    :catch_4d
    move-exception v0

    .line 328
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    :goto_55
    return-void
.end method

.method public l()Z
    .registers 10

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 388
    sget-object v2, Lcom/baidu/mobstat/g;->h:Lcom/baidu/mobstat/g;

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/w;->a(Lcom/baidu/mobstat/g;)J

    move-result-wide v2

    .line 389
    invoke-virtual {p0}, Lcom/baidu/mobstat/w;->d()J

    move-result-wide v4

    .line 390
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "canSend now="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ";lastSendTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ";sendLogTimeInterval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    sub-long/2addr v0, v2

    cmp-long v6, v0, v4

    if-gtz v6, :cond_41

    .line 392
    invoke-virtual {p0, v2, v3}, Lcom/baidu/mobstat/w;->a(J)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v0, 0x1

    :goto_42
    return v0
.end method
