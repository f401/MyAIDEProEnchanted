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
    .registers 4

    invoke-direct {p0}, Lcom/termux/yinli_a/h/f;-><init>()V

    iput p3, p0, Lcom/termux/yinli_a/l/b;->d:I

    iput p2, p0, Lcom/termux/yinli_a/l/b;->a:I

    if-lez p3, :cond_c

    if-gt p1, p2, :cond_e

    goto :goto_10

    :cond_c
    if-ge p1, p2, :cond_10

    :cond_e
    const/4 p3, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p3, 0x1

    :goto_11
    iput-boolean p3, p0, Lcom/termux/yinli_a/l/b;->b:Z

    if-eqz p3, :cond_16

    goto :goto_17

    :cond_16
    move p1, p2

    :goto_17
    iput p1, p0, Lcom/termux/yinli_a/l/b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lcom/termux/yinli_a/l/b;->c:I

    iget v1, p0, Lcom/termux/yinli_a/l/b;->a:I

    if-ne v0, v1, :cond_14

    iget-boolean v1, p0, Lcom/termux/yinli_a/l/b;->b:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/termux/yinli_a/l/b;->b:Z

    goto :goto_19

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_14
    iget v1, p0, Lcom/termux/yinli_a/l/b;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/termux/yinli_a/l/b;->c:I

    :goto_19
    return v0
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lcom/termux/yinli_a/l/b;->b:Z

    return v0
.end method
