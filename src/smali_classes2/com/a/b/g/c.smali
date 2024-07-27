.class Lcom/a/b/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/m;


# instance fields
.field final a:Lcom/a/b/g/b;

.field private b:I


# direct methods
.method constructor <init>(Lcom/a/b/g/b;)V
    .registers 4

    iput-object p1, p0, Lcom/a/b/g/c;->a:Lcom/a/b/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/a/b/g/b;->a:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/b/g/d;->d([II)I

    move-result v0

    iput v0, p0, Lcom/a/b/g/c;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, Lcom/a/b/g/c;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/g/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/g/c;->b:I

    iget-object v1, p0, Lcom/a/b/g/c;->a:Lcom/a/b/g/b;

    iget-object v1, v1, Lcom/a/b/g/b;->a:[I

    iget v2, p0, Lcom/a/b/g/c;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/a/b/g/d;->d([II)I

    move-result v1

    iput v1, p0, Lcom/a/b/g/c;->b:I

    return v0
.end method
