.class public Lcom/baidu/mobstat/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJZ)V
    .registers 9

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/baidu/mobstat/ck;->a:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/baidu/mobstat/ck;->b:J

    .line 18
    iput-wide p4, p0, Lcom/baidu/mobstat/ck;->c:J

    .line 19
    iput-wide p6, p0, Lcom/baidu/mobstat/ck;->e:J

    .line 20
    iput-boolean p8, p0, Lcom/baidu/mobstat/ck;->d:Z

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/baidu/mobstat/ck;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    :try_start_0
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v1, "s"

    iget-wide v2, p0, Lcom/baidu/mobstat/ck;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    const-string v1, "e"

    iget-wide v2, p0, Lcom/baidu/mobstat/ck;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    iget-boolean v1, p0, Lcom/baidu/mobstat/ck;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    return-object v0

    .line 69
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(J)V
    .registers 4

    .line 32
    iput-wide p1, p0, Lcom/baidu/mobstat/ck;->c:J

    .line 33
    return-void
.end method

.method public b()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/baidu/mobstat/ck;->b:J

    return-wide v0
.end method

.method public b(J)V
    .registers 4

    .line 60
    iput-wide p1, p0, Lcom/baidu/mobstat/ck;->e:J

    .line 61
    return-void
.end method

.method public c()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/baidu/mobstat/ck;->c:J

    return-wide v0
.end method

.method public d()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/baidu/mobstat/ck;->d:Z

    return v0
.end method

.method public e()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/baidu/mobstat/ck;->e:J

    return-wide v0
.end method
