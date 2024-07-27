.class public Lcom/baidu/mobstat/am$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Lcom/baidu/mobstat/bw$a;

.field public b:I

.field public c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(ILcom/baidu/mobstat/bw$a;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mobstat/am$g;->b:I

    iput-object p2, p0, Lcom/baidu/mobstat/am$g;->a:Lcom/baidu/mobstat/bw$a;

    iput-object p3, p0, Lcom/baidu/mobstat/am$g;->c:Ljava/lang/Exception;

    return-void
.end method

.method public static a(I)Lcom/baidu/mobstat/am$g;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/baidu/mobstat/am$g;

    invoke-direct {v0, p0, v1, v1}, Lcom/baidu/mobstat/am$g;-><init>(ILcom/baidu/mobstat/bw$a;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$g;
    .registers 4

    new-instance v0, Lcom/baidu/mobstat/am$g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/baidu/mobstat/am$g;-><init>(ILcom/baidu/mobstat/bw$a;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static b()Lcom/baidu/mobstat/am$g;
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mobstat/am$g;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mobstat/am$g;-><init>(ILcom/baidu/mobstat/bw$a;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/am$g;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
