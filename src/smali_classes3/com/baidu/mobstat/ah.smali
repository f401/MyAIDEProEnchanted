.class abstract Lcom/baidu/mobstat/ah;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/ah;->d:I

    return v0
.end method

.method public abstract a([BII)Lcom/baidu/mobstat/ac;
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/ah;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/ah;->e:I

    return v0
.end method
