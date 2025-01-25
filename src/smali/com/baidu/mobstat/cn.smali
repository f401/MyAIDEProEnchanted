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
    const/high16 v0, 0x42480000  # 50.0f

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
    .registers 6

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 42
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string p1, "sv"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_54

    .line 46
    const-string v1, "close"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    const-string v2, "area"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 50
    :goto_2e
    iput-boolean v1, p0, Lcom/baidu/mobstat/cn;->a:Z

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_53

    if-nez v1, :cond_42

    .line 54
    :try_start_36
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/baidu/mobstat/cn;->b:F
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_41

    goto :goto_42

    .line 72
    :catch_41
    move-exception v1

    .line 60
    :cond_42
    :goto_42
    :try_start_42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 62
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mobstat/cn;->c:J
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_52} :catch_53

    goto :goto_54

    .line 72
    :catch_53
    move-exception p1

    :cond_54
    :goto_54
    iput-boolean v0, p0, Lcom/baidu/mobstat/cn;->d:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/baidu/mobstat/cn;->a:Z

    return v0
.end method

.method public c()F
    .registers 5

    .line 80
    iget v0, p0, Lcom/baidu/mobstat/cn;->b:F

    const/high16 v1, 0x42c80000  # 100.0f

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_b

    const/4 v0, 0x0

    goto :goto_11

    :cond_b
    cmpl-float v2, v0, v1

    if-lez v2, :cond_11

    const/high16 v0, 0x42c80000  # 100.0f

    :cond_11
    :goto_11
    div-float/2addr v0, v1

    return v0
.end method

.method public d()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/baidu/mobstat/cn;->c:J

    return-wide v0
.end method
