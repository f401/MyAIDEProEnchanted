.class public Lcom/baidu/mobstat/cs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/baidu/mobstat/cs;


# instance fields
.field private a:Z

.field private volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/baidu/mobstat/cs;

    invoke-direct {v0}, Lcom/baidu/mobstat/cs;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/cs;->c:Lcom/baidu/mobstat/cs;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/cs;->a:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/cs;
    .registers 1

    .line 19
    sget-object v0, Lcom/baidu/mobstat/cs;->c:Lcom/baidu/mobstat/cs;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 37
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v3, "full"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 42
    if-eqz v0, :cond_2

    .line 43
    const-string v3, "close"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 46
    :goto_1
    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/baidu/mobstat/cs;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_3
    iput-boolean v1, p0, Lcom/baidu/mobstat/cs;->b:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 46
    goto :goto_2

    :cond_2
    move v0, v2

    .line 47
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public b()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/baidu/mobstat/cs;->a:Z

    return v0
.end method
