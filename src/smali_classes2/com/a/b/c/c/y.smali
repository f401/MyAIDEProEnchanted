.class public final Lcom/a/b/c/c/y;
.super Lcom/a/b/c/c/x;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/a/b/e/c/z;

.field private final b:Lcom/a/b/c/c/n;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/z;ILcom/a/b/c/b/j;Lcom/a/b/e/d/e;)V
    .registers 7

    invoke-direct {p0, p2}, Lcom/a/b/c/c/x;-><init>(I)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/c/c/y;->a:Lcom/a/b/e/c/z;

    if-nez p3, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/c/c/y;->b:Lcom/a/b/c/c/n;

    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lcom/a/b/c/c/n;

    invoke-direct {v1, p1, p3, v0, p4}, Lcom/a/b/c/c/n;-><init>(Lcom/a/b/e/c/z;Lcom/a/b/c/b/j;ZLcom/a/b/e/d/e;)V

    iput-object v1, p0, Lcom/a/b/c/c/y;->b:Lcom/a/b/c/c/n;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;II)I
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->m()Lcom/a/b/c/c/ap;

    move-result-object v0

    iget-object v3, p0, Lcom/a/b/c/c/y;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0, v3}, Lcom/a/b/c/c/ap;->b(Lcom/a/b/e/c/f;)I

    move-result v4

    sub-int v5, v4, p3

    invoke-virtual {p0}, Lcom/a/b/c/c/y;->b()I

    move-result v6

    iget-object v0, p0, Lcom/a/b/c/c/y;->b:Lcom/a/b/c/c/n;

    invoke-static {v0}, Lcom/a/b/c/c/at;->b(Lcom/a/b/c/c/at;)I

    move-result v7

    if-eqz v7, :cond_0

    move v3, v1

    :goto_0
    and-int/lit16 v0, v6, 0x500

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "code vs. access_flags mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "  [%x] %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v2

    iget-object v8, p0, Lcom/a/b/c/c/y;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v8}, Lcom/a/b/e/c/z;->d()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    invoke-static {v5}, Lcom/a/a/e;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    method_idx:   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    invoke-static {v6}, Lcom/a/a/e;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    access_flags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/a/b/e/b/a;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    invoke-static {v7}, Lcom/a/a/e;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    code_off:     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_3
    invoke-interface {p2, v5}, Lcom/a/b/g/a;->e(I)I

    invoke-interface {p2, v6}, Lcom/a/b/g/a;->e(I)I

    invoke-interface {p2, v7}, Lcom/a/b/g/a;->e(I)I

    return v4
.end method

.method public a(Lcom/a/b/c/c/y;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/c/y;->a:Lcom/a/b/e/c/z;

    iget-object v1, p1, Lcom/a/b/c/c/y;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/z;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->m()Lcom/a/b/c/c/ap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->d()Lcom/a/b/c/c/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/c/y;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0, v2}, Lcom/a/b/c/c/ap;->a(Lcom/a/b/e/c/f;)Lcom/a/b/c/c/ao;

    iget-object v0, p0, Lcom/a/b/c/c/y;->b:Lcom/a/b/c/c/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/c/c/y;->b:Lcom/a/b/c/c/n;

    invoke-virtual {v1, v0}, Lcom/a/b/c/c/aq;->a(Lcom/a/b/c/c/at;)V

    :cond_0
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/c/y;

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/y;->a(Lcom/a/b/c/c/y;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/y;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0}, Lcom/a/b/e/c/z;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/c/c/y;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/a/b/c/c/y;

    invoke-virtual {p0, p1}, Lcom/a/b/c/c/y;->a(Lcom/a/b/c/c/y;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/y;->b()I

    move-result v1

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/c/c/y;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/c/c/y;->b:Lcom/a/b/c/c/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/c/c/y;->b:Lcom/a/b/c/c/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
