.class public final Lcom/a/b/a/b/p;
.super Lcom/a/b/g/t;


# instance fields
.field private final a:[Lcom/a/b/e/d/d;

.field private final b:[Z

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/a/b/g/t;-><init>(Z)V

    new-array v0, p1, [Lcom/a/b/e/d/d;

    iput-object v0, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/a/b/a/b/p;->b:[Z

    iput v1, p0, Lcom/a/b/a/b/p;->c:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/a/b/e/d/d;
    .registers 4

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stack: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lcom/a/b/e/d/d;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_0

    const-string v0, "<invalid>"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/a/b/a/b/p;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lcom/a/b/a/b/p;

    iget-object v1, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/p;-><init>(I)V

    iget-object v1, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    iget-object v2, v0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    iget-object v3, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/a/b/a/b/p;->b:[Z

    iget-object v2, v0, Lcom/a/b/a/b/p;->b:[Z

    iget-object v3, p0, Lcom/a/b/a/b/p;->b:[Z

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/a/b/a/b/p;->c:I

    iput v1, v0, Lcom/a/b/a/b/p;->c:I

    return-object v0
.end method

.method public a(Lcom/a/b/a/b/p;)Lcom/a/b/a/b/p;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, Lcom/a/b/a/b/y;->a(Lcom/a/b/a/b/p;Lcom/a/b/a/b/p;)Lcom/a/b/a/b/p;
    :try_end_0
    .catch Lcom/a/b/a/b/al; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "underlay stack:"

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/p;->a(Lcom/a/a/a/b;)V

    const-string v1, "overlay stack:"

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/a/b/a/b/p;->a(Lcom/a/a/a/b;)V

    throw v0
.end method

.method public a(I)Lcom/a/b/e/d/d;
    .registers 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/a/b/p;->c:I

    if-lt p1, v0, :cond_1

    const-string v0, "underflow"

    invoke-static {v0}, Lcom/a/b/a/b/p;->a(Ljava/lang/String;)Lcom/a/b/e/d/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    iget v1, p0, Lcom/a/b/a/b/p;->c:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public a(ILcom/a/b/e/d/d;)V
    .registers 8

    invoke-virtual {p0}, Lcom/a/b/a/b/p;->l()V

    :try_start_0
    invoke-interface {p2}, Lcom/a/b/e/d/d;->b()Lcom/a/b/e/d/d;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v1, p0, Lcom/a/b/a/b/p;->c:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->j()I

    move-result v3

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/d/c;->j()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "incompatible substitution: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/a/b/p;->b(Lcom/a/b/e/d/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/a/b/a/b/p;->b(Lcom/a/b/e/d/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/a/b/p;->a(Ljava/lang/String;)Lcom/a/b/e/d/d;

    :cond_1
    iget-object v2, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    aput-object v0, v2, v1

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/a/a/b;)V
    .registers 7

    iget v0, p0, Lcom/a/b/a/b/p;->c:I

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-le v1, v2, :cond_0

    return-void

    :cond_0
    if-ne v1, v2, :cond_1

    const-string v0, "top0"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stack["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/a/b/a/b/p;->b(Lcom/a/b/e/d/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/a/b;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sub-int v0, v2, v1

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/a/b/e/d/c;)V
    .registers 5

    iget v0, p0, Lcom/a/b/a/b/p;->c:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/a/b/a/b/p;->l()V

    invoke-virtual {p1}, Lcom/a/b/e/d/c;->s()Lcom/a/b/e/d/c;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/a/b/a/b/p;->c:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    aput-object v1, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/a/b/e/d/d;)V
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/a/b/p;->l()V

    :try_start_0
    invoke-interface {p1}, Lcom/a/b/e/d/d;->b()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->j()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget v2, p0, Lcom/a/b/a/b/p;->c:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    array-length v3, v3

    if-le v2, v3, :cond_0

    const-string v0, "overflow"

    invoke-static {v0}, Lcom/a/b/a/b/p;->a(Ljava/lang/String;)Lcom/a/b/e/d/d;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    iget v2, p0, Lcom/a/b/a/b/p;->c:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Lcom/a/b/a/b/p;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/b/a/b/p;->c:I

    :cond_1
    iget-object v1, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    iget v2, p0, Lcom/a/b/a/b/p;->c:I

    aput-object v0, v1, v2

    iget v0, p0, Lcom/a/b/a/b/p;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/a/b/p;->c:I

    goto :goto_0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/p;->c:I

    return v0
.end method

.method public b(I)Z
    .registers 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/a/b/p;->c:I

    if-lt p1, v0, :cond_1

    new-instance v0, Lcom/a/b/a/b/al;

    const-string v1, "stack: underflow"

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/a/b/a/b/p;->b:[Z

    iget v1, p0, Lcom/a/b/a/b/p;->c:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public c(I)Lcom/a/b/e/d/c;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/p;->a(I)Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/b/p;->l()V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/a/b/a/b/p;->c:I

    if-lt v0, v2, :cond_0

    iput v1, p0, Lcom/a/b/a/b/p;->c:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/a/b/a/b/p;->b:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/a/b/p;->l()V

    iget-object v0, p0, Lcom/a/b/a/b/p;->b:[Z

    iget v1, p0, Lcom/a/b/a/b/p;->c:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public e()Lcom/a/b/e/d/d;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/b/p;->l()V

    invoke-virtual {p0, v4}, Lcom/a/b/a/b/p;->a(I)Lcom/a/b/e/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/p;->a:[Lcom/a/b/e/d/d;

    iget v2, p0, Lcom/a/b/a/b/p;->c:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/a/b/a/b/p;->b:[Z

    iget v2, p0, Lcom/a/b/a/b/p;->c:I

    add-int/lit8 v2, v2, -0x1

    aput-boolean v4, v1, v2

    iget v1, p0, Lcom/a/b/a/b/p;->c:I

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->j()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/a/b/a/b/p;->c:I

    return-object v0
.end method
