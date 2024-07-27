.class Lcom/baidu/mobstat/ag;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Lcom/baidu/mobstat/ac;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    sput v0, Lcom/baidu/mobstat/ag;->a:I

    const/16 v0, 0x28

    sput v0, Lcom/baidu/mobstat/ag;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mobstat/ac;

    sget v1, Lcom/baidu/mobstat/ag;->b:I

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ac;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/ag;->c:Lcom/baidu/mobstat/ac;

    iget-object v0, p0, Lcom/baidu/mobstat/ag;->c:Lcom/baidu/mobstat/ac;

    const/4 v1, 0x0

    sget v2, Lcom/baidu/mobstat/ag;->b:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/ac;->a(IIZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/ac;III)V
    .registers 10

    iget-object v0, p0, Lcom/baidu/mobstat/ag;->c:Lcom/baidu/mobstat/ac;

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Lcom/baidu/mobstat/ac;->c(II)Lcom/baidu/mobstat/ac;

    move-result-object v1

    packed-switch p4, :pswitch_data_0

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/ac;->c(Lcom/baidu/mobstat/ac;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_0

    iget-object v2, p0, Lcom/baidu/mobstat/ag;->c:Lcom/baidu/mobstat/ac;

    add-int v3, p2, v0

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/ac;->c(I)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mobstat/ac;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/ac;->a(Lcom/baidu/mobstat/ac;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/ac;->c(Lcom/baidu/mobstat/ac;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/ac;->d(Lcom/baidu/mobstat/ac;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/ac;->b(Lcom/baidu/mobstat/ac;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/ag;->c:Lcom/baidu/mobstat/ac;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ac;->a()[B

    move-result-object v0

    return-object v0
.end method
