.class Lcom/baidu/mobstat/co$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;
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
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;)V
    .registers 2

    .line 753
    iput-object p1, p0, Lcom/baidu/mobstat/co$3;->a:Lcom/baidu/mobstat/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 756
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 753
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/co$3;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method
