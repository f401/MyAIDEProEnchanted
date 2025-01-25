.class public Lcom/baidu/mobstat/at;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/security/SecureRandom;


# instance fields
.field private b:Lcom/baidu/mobstat/av;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/at;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/at;->b:Lcom/baidu/mobstat/av;

    new-instance v0, Lcom/baidu/mobstat/av;

    new-instance v1, Lcom/baidu/mobstat/as;

    invoke-direct {v1}, Lcom/baidu/mobstat/as;-><init>()V

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/av;-><init>(Lcom/baidu/mobstat/as;I)V

    iput-object v0, p0, Lcom/baidu/mobstat/at;->b:Lcom/baidu/mobstat/av;

    return-void
.end method

.method public static a([B[B[B)[B
    .registers 5

    new-instance v0, Lcom/baidu/mobstat/at;

    invoke-direct {v0}, Lcom/baidu/mobstat/at;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/baidu/mobstat/at;->a(I[B[B)V

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/at;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B[B[B)[B
    .registers 5

    new-instance v0, Lcom/baidu/mobstat/at;

    invoke-direct {v0}, Lcom/baidu/mobstat/at;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1}, Lcom/baidu/mobstat/at;->a(I[B[B)V

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/at;->a([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I[B[B)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mobstat/at;->b:Lcom/baidu/mobstat/av;

    sget-object v1, Lcom/baidu/mobstat/at;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/baidu/mobstat/av;->a(I[B[BLjava/security/SecureRandom;)V

    return-void
.end method

.method public final a([B)[B
    .registers 5

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/baidu/mobstat/at;->b:Lcom/baidu/mobstat/av;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/mobstat/av;->a([BII)[B

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null input buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
