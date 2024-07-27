.class public final Lcom/termux/yinli_a/l/b;
.super Lcom/termux/yinli_a/h/f;
.source ""


# instance fields
.field private final a:I

.field private b:Z

.field private c:I

.field private final d:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Lcom/termux/yinli_a/h/f;-><init>()V

    iput p3, p0, Lcom/termux/yinli_a/l/b;->d:I

    iput p2, p0, Lcom/termux/yinli_a/l/b;->a:I

    const/4 v0, 0x1

    if-lez p3, :cond_1

    if-gt p1, p2, :cond_2

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/termux/yinli_a/l/b;->b:Z

    if-eqz v0, :cond_3

    :goto_1
    iput p1, p0, Lcom/termux/yinli_a/l/b;->c:I

    return-void

    :cond_1
    if-ge p1, p2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/termux/yinli_a/l/b;->a:I

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lcom/termux/yinli_a/l/b;->c:I

    iget v1, p0, Lcom/termux/yinli_a/l/b;->a:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/termux/yinli_a/l/b;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/termux/yinli_a/l/b;->b:Z

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/termux/yinli_a/l/b;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/termux/yinli_a/l/b;->c:I

    goto :goto_0
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lcom/termux/yinli_a/l/b;->b:Z

    return v0
.end method
