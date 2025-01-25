.class public final Lcom/termux/yinli_a/n/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/yinli_a/n/d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/termux/yinli_a/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/termux/yinli_a/l/c;

.field private e:I

.field final f:Lcom/termux/yinli_a/n/d;


# direct methods
.method constructor <init>(Lcom/termux/yinli_a/n/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    invoke-static {p1}, Lcom/termux/yinli_a/n/d;->d(Lcom/termux/yinli_a/n/d;)I

    move-result v0

    invoke-static {p1}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/termux/yinli_a/l/d;->a(III)I

    move-result p1

    iput p1, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    iput p1, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    return-void
.end method

.method private final a()V
    .registers 6

    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_c

    iput v1, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    goto/16 :goto_99

    :cond_c
    iget-object v0, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v0}, Lcom/termux/yinli_a/n/d;->c(Lcom/termux/yinli_a/n/d;)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_22

    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/termux/yinli_a/n/d$a;->e:I

    iget-object v3, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v3}, Lcom/termux/yinli_a/n/d;->c(Lcom/termux/yinli_a/n/d;)I

    move-result v3

    if-ge v0, v3, :cond_30

    :cond_22
    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    iget-object v3, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v3}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_42

    :cond_30
    new-instance v0, Lcom/termux/yinli_a/l/c;

    iget v1, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    iget-object v3, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v3}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/termux/yinli_a/l/c;-><init>(II)V

    goto :goto_6d

    :cond_42
    iget-object v0, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v0}, Lcom/termux/yinli_a/n/d;->a(Lcom/termux/yinli_a/n/d;)Lcom/termux/yinli_a/k/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v3}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object v3

    iget v4, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/termux/yinli_a/k/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/yinli_a/d;

    if-nez v0, :cond_71

    new-instance v0, Lcom/termux/yinli_a/l/c;

    iget v1, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    iget-object v3, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v3}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/termux/yinli_a/l/c;-><init>(II)V

    :goto_6d
    iput-object v0, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    const/4 v0, -0x1

    goto :goto_95

    :cond_71
    invoke-virtual {v0}, Lcom/termux/yinli_a/d;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/termux/yinli_a/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    invoke-static {v4, v3}, Lcom/termux/yinli_a/l/d;->c(II)Lcom/termux/yinli_a/l/c;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    add-int/2addr v3, v0

    iput v3, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    if-nez v0, :cond_93

    const/4 v1, 0x1

    :cond_93
    add-int v0, v1, v3

    :goto_95
    iput v0, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    iput v2, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    :goto_99
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/termux/yinli_a/n/d$a;->a()V

    :cond_8
    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public next()Lcom/termux/yinli_a/l/c;
    .registers 4

    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/termux/yinli_a/n/d$a;->a()V

    :cond_8
    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    if-eqz v0, :cond_16

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    iput v1, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    return-object v0

    :cond_16
    new-instance v0, Lcom/termux/yinli_a/f;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/termux/yinli_a/n/d$a;->next()Lcom/termux/yinli_a/l/c;

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
