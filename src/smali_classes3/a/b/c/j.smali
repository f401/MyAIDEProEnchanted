.class public La/b/c/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/k;

.field private final b:La/b/m;

.field private final c:La/b/a/d;

.field private final d:Z


# direct methods
.method public constructor <init>(La/b/k;La/b/m;La/b/a/d;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/j;->a:La/b/k;

    iput-object p2, p0, La/b/c/j;->b:La/b/m;

    iput-object p3, p0, La/b/c/j;->c:La/b/a/d;

    iput-boolean p4, p0, La/b/c/j;->d:Z

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/m;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, La/b/c/j;-><init>(La/b/k;La/b/m;La/b/a/d;Z)V

    return-void
.end method

.method public constructor <init>(La/b/k;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, La/b/c/j;-><init>(La/b/k;La/b/m;La/b/a/d;Z)V

    return-void
.end method

.method private a(I[La/b/a/a;Ljava/lang/String;)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, La/b/c/j;->b(I[La/b/a/a;Ljava/lang/String;)I

    move-result p3

    if-gez p3, :cond_7

    goto :goto_15

    :cond_7
    add-int/lit8 v0, p3, 0x1

    sub-int v1, p1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    const/4 p3, 0x0

    aput-object p3, p2, p1

    :goto_15
    return p1
.end method

.method private a(I[La/b/a/a;La/b/a/a;)Z
    .registers 5

    iget-object v0, p0, La/b/c/j;->a:La/b/k;

    invoke-virtual {p3, v0}, La/b/a/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, La/b/c/j;->b(I[La/b/a/a;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_11

    :cond_e
    aput-object p3, p2, p1

    const/4 p1, 0x1

    :goto_11
    return p1
.end method

.method private b(I[La/b/a/a;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_15

    aget-object v1, p2, v0

    iget-object v2, p0, La/b/c/j;->a:La/b/k;

    invoke-virtual {v1, v2}, La/b/a/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_16

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 v0, -0x1

    :goto_16
    return v0
.end method

.method private b(I[La/b/a/a;La/b/a/a;)[La/b/a/a;
    .registers 6

    array-length v0, p2

    if-gt v0, p1, :cond_c

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [La/b/a/a;

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    :cond_c
    aput-object p3, p2, p1

    return-object p2
.end method

.method private c(I[La/b/a/a;Ljava/lang/String;)La/b/a/a;
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_15

    aget-object v1, p2, v0

    iget-object v2, p0, La/b/c/j;->a:La/b/k;

    invoke-virtual {v1, v2}, La/b/a/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_16

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)La/b/a/a;
    .registers 4

    iget-object v0, p0, La/b/c/j;->c:La/b/a/d;

    if-eqz v0, :cond_f

    iget v0, v0, La/b/a/d;->i:I

    iget-object v1, p0, La/b/c/j;->c:La/b/a/d;

    iget-object v1, v1, La/b/a/d;->j:[La/b/a/a;

    invoke-direct {p0, v0, v1, p1}, La/b/c/j;->c(I[La/b/a/a;Ljava/lang/String;)La/b/a/a;

    move-result-object p1

    goto :goto_2a

    :cond_f
    iget-object v0, p0, La/b/c/j;->b:La/b/m;

    if-eqz v0, :cond_1e

    iget v0, v0, La/b/m;->e:I

    iget-object v1, p0, La/b/c/j;->b:La/b/m;

    iget-object v1, v1, La/b/m;->f:[La/b/a/a;

    invoke-direct {p0, v0, v1, p1}, La/b/c/j;->c(I[La/b/a/a;Ljava/lang/String;)La/b/a/a;

    move-result-object p1

    goto :goto_2a

    :cond_1e
    iget-object v0, p0, La/b/c/j;->a:La/b/k;

    iget v0, v0, La/b/k;->m:I

    iget-object v1, p0, La/b/c/j;->a:La/b/k;

    iget-object v1, v1, La/b/k;->n:[La/b/a/a;

    invoke-direct {p0, v0, v1, p1}, La/b/c/j;->c(I[La/b/a/a;Ljava/lang/String;)La/b/a/a;

    move-result-object p1

    :goto_2a
    return-object p1
.end method

.method public a(La/b/a/a;)V
    .registers 5

    iget-object v0, p0, La/b/c/j;->c:La/b/a/d;

    if-eqz v0, :cond_2b

    iget-boolean v1, p0, La/b/c/j;->d:Z

    if-eqz v1, :cond_14

    iget v0, v0, La/b/a/d;->i:I

    iget-object v1, p0, La/b/c/j;->c:La/b/a/d;

    iget-object v1, v1, La/b/a/d;->j:[La/b/a/a;

    invoke-direct {p0, v0, v1, p1}, La/b/c/j;->a(I[La/b/a/a;La/b/a/a;)Z

    move-result v0

    if-nez v0, :cond_7e

    :cond_14
    iget-object v0, p0, La/b/c/j;->c:La/b/a/d;

    iget v1, v0, La/b/a/d;->i:I

    iget-object v2, p0, La/b/c/j;->c:La/b/a/d;

    iget-object v2, v2, La/b/a/d;->j:[La/b/a/a;

    invoke-direct {p0, v1, v2, p1}, La/b/c/j;->b(I[La/b/a/a;La/b/a/a;)[La/b/a/a;

    move-result-object p1

    iput-object p1, v0, La/b/a/d;->j:[La/b/a/a;

    iget-object p1, p0, La/b/c/j;->c:La/b/a/d;

    iget v0, p1, La/b/a/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, La/b/a/d;->i:I

    goto :goto_7e

    :cond_2b
    iget-object v0, p0, La/b/c/j;->b:La/b/m;

    if-eqz v0, :cond_56

    iget-boolean v1, p0, La/b/c/j;->d:Z

    if-eqz v1, :cond_3f

    iget v0, v0, La/b/m;->e:I

    iget-object v1, p0, La/b/c/j;->b:La/b/m;

    iget-object v1, v1, La/b/m;->f:[La/b/a/a;

    invoke-direct {p0, v0, v1, p1}, La/b/c/j;->a(I[La/b/a/a;La/b/a/a;)Z

    move-result v0

    if-nez v0, :cond_7e

    :cond_3f
    iget-object v0, p0, La/b/c/j;->b:La/b/m;

    iget v1, v0, La/b/m;->e:I

    iget-object v2, p0, La/b/c/j;->b:La/b/m;

    iget-object v2, v2, La/b/m;->f:[La/b/a/a;

    invoke-direct {p0, v1, v2, p1}, La/b/c/j;->b(I[La/b/a/a;La/b/a/a;)[La/b/a/a;

    move-result-object p1

    iput-object p1, v0, La/b/m;->f:[La/b/a/a;

    iget-object p1, p0, La/b/c/j;->b:La/b/m;

    iget v0, p1, La/b/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, La/b/m;->e:I

    goto :goto_7e

    :cond_56
    iget-boolean v0, p0, La/b/c/j;->d:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, La/b/c/j;->a:La/b/k;

    iget v0, v0, La/b/k;->m:I

    iget-object v1, p0, La/b/c/j;->a:La/b/k;

    iget-object v1, v1, La/b/k;->n:[La/b/a/a;

    invoke-direct {p0, v0, v1, p1}, La/b/c/j;->a(I[La/b/a/a;La/b/a/a;)Z

    move-result v0

    if-nez v0, :cond_7e

    :cond_68
    iget-object v0, p0, La/b/c/j;->a:La/b/k;

    iget v1, v0, La/b/k;->m:I

    iget-object v2, p0, La/b/c/j;->a:La/b/k;

    iget-object v2, v2, La/b/k;->n:[La/b/a/a;

    invoke-direct {p0, v1, v2, p1}, La/b/c/j;->b(I[La/b/a/a;La/b/a/a;)[La/b/a/a;

    move-result-object p1

    iput-object p1, v0, La/b/k;->n:[La/b/a/a;

    iget-object p1, p0, La/b/c/j;->a:La/b/k;

    iget v0, p1, La/b/k;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, La/b/k;->m:I

    :cond_7e
    :goto_7e
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, La/b/c/j;->c:La/b/a/d;

    if-eqz v0, :cond_11

    iget v1, v0, La/b/a/d;->i:I

    iget-object v2, p0, La/b/c/j;->c:La/b/a/d;

    iget-object v2, v2, La/b/a/d;->j:[La/b/a/a;

    invoke-direct {p0, v1, v2, p1}, La/b/c/j;->a(I[La/b/a/a;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, La/b/a/d;->i:I

    goto :goto_30

    :cond_11
    iget-object v0, p0, La/b/c/j;->b:La/b/m;

    if-eqz v0, :cond_22

    iget v1, v0, La/b/m;->e:I

    iget-object v2, p0, La/b/c/j;->b:La/b/m;

    iget-object v2, v2, La/b/m;->f:[La/b/a/a;

    invoke-direct {p0, v1, v2, p1}, La/b/c/j;->a(I[La/b/a/a;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, La/b/m;->e:I

    goto :goto_30

    :cond_22
    iget-object v0, p0, La/b/c/j;->a:La/b/k;

    iget v1, v0, La/b/k;->m:I

    iget-object v2, p0, La/b/c/j;->a:La/b/k;

    iget-object v2, v2, La/b/k;->n:[La/b/a/a;

    invoke-direct {p0, v1, v2, p1}, La/b/c/j;->a(I[La/b/a/a;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, La/b/k;->m:I

    :goto_30
    return-void
.end method
