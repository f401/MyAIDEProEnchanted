.class Lcom/baidu/mobstat/ap$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/ap$b;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Lcom/baidu/mobstat/ap$a;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ap$b;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ap$b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/ap$b$1;->a:Lcom/baidu/mobstat/ap$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/baidu/mobstat/ap$a;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Lcom/baidu/mobstat/ap$a;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_18

    return v0

    :cond_18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobstat/ap$a;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/mobstat/ap$a;

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/ap$a;->a(Lcom/baidu/mobstat/ap$a;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/ap$b$1;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method
