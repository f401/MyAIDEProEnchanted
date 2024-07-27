.class Lcom/baidu/mobstat/co$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->a(Ljava/util/ArrayList;)Lcom/baidu/mobstat/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/mobstat/cl;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;)V
    .registers 2

    .line 1514
    iput-object p1, p0, Lcom/baidu/mobstat/co$6;->a:Lcom/baidu/mobstat/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/cl;Lcom/baidu/mobstat/cl;)I
    .registers 9

    const-wide/16 v4, 0x0

    .line 1517
    invoke-virtual {p1}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/baidu/mobstat/cl;->i()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1519
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 1520
    const/4 v0, 0x1

    .line 1524
    :goto_0
    return v0

    .line 1521
    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 1522
    const/4 v0, -0x1

    goto :goto_0

    .line 1524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 1514
    check-cast p1, Lcom/baidu/mobstat/cl;

    check-cast p2, Lcom/baidu/mobstat/cl;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/co$6;->a(Lcom/baidu/mobstat/cl;Lcom/baidu/mobstat/cl;)I

    move-result v0

    return v0
.end method
