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
        "La/k/a/b",
        "<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "La/d",
        "<+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:[C

.field final b:Z


# direct methods
.method constructor <init>([CZ)V
    .registers 4

    iput-object p1, p0, Lcom/termux/yinli_a/n/o$a;->a:[C

    iput-boolean p2, p0, Lcom/termux/yinli_a/n/o$a;->b:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/termux/yinli_a/k/b/d;-><init>(I)V

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
            "La/d",
            "<",
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

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/yinli_a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/termux/yinli_a/d;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/termux/yinli_a/n/o$a;->a(Ljava/lang/CharSequence;I)Lcom/termux/yinli_a/d;

    move-result-object v0

    return-object v0
.end method
