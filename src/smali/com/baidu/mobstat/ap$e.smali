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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/ap$e;->a:[B

    iput-byte p2, p0, Lcom/baidu/mobstat/ap$e;->b:B

    iput-object p3, p0, Lcom/baidu/mobstat/ap$e;->c:[B

    iput-boolean p4, p0, Lcom/baidu/mobstat/ap$e;->d:Z

    iput-object p5, p0, Lcom/baidu/mobstat/ap$e;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/ap$e;
    .registers 10

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/ap;->a(Ljava/lang/String;)[B

    move-result-object v4

    array-length v2, v4

    const/16 v3, 0x10

    if-le v2, v3, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v5, v2, v3

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v6, v0

    goto :goto_2d

    :cond_2c
    move-object v6, v1

    :goto_2d
    new-instance v0, Lcom/baidu/mobstat/ap$e;

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v7

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/baidu/mobstat/ap$e;-><init>([BB[BZLjava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3b} :catch_3c

    return-object v0

    :catch_3c
    move-exception p0

    return-object v1
.end method


# virtual methods
.method public a()Lcom/baidu/mobstat/bw$a;
    .registers 8

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/baidu/mobstat/ap$e;->a:[B

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/baidu/mobstat/bn;->a([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    new-array v4, v4, [B

    iget-byte v5, p0, Lcom/baidu/mobstat/ap$e;->b:B

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/mobstat/ap$e;->c:[B

    if-eqz v4, :cond_22

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_23

    :cond_22
    move-object v5, v1

    :goto_23
    iget-boolean v0, p0, Lcom/baidu/mobstat/ap$e;->d:Z

    iget-object v4, p0, Lcom/baidu/mobstat/ap$e;->e:Ljava/lang/String;

    invoke-static {v2, v3, v5, v0, v4}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2c

    return-object v0

    :catch_2c
    move-exception v0

    return-object v1
.end method
