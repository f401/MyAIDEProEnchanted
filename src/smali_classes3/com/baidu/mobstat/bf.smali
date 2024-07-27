.class public Lcom/baidu/mobstat/bf;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/mobstat/bh;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/bf;
    .registers 3

    new-instance v0, Lcom/baidu/mobstat/bf;

    invoke-direct {v0}, Lcom/baidu/mobstat/bf;-><init>()V

    new-instance v1, Lcom/baidu/mobstat/bh;

    invoke-direct {v1}, Lcom/baidu/mobstat/bh;-><init>()V

    iput-object v1, v0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/bh;

    iget-object v1, v0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/bh;

    const-string v2, "PKCS1Padding"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/bh;->a(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(ILcom/baidu/mobstat/bi;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/bh;

    sget-object v1, Lcom/baidu/mobstat/bg;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/mobstat/bh;->a(ILcom/baidu/mobstat/bi;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final a([B)[B
    .registers 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bf;->a:Lcom/baidu/mobstat/bh;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/mobstat/bh;->a([BII)[B

    move-result-object v0

    return-object v0
.end method
