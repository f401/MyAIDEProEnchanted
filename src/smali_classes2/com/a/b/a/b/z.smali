.class public Lcom/a/b/a/b/z;
.super Lcom/a/b/a/b/v;


# instance fields
.field private final a:[Lcom/a/b/e/d/d;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/a/b/a/b/v;-><init>(Z)V

    new-array v0, p1, [Lcom/a/b/e/d/d;

    iput-object v0, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;)Lcom/a/b/e/d/d;
    .registers 5

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public synthetic a()Lcom/a/b/a/b/v;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/a/b/z;->e()Lcom/a/b/a/b/z;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/a/b/v;)Lcom/a/b/a/b/v;
    .registers 3

    instance-of v0, p1, Lcom/a/b/a/b/z;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/a/b/a/b/z;

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/z;->a(Lcom/a/b/a/b/z;)Lcom/a/b/a/b/z;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/a/b/a/b/v;->a(Lcom/a/b/a/b/v;)Lcom/a/b/a/b/v;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/b/a/b/v;I)Lcom/a/b/a/b/w;
    .registers 5

    new-instance v0, Lcom/a/b/a/b/w;

    invoke-virtual {p0}, Lcom/a/b/a/b/z;->f()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/w;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lcom/a/b/a/b/w;->a(Lcom/a/b/a/b/v;I)Lcom/a/b/a/b/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/a/b/z;)Lcom/a/b/a/b/z;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, Lcom/a/b/a/b/y;->a(Lcom/a/b/a/b/z;Lcom/a/b/a/b/z;)Lcom/a/b/a/b/z;
    :try_end_0
    .catch Lcom/a/b/a/b/al; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "underlay locals:"

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/z;->a(Lcom/a/a/a/b;)V

    const-string v1, "overlay locals:"

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/a/b/a/b/z;->a(Lcom/a/a/a/b;)V

    throw v0
.end method

.method public a(I)Lcom/a/b/e/d/d;
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const-string v0, "invalid"

    invoke-static {p1, v0}, Lcom/a/b/a/b/z;->a(ILjava/lang/String;)Lcom/a/b/e/d/d;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(ILcom/a/b/e/d/d;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/b/z;->l()V

    :try_start_0
    invoke-interface {p2}, Lcom/a/b/e/d/d;->b()Lcom/a/b/e/d/d;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "idx < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    add-int/lit8 v2, p1, 0x1

    aput-object v3, v1, v2

    :cond_1
    iget-object v1, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    aput-object v0, v1, p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    add-int/lit8 v1, p1, -0x1

    aput-object v3, v0, v1

    :cond_2
    return-void
.end method

.method public a(Lcom/a/a/a/b;)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    const-string v1, "<invalid>"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locals["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/a/a/a/b;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public a(Lcom/a/b/e/b/u;)V
    .registers 3

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/a/b/a/b/z;->a(ILcom/a/b/e/d/d;)V

    return-void
.end method

.method public a(Lcom/a/b/e/d/c;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/a/b/a/b/z;->l()V

    invoke-virtual {p1}, Lcom/a/b/e/d/c;->s()Lcom/a/b/e/d/c;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    aget-object v3, v3, v0

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    aput-object v2, v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected b()Lcom/a/b/a/b/z;
    .registers 1

    return-object p0
.end method

.method public b(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/a/b/z;->l()V

    iget-object v0, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method public c(I)Lcom/a/b/e/d/d;
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    const-string v1, "<invalid>"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "locals["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public e()Lcom/a/b/a/b/z;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lcom/a/b/a/b/z;

    iget-object v1, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/z;-><init>(I)V

    iget-object v1, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    iget-object v2, v0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    iget-object v3, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/z;->a:[Lcom/a/b/e/d/d;

    array-length v0, v0

    return v0
.end method
