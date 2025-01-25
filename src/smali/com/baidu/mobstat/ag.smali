.class Lcom/baidu/mobstat/ag;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x5

.field public static b:I = 0x28


# instance fields
.field private c:Lcom/baidu/mobstat/ac;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mobstat/ac;

    sget v1, Lcom/baidu/mobstat/ag;->b:I

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ac;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/ag;->c:Lcom/baidu/mobstat/ac;

    sget v1, Lcom/baidu/mobstat/ag;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/baidu/mobstat/ac;->a(IIZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/ac;III)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/mobstat/ag;->c:Lcom/baidu/mobstat/ac;

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Lcom/baidu/mobstat/ac;->c(II)Lcom/baidu/mobstat/ac;

    move-result-object v0

    if-eqz p4, :cond_20

    const/4 v1, 0x1

    if-eq p4, v1, :cond_1c

    const/4 v1, 0x2

    if-eq p4, v1, :cond_18

    const/4 v1, 0x3

    if-eq p4, v1, :cond_14

    goto :goto_1c

    :cond_14
    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ac;->b(Lcom/baidu/mobstat/ac;)V

    goto :goto_23

    :cond_18
    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ac;->d(Lcom/baidu/mobstat/ac;)V

    goto :goto_23

    :cond_1c
    :goto_1c
    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ac;->c(Lcom/baidu/mobstat/ac;)V

    goto :goto_23

    :cond_20
    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ac;->a(Lcom/baidu/mobstat/ac;)V

    :goto_23
    const/4 p1, 0x0

    :goto_24
    if-ge p1, p3, :cond_34

    iget-object p4, p0, Lcom/baidu/mobstat/ag;->c:Lcom/baidu/mobstat/ac;

    add-int v1, p2, p1

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ac;->c(I)Z

    move-result v2

    invoke-virtual {p4, v1, v2}, Lcom/baidu/mobstat/ac;->a(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_34
    return-void
.end method

.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/ag;->c:Lcom/baidu/mobstat/ac;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ac;->a()[B

    move-result-object v0

    return-object v0
.end method
