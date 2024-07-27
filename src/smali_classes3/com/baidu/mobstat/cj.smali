.class public Lcom/baidu/mobstat/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFFLjava/lang/String;ZLjava/lang/String;)V
    .registers 15

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/baidu/mobstat/cj;->a:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/baidu/mobstat/cj;->b:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/baidu/mobstat/cj;->c:Ljava/lang/String;

    .line 50
    iput-wide p4, p0, Lcom/baidu/mobstat/cj;->d:J

    .line 51
    iput-wide p6, p0, Lcom/baidu/mobstat/cj;->e:J

    .line 52
    iput p8, p0, Lcom/baidu/mobstat/cj;->f:F

    .line 53
    iput p9, p0, Lcom/baidu/mobstat/cj;->g:F

    .line 54
    iput p10, p0, Lcom/baidu/mobstat/cj;->h:F

    .line 55
    iput p11, p0, Lcom/baidu/mobstat/cj;->i:F

    .line 57
    iput-object p12, p0, Lcom/baidu/mobstat/cj;->j:Ljava/lang/String;

    .line 58
    iput-boolean p13, p0, Lcom/baidu/mobstat/cj;->k:Z

    .line 60
    iput-object p14, p0, Lcom/baidu/mobstat/cj;->l:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/baidu/mobstat/cj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 14

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/baidu/mobstat/cj;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return-object v0

    .line 80
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    :try_start_0
    const-string v4, "n"

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v4, "t"

    iget-object v5, p0, Lcom/baidu/mobstat/cj;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v4, "d"

    iget-wide v6, p0, Lcom/baidu/mobstat/cj;->d:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    iget-wide v4, p0, Lcom/baidu/mobstat/cj;->e:J

    sub-long/2addr v4, p1

    .line 92
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    move-wide v2, v4

    .line 93
    :cond_1
    const-string v4, "ps"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    const-string v2, "at"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v3}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 100
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 101
    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 103
    const-string v3, "xc"

    iget v4, p0, Lcom/baidu/mobstat/cj;->f:F

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v3, "yc"

    iget v4, p0, Lcom/baidu/mobstat/cj;->g:F

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v3, "xt"

    iget v4, p0, Lcom/baidu/mobstat/cj;->h:F

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v3, "yt"

    iget v4, p0, Lcom/baidu/mobstat/cj;->i:F

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v2, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/DataCore;->getPagePy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v2, "h5"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v2, "sign"

    iget-object v3, p0, Lcom/baidu/mobstat/cj;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/baidu/mobstat/cj;->j:Ljava/lang/String;

    return-object v0
.end method
