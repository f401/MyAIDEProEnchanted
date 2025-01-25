.class final Lcom/termux/yinli_a/n/o$a;
.super Lcom/termux/yinli_a/k/b/d;
.source ""

# interfaces
.implements Lcom/termux/yinli_a/k/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CIZI)Lcom/termux/yinli_a/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/termux/yinli_a/k/b/d;",
        "Lcom/termux/yinli_a/k/a/b;"
    }
.end annotation


# instance fields
.field final a:[C

.field final b:Z


# direct methods
.method constructor <init>([CZ)V
    .registers 3

    iput-object p1, p0, Lcom/termux/yinli_a/n/o$a;->a:[C

    iput-boolean p2, p0, Lcom/termux/yinli_a/n/o$a;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/termux/yinli_a/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)Lcom/termux/yinli_a/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "La/d<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/termux/yinli_a/n/o$a;->a:[C

    iget-boolean v1, p0, Lcom/termux/yinli_a/n/o$a;->b:Z

    invoke-static {p1, v0, p2, v1}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CIZ)I

    move-result p1

    if-gez p1, :cond_11

    const/4 p1, 0x0

    goto :goto_1e

    :cond_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/termux/yinli_a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/termux/yinli_a/d;

    move-result-object p1

    :goto_1e
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/termux/yinli_a/n/o$a;->a(Ljava/lang/CharSequence;I)Lcom/termux/yinli_a/d;

    move-result-object p1

    return-object p1
.end method
