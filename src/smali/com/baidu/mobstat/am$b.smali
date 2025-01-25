.class public abstract Lcom/baidu/mobstat/am$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/baidu/mobstat/bq$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/bq$a;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/am$b;->d:Z

    iput-object p1, p0, Lcom/baidu/mobstat/am$b;->a:Lcom/baidu/mobstat/bq$a;

    iput-object p2, p0, Lcom/baidu/mobstat/am$b;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "target-pkg-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/am$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)V
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mobstat/am$b;->d:Z

    return-void
.end method

.method public a()Z
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/am$b;->a:Lcom/baidu/mobstat/bq$a;

    iget-object v1, p0, Lcom/baidu/mobstat/am$b;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1d

    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/am$b;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v3}, Lcom/baidu/mobstat/am$b;->a(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1c

    return v2

    :catch_1c
    move-exception v0

    :cond_1d
    return v3
.end method

.method public abstract b(Lorg/json/JSONObject;)V
.end method

.method public b()Z
    .registers 6

    iget-boolean v0, p0, Lcom/baidu/mobstat/am$b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/am$b;->b(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/baidu/mobstat/am$b;->a:Lcom/baidu/mobstat/bq$a;

    iget-object v3, p0, Lcom/baidu/mobstat/am$b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/am$b;->a(Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    return v4

    :catch_1d
    move-exception v0

    :cond_1e
    return v1
.end method
