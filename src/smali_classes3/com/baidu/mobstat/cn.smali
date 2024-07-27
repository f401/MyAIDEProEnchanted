.class public Lcom/baidu/mobstat/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Lcom/baidu/mobstat/cn;


# instance fields
.field private a:Z

.field private b:F

.field private c:J

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/baidu/mobstat/cn;

    invoke-direct {v0}, Lcom/baidu/mobstat/cn;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/cn;->e:Lcom/baidu/mobstat/cn;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/cn;->a:Z

    .line 15
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/baidu/mobstat/cn;->b:F

    .line 17
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/baidu/mobstat/cn;->c:J

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/cn;
    .registers 1

    .line 24
    sget-object v0, Lcom/baidu/mobstat/cn;->e:Lcom/baidu/mobstat/cn;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v2, "sv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 45
    if-eqz v0, :cond_2

    .line 46
    const-string v2, "close"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 47
    const-string v3, "area"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    if-eqz v2, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/baidu/mobstat/cn;->a:Z

    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :try_start_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/cn;->b:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :cond_1
    :goto_2
    :try_start_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-nez v0, :cond_2

    .line 62
    :try_start_3
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/mobstat/cn;->c:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 72
    :cond_2
    :goto_3
    iput-boolean v1, p0, Lcom/baidu/mobstat/cn;->d:Z

    goto :goto_0

    .line 50
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    goto :goto_2

    .line 63
    :catch_1
    move-exception v0

    goto :goto_3

    .line 68
    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public b()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/baidu/mobstat/cn;->a:Z

    return v0
.end method

.method public c()F
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 80
    iget v2, p0, Lcom/baidu/mobstat/cn;->b:F

    .line 81
    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    .line 87
    :goto_0
    div-float/2addr v0, v1

    return v0

    .line 83
    :cond_0
    cmpl-float v0, v2, v1

    if-lez v0, :cond_1

    move v0, v1

    .line 84
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public d()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/baidu/mobstat/cn;->c:J

    return-wide v0
.end method
