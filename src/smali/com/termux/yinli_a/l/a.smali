.class public Lcom/termux/yinli_a/l/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/yinli_a/l/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/termux/yinli_a/l/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/termux/yinli_a/l/a$a;-><init>(Lcom/termux/yinli_a/k/b/a;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1c

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_14

    iput p1, p0, Lcom/termux/yinli_a/l/a;->a:I

    invoke-static {p1, p2, p3}, Lcom/termux/yinli_a/i/c;->b(III)I

    move-result p1

    iput p1, p0, Lcom/termux/yinli_a/l/a;->b:I

    iput p3, p0, Lcom/termux/yinli_a/l/a;->c:I

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/termux/yinli_a/l/a;->a:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/termux/yinli_a/l/a;->b:I

    return v0
.end method

.method public iterator()Lcom/termux/yinli_a/h/f;
    .registers 5

    new-instance v0, Lcom/termux/yinli_a/l/b;

    iget v1, p0, Lcom/termux/yinli_a/l/a;->a:I

    iget v2, p0, Lcom/termux/yinli_a/l/a;->b:I

    iget v3, p0, Lcom/termux/yinli_a/l/a;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/yinli_a/l/b;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->iterator()Lcom/termux/yinli_a/h/f;

    move-result-object v0

    return-object v0
.end method
