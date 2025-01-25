.class Lcom/baidu/mobstat/ap$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/ap$d;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/baidu/mobstat/ap$d$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ap$d;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ap$d;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/ap$d$1;->a:Lcom/baidu/mobstat/ap$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/ap$d$a;Lcom/baidu/mobstat/ap$d$a;)I
    .registers 3

    invoke-static {p1}, Lcom/baidu/mobstat/ap$d$a;->a(Lcom/baidu/mobstat/ap$d$a;)I

    move-result p1

    invoke-static {p2}, Lcom/baidu/mobstat/ap$d$a;->a(Lcom/baidu/mobstat/ap$d$a;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/baidu/mobstat/ap$d$a;

    check-cast p2, Lcom/baidu/mobstat/ap$d$a;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/ap$d$1;->a(Lcom/baidu/mobstat/ap$d$a;Lcom/baidu/mobstat/ap$d$a;)I

    move-result p1

    return p1
.end method
