.class public Lcom/baidu/mobstat/am$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/Exception;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(IILjava/lang/Exception;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mobstat/am$e;->b:I

    iput p2, p0, Lcom/baidu/mobstat/am$e;->c:I

    iput-object p3, p0, Lcom/baidu/mobstat/am$e;->a:Ljava/lang/Exception;

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/am$e;
    .registers 3

    new-instance v0, Lcom/baidu/mobstat/am$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/baidu/mobstat/am$e;-><init>(IILjava/lang/Exception;)V

    return-object v0
.end method

.method public static a(I)Lcom/baidu/mobstat/am$e;
    .registers 4

    new-instance v0, Lcom/baidu/mobstat/am$e;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/baidu/mobstat/am$e;-><init>(IILjava/lang/Exception;)V

    return-object v0
.end method

.method public static b()Lcom/baidu/mobstat/am$e;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mobstat/am$e;->a(I)Lcom/baidu/mobstat/am$e;

    move-result-object v0

    return-object v0
.end method
