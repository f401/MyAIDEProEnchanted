.class public Lorg/a/a/a/a/aa;
.super Lorg/a/a/a/a/b;


# instance fields
.field private final f:Lorg/a/a/a/a/ae;

.field private final g:Z


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;)V
    .registers 5

    iget-object v0, p1, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    iget-object v1, p1, Lorg/a/a/a/a/aa;->e:Lorg/a/a/a/a/bd;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/a/a/a/a/b;-><init>(Lorg/a/a/a/a/b;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ax;Lorg/a/a/a/a/bd;)V

    iget-object v0, p1, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    iput-object v0, p0, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    invoke-static {p1, p2}, Lorg/a/a/a/a/aa;->a(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/a/a/a/a/aa;->g:Z

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ae;)V
    .registers 6

    iget-object v0, p1, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    iget-object v1, p1, Lorg/a/a/a/a/aa;->e:Lorg/a/a/a/a/bd;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/a/a/a/a/b;-><init>(Lorg/a/a/a/a/b;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ax;Lorg/a/a/a/a/bd;)V

    iput-object p3, p0, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    invoke-static {p1, p2}, Lorg/a/a/a/a/aa;->a(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/a/a/a/a/aa;->g:Z

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ax;)V
    .registers 5

    iget-object v0, p1, Lorg/a/a/a/a/aa;->e:Lorg/a/a/a/a/bd;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/a/a/a/a/b;-><init>(Lorg/a/a/a/a/b;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ax;Lorg/a/a/a/a/bd;)V

    iget-object v0, p1, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    iput-object v0, p0, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    invoke-static {p1, p2}, Lorg/a/a/a/a/aa;->a(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/a/a/a/a/aa;->g:Z

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/a/n;ILorg/a/a/a/a/ax;)V
    .registers 5

    sget-object v0, Lorg/a/a/a/a/bd;->a:Lorg/a/a/a/a/bd;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/a/a/a/a/b;-><init>(Lorg/a/a/a/a/n;ILorg/a/a/a/a/ax;Lorg/a/a/a/a/bd;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/a/a/aa;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    return-void
.end method

.method private static a(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;)Z
    .registers 3

    iget-boolean v0, p0, Lorg/a/a/a/a/aa;->g:Z

    if-nez v0, :cond_10

    instance-of v0, p1, Lorg/a/a/a/a/x;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/a/a/a/a/x;

    iget-boolean v0, p1, Lorg/a/a/a/a/x;->i:Z

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method


# virtual methods
.method public a(Lorg/a/a/a/a/b;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    instance-of v0, p1, Lorg/a/a/a/a/aa;

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    move-object v0, p1

    check-cast v0, Lorg/a/a/a/a/aa;

    iget-boolean v2, p0, Lorg/a/a/a/a/aa;->g:Z

    iget-boolean v3, v0, Lorg/a/a/a/a/aa;->g:Z

    if-eq v2, v3, :cond_16

    move v0, v1

    goto :goto_4

    :cond_16
    sget-object v2, Lorg/a/a/a/c/l;->a:Lorg/a/a/a/c/l;

    iget-object v3, p0, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    iget-object v0, v0, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    invoke-virtual {v2, v3, v0}, Lorg/a/a/a/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v1

    goto :goto_4

    :cond_24
    invoke-super {p0, p1}, Lorg/a/a/a/a/b;->a(Lorg/a/a/a/a/b;)Z

    move-result v0

    goto :goto_4
.end method

.method public final c()Lorg/a/a/a/a/ae;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lorg/a/a/a/a/aa;->g:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/a/a/a/c/k;->a(I)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/a/aa;->a:Lorg/a/a/a/a/n;

    iget v1, v1, Lorg/a/a/a/a/n;->c:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget v1, p0, Lorg/a/a/a/a/aa;->b:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/a/aa;->e:Lorg/a/a/a/a/bd;

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v1

    iget-boolean v0, p0, Lorg/a/a/a/a/aa;->g:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    :goto_24
    invoke-static {v1, v0}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/a/aa;->f:Lorg/a/a/a/a/ae;

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_24
.end method
