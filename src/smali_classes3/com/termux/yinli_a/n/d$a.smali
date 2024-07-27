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
        "Ljava/util/Iterator",
        "<",
        "Lcom/termux/yinli_a/l/c;",
        ">;",
        "Ljava/lang/Object;"
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
    .registers 5
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

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/termux/yinli_a/l/d;->a(III)I

    move-result v0

    iput v0, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    iput v0, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    return-void
.end method

.method private final a()V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    if-gez v0, :cond_0

    iput v3, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v0}, Lcom/termux/yinli_a/n/d;->c(Lcom/termux/yinli_a/n/d;)I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/yinli_a/n/d$a;->e:I

    iget-object v1, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v1}, Lcom/termux/yinli_a/n/d;->c(Lcom/termux/yinli_a/n/d;)I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    iget-object v1, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v1}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Lcom/termux/yinli_a/l/c;

    iget v1, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    iget-object v3, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v3}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/termux/yinli_a/l/c;-><init>(II)V

    :goto_1
    iput-object v0, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    const/4 v0, -0x1

    :goto_2
    iput v0, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    iput v2, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v0}, Lcom/termux/yinli_a/n/d;->a(Lcom/termux/yinli_a/n/d;)Lcom/termux/yinli_a/k/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v1}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object v1

    iget v4, p0, Lcom/termux/yinli_a/n/d$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/termux/yinli_a/k/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/yinli_a/d;

    if-nez v0, :cond_4

    new-instance v0, Lcom/termux/yinli_a/l/c;

    iget v1, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    iget-object v3, p0, Lcom/termux/yinli_a/n/d$a;->f:Lcom/termux/yinli_a/n/d;

    invoke-static {v3}, Lcom/termux/yinli_a/n/d;->b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/yinli_a/n/o;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/termux/yinli_a/l/c;-><init>(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/termux/yinli_a/d;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/termux/yinli_a/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    invoke-static {v4, v1}, Lcom/termux/yinli_a/l/d;->c(II)Lcom/termux/yinli_a/l/c;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    add-int/2addr v1, v0

    iput v1, p0, Lcom/termux/yinli_a/n/d$a;->b:I

    if-nez v0, :cond_5

    move v0, v2

    :goto_3
    add-int/2addr v0, v1

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/termux/yinli_a/n/d$a;->a()V

    :cond_0
    iget v1, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/termux/yinli_a/l/c;
    .registers 4

    const/4 v2, -0x1

    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/termux/yinli_a/n/d$a;->a()V

    :cond_0
    iget v0, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/yinli_a/n/d$a;->d:Lcom/termux/yinli_a/l/c;

    iput v2, p0, Lcom/termux/yinli_a/n/d$a;->a:I

    return-object v0

    :cond_1
    new-instance v0, Lcom/termux/yinli_a/f;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
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
