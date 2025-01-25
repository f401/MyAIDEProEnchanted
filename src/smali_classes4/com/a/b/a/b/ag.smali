.class Lcom/a/b/a/b/ag;
.super Lcom/a/b/a/b/ah;


# instance fields
.field a:I

.field final b:Lcom/a/b/a/b/ab;


# direct methods
.method constructor <init>(Lcom/a/b/a/b/ab;)V
    .registers 4

    iput-object p1, p0, Lcom/a/b/a/b/ag;->b:Lcom/a/b/a/b/ab;

    invoke-static {p1}, Lcom/a/b/a/b/ab;->b(Lcom/a/b/a/b/ab;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/ah;-><init>(I)V

    invoke-static {p1}, Lcom/a/b/a/b/ab;->b(Lcom/a/b/a/b/ab;)I

    move-result v0

    invoke-static {p1}, Lcom/a/b/a/b/ab;->c(Lcom/a/b/a/b/ab;)Lcom/a/b/a/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/a/b/o;->n()Lcom/a/b/a/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/a/b/h;->d_()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/b/a/b/ag;->a:I

    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    iget v0, p0, Lcom/a/b/a/b/ag;->c:I

    iget v1, p0, Lcom/a/b/a/b/ag;->a:I

    if-lt v0, v1, :cond_c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lcom/a/b/a/b/ag;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/a/b/a/b/ag;->c:I

    return v0
.end method
