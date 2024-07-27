.class Lcom/a/b/g/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/m;


# instance fields
.field final a:Lcom/a/b/g/r;

.field private b:I


# direct methods
.method constructor <init>(Lcom/a/b/g/r;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/g/s;->a:Lcom/a/b/g/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/g/s;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget v0, p0, Lcom/a/b/g/s;->b:I

    iget-object v1, p0, Lcom/a/b/g/s;->a:Lcom/a/b/g/r;

    iget-object v1, v1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v1}, Lcom/a/b/g/n;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/g/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/g/s;->a:Lcom/a/b/g/r;

    iget-object v0, v0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    iget v1, p0, Lcom/a/b/g/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/b/g/s;->b:I

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    return v0
.end method
