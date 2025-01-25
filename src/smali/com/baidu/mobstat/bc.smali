.class public Lcom/baidu/mobstat/bc;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/mobstat/bb;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mobstat/bb;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/bb;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/bc;->a:Lcom/baidu/mobstat/bb;

    return-void
.end method


# virtual methods
.method public a([B)[B
    .registers 3

    iget-object v0, p0, Lcom/baidu/mobstat/bc;->a:Lcom/baidu/mobstat/bb;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bb;->a([B)[B

    move-result-object p1

    return-object p1
.end method

.method public b([B)[B
    .registers 3

    iget-object v0, p0, Lcom/baidu/mobstat/bc;->a:Lcom/baidu/mobstat/bb;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bb;->b([B)[B

    move-result-object p1

    return-object p1
.end method
