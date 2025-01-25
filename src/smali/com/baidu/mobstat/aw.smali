.class abstract Lcom/baidu/mobstat/aw;
.super Ljava/lang/Object;


# instance fields
.field final b:Lcom/baidu/mobstat/as;

.field final c:I

.field d:[B


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/as;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/aw;->b:Lcom/baidu/mobstat/as;

    invoke-virtual {p1}, Lcom/baidu/mobstat/as;->a()I

    move-result p1

    iput p1, p0, Lcom/baidu/mobstat/aw;->c:I

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(ZLjava/lang/String;[B[B)V
.end method

.method abstract a([BII[BI)V
.end method

.method abstract b()V
.end method

.method abstract b([BII[BI)V
.end method

.method abstract c()V
.end method

.method c([BII[BI)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/baidu/mobstat/aw;->a([BII[BI)V

    return-void
.end method

.method d([BII[BI)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/baidu/mobstat/aw;->b([BII[BI)V

    return-void
.end method
