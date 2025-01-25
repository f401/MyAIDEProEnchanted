.class public La/b/c/bs;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method private a([La/b/a/o;II)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v0, p2, :cond_1f

    aget-object v2, p1, v0

    iget v3, v2, La/b/a/o;->e:I

    if-ltz v3, :cond_1c

    iget v3, v2, La/b/a/o;->e:I

    if-ge v3, p3, :cond_1c

    iget v3, v2, La/b/a/o;->a:I

    if-eqz v3, :cond_16

    iget v2, v2, La/b/a/o;->b:I

    if-lez v2, :cond_1c

    :cond_16
    aget-object v2, p1, v0

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    const/4 p3, 0x0

    invoke-static {p1, v1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return v1
.end method

.method private a([La/b/a/q;II)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v0, p2, :cond_1f

    aget-object v2, p1, v0

    iget v3, v2, La/b/a/q;->e:I

    if-ltz v3, :cond_1c

    iget v3, v2, La/b/a/q;->e:I

    if-ge v3, p3, :cond_1c

    iget v3, v2, La/b/a/q;->a:I

    if-eqz v3, :cond_16

    iget v2, v2, La/b/a/q;->b:I

    if-lez v2, :cond_1c

    :cond_16
    aget-object v2, p1, v0

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    const/4 p3, 0x0

    invoke-static {p1, v1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return v1
.end method

.method private a(I)[I
    .registers 5

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_d

    const v2, 0x7fffffff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    return-object v0
.end method

.method private b([La/b/a/o;II)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    invoke-direct {p0, p3}, La/b/c/bs;->a(I)[I

    move-result-object p3

    :goto_8
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_22

    aget-object v0, p1, p2

    iget v1, v0, La/b/a/o;->e:I

    aget v1, p3, v1

    iget v2, v0, La/b/a/o;->a:I

    sub-int/2addr v1, v2

    iget v2, v0, La/b/a/o;->b:I

    if-le v2, v1, :cond_1b

    iput v1, v0, La/b/a/o;->b:I

    :cond_1b
    iget v1, v0, La/b/a/o;->e:I

    iget v0, v0, La/b/a/o;->a:I

    aput v0, p3, v1

    goto :goto_8

    :cond_22
    return-void
.end method

.method private b([La/b/a/q;II)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    invoke-direct {p0, p3}, La/b/c/bs;->a(I)[I

    move-result-object p3

    :goto_8
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_22

    aget-object v0, p1, p2

    iget v1, v0, La/b/a/q;->e:I

    aget v1, p3, v1

    iget v2, v0, La/b/a/q;->a:I

    sub-int/2addr v1, v2

    iget v2, v0, La/b/a/q;->b:I

    if-le v2, v1, :cond_1b

    iput v1, v0, La/b/a/q;->b:I

    :cond_1b
    iget v1, v0, La/b/a/q;->e:I

    iget v0, v0, La/b/a/q;->a:I

    aput v0, p3, v1

    goto :goto_8

    :cond_22
    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/c/bs;->a:Z

    iput-boolean v0, p0, La/b/c/bs;->b:Z

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->b(La/b/c;La/b/j;La/b/a/d/i;)V

    iget-boolean v0, p0, La/b/c/bs;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    new-instance v0, La/b/c/j;

    move-object v2, p1

    check-cast v2, La/b/k;

    move-object v3, p2

    check-cast v3, La/b/m;

    invoke-direct {v0, v2, v3, p3, v1}, La/b/c/j;-><init>(La/b/k;La/b/m;La/b/a/d;Z)V

    const-string v2, "LocalVariableTable"

    invoke-virtual {v0, v2}, La/b/c/j;->b(Ljava/lang/String;)V

    :cond_1d
    iget-boolean v0, p0, La/b/c/bs;->b:Z

    if-eqz v0, :cond_2f

    new-instance v0, La/b/c/j;

    check-cast p1, La/b/k;

    check-cast p2, La/b/m;

    invoke-direct {v0, p1, p2, p3, v1}, La/b/c/j;-><init>(La/b/k;La/b/m;La/b/a/d;Z)V

    const-string p1, "LocalVariableTypeTable"

    invoke-virtual {v0, p1}, La/b/c/j;->b(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/p;)V
    .registers 6

    iget-object p1, p4, La/b/a/p;->d:[La/b/a/o;

    iget p2, p4, La/b/a/p;->c:I

    iget v0, p3, La/b/a/d;->d:I

    invoke-direct {p0, p1, p2, v0}, La/b/c/bs;->a([La/b/a/o;II)I

    move-result p1

    iput p1, p4, La/b/a/p;->c:I

    iget-object p1, p4, La/b/a/p;->d:[La/b/a/o;

    iget p2, p4, La/b/a/p;->c:I

    iget p3, p3, La/b/a/d;->d:I

    invoke-direct {p0, p1, p2, p3}, La/b/c/bs;->b([La/b/a/o;II)V

    iget p1, p4, La/b/a/p;->c:I

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, La/b/c/bs;->a:Z

    :cond_1c
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/r;)V
    .registers 6

    iget-object p1, p4, La/b/a/r;->d:[La/b/a/q;

    iget p2, p4, La/b/a/r;->c:I

    iget v0, p3, La/b/a/d;->d:I

    invoke-direct {p0, p1, p2, v0}, La/b/c/bs;->a([La/b/a/q;II)I

    move-result p1

    iput p1, p4, La/b/a/r;->c:I

    iget-object p1, p4, La/b/a/r;->d:[La/b/a/q;

    iget p2, p4, La/b/a/r;->c:I

    iget p3, p3, La/b/a/d;->d:I

    invoke-direct {p0, p1, p2, p3}, La/b/c/bs;->b([La/b/a/q;II)V

    iget p1, p4, La/b/a/r;->c:I

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, La/b/c/bs;->b:Z

    :cond_1c
    return-void
.end method
