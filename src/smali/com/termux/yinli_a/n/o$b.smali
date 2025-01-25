.class final Lcom/termux/yinli_a/n/o$b;
.super Lcom/termux/yinli_a/k/b/d;
.source ""

# interfaces
.implements Lcom/termux/yinli_a/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;[CZI)Lcom/termux/yinli_a/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/termux/yinli_a/k/b/d;",
        "Lcom/termux/yinli_a/k/a/a;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/termux/yinli_a/n/o$b;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/termux/yinli_a/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/termux/yinli_a/l/c;

    invoke-virtual {p0, p1}, Lcom/termux/yinli_a/n/o$b;->a(Lcom/termux/yinli_a/l/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/termux/yinli_a/l/c;)Ljava/lang/String;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/termux/yinli_a/n/o$b;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;Lcom/termux/yinli_a/l/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
