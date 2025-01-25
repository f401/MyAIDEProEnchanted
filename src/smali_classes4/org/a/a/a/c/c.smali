.class public Lorg/a/a/a/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:[Ljava/lang/Object;

.field b:I

.field c:Z

.field final d:Lorg/a/a/a/c/b;


# direct methods
.method public constructor <init>(Lorg/a/a/a/c/b;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lorg/a/a/a/c/c;->d:Lorg/a/a/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/c/c;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/a/c/c;->c:Z

    iput-object p2, p0, Lorg/a/a/a/c/c;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/a/a/a/c/c;->b:I

    iget-object v1, p0, Lorg/a/a/a/c/c;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/a/a/a/c/c;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/a/c/c;->c:Z

    iget-object v0, p0, Lorg/a/a/a/c/c;->a:[Ljava/lang/Object;

    iget v1, p0, Lorg/a/a/a/c/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/a/a/a/c/c;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .registers 4

    iget-boolean v0, p0, Lorg/a/a/a/c/c;->c:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lorg/a/a/a/c/c;->d:Lorg/a/a/a/c/b;

    iget-object v1, p0, Lorg/a/a/a/c/c;->a:[Ljava/lang/Object;

    iget v2, p0, Lorg/a/a/a/c/c;->b:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/a/a/a/c/b;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/a/c/c;->c:Z

    return-void
.end method
