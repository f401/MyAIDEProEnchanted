.class public final Lcom/termux/yinli_a/m/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/yinli_a/m/h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lcom/termux/yinli_a/m/h;


# direct methods
.method constructor <init>(Lcom/termux/yinli_a/m/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/termux/yinli_a/m/h$a;->b:Lcom/termux/yinli_a/m/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/termux/yinli_a/m/h;->a(Lcom/termux/yinli_a/m/h;)Lcom/termux/yinli_a/m/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/termux/yinli_a/m/a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/yinli_a/m/h$a;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/termux/yinli_a/m/h$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/termux/yinli_a/m/h$a;->b:Lcom/termux/yinli_a/m/h;

    invoke-static {v0}, Lcom/termux/yinli_a/m/h;->b(Lcom/termux/yinli_a/m/h;)Lcom/termux/yinli_a/k/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/yinli_a/m/h$a;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/termux/yinli_a/k/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
