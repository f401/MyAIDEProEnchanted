.class Lcom/baidu/mobstat/ap$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:[B

.field b:B

.field c:[B

.field d:Z

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>([BB[BZLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ap$e;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/mobstat/ap$e;->a:[B

    iput-byte p2, p0, Lcom/baidu/mobstat/ap$e;->b:B

    iput-object p3, p0, Lcom/baidu/mobstat/ap$e;->c:[B

    iput-boolean p4, p0, Lcom/baidu/mobstat/ap$e;->d:Z

    iput-object p5, p0, Lcom/baidu/mobstat/ap$e;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/ap$e;
    .registers 8

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v1

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    :goto_1
    new-instance v0, Lcom/baidu/mobstat/ap$e;

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v4

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/ap$e;-><init>([BB[BZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v3, v6

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/baidu/mobstat/bw$a;
    .registers 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ap$e;->a:[B

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/baidu/mobstat/bn;->a([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/baidu/mobstat/ap$e;->b:B

    aput-byte v5, v1, v4

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobstat/ap$e;->c:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/ap$e;->c:[B

    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    iget-boolean v4, p0, Lcom/baidu/mobstat/ap$e;->d:Z

    iget-object v5, p0, Lcom/baidu/mobstat/ap$e;->e:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4, v5}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/baidu/mobstat/bw$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
