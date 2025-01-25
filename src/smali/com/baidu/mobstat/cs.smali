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
    .registers 5

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 37
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    const-string p1, "full"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    .line 43
    const-string v2, "close"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-eqz p1, :cond_23

    const/4 v1, 0x1

    .line 46
    :cond_23
    iput-boolean v1, p0, Lcom/baidu/mobstat/cs;->a:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_26

    goto :goto_27

    .line 51
    :catch_26
    move-exception p1

    :goto_27
    iput-boolean v0, p0, Lcom/baidu/mobstat/cs;->b:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/baidu/mobstat/cs;->a:Z

    return v0
.end method
