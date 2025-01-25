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
    .registers 8

    .line 76
    iget-object p4, p0, Lcom/baidu/mobstat/cj;->l:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_a

    return-object v0

    .line 80
    :cond_a
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 83
    :try_start_f
    const-string v1, "n"

    invoke-virtual {p4, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string p3, "t"

    iget-object v1, p0, Lcom/baidu/mobstat/cj;->b:Ljava/lang/String;

    invoke-virtual {p4, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string p3, "d"

    iget-wide v1, p0, Lcom/baidu/mobstat/cj;->d:J

    invoke-virtual {p4, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    iget-wide v1, p0, Lcom/baidu/mobstat/cj;->e:J

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x0

    cmp-long p3, v1, p1

    if-lez p3, :cond_2c

    goto :goto_2d

    :cond_2c
    move-wide v1, p1

    .line 93
    :goto_2d
    const-string p1, "ps"

    invoke-virtual {p4, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    const-string p1, "at"

    const/4 p2, 0x1

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "0.0"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance p2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {p2}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 100
    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 101
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 103
    const-string p2, "xc"

    iget p3, p0, Lcom/baidu/mobstat/cj;->f:F

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string p2, "yc"

    iget p3, p0, Lcom/baidu/mobstat/cj;->g:F

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string p2, "xt"

    iget p3, p0, Lcom/baidu/mobstat/cj;->h:F

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string p2, "yt"

    iget p3, p0, Lcom/baidu/mobstat/cj;->i:F

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string p1, "py"

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/DataCore;->getPagePy()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string p1, "h5"

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string p1, "sign"

    iget-object p2, p0, Lcom/baidu/mobstat/cj;->l:Ljava/lang/String;

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_96} :catch_98

    move-object v0, p4

    goto :goto_99

    :catch_98
    move-exception p1

    :goto_99
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/baidu/mobstat/cj;->j:Ljava/lang/String;

    return-object v0
.end method
