.class public Lcom/a/b/a/b/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/a/b/e/c/ae;


# direct methods
.method public constructor <init>(IIILcom/a/b/e/c/ae;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startPc < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-ge p2, p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endPc < startPc"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-gez p3, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handlerPc < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput p1, p0, Lcom/a/b/a/b/i;->a:I

    iput p2, p0, Lcom/a/b/a/b/i;->b:I

    iput p3, p0, Lcom/a/b/a/b/i;->c:I

    iput-object p4, p0, Lcom/a/b/a/b/i;->d:Lcom/a/b/e/c/ae;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/i;->a:I

    return v0
.end method

.method public a(I)Z
    .registers 3

    iget v0, p0, Lcom/a/b/a/b/i;->a:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/a/b/a/b/i;->b:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/i;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/i;->c:I

    return v0
.end method

.method public d()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/i;->d:Lcom/a/b/e/c/ae;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/a/b/a/b/i;->d:Lcom/a/b/e/c/ae;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/a/b/e/c/ae;->a:Lcom/a/b/e/c/ae;

    goto :goto_6
.end method
