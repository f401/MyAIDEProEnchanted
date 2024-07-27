.class public abstract Lcom/a/b/c/b/l;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Lcom/a/b/c/b/n;

.field private final c:Lcom/a/b/e/b/ad;

.field private final d:Lcom/a/b/e/b/x;


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "opcode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/c/b/l;->a:I

    iput-object p1, p0, Lcom/a/b/c/b/l;->b:Lcom/a/b/c/b/n;

    iput-object p2, p0, Lcom/a/b/c/b/l;->c:Lcom/a/b/e/b/ad;

    iput-object p3, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    return-void
.end method

.method public static a(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/c/b/aj;
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->o()Z

    move-result v1

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    if-eqz v1, :cond_1

    sget-object v0, Lcom/a/b/c/b/o;->i:Lcom/a/b/c/b/n;

    :goto_1
    new-instance v1, Lcom/a/b/c/b/aj;

    invoke-static {p1, p2}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lcom/a/b/c/b/aj;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/a/b/c/b/o;->c:Lcom/a/b/c/b/n;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/a/b/c/b/o;->f:Lcom/a/b/c/b/n;

    goto :goto_1

    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_6

    if-eqz v1, :cond_4

    sget-object v0, Lcom/a/b/c/b/o;->j:Lcom/a/b/c/b/n;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Lcom/a/b/c/b/o;->d:Lcom/a/b/c/b/n;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/a/b/c/b/o;->g:Lcom/a/b/c/b/n;

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    sget-object v0, Lcom/a/b/c/b/o;->k:Lcom/a/b/c/b/n;

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    sget-object v0, Lcom/a/b/c/b/o;->e:Lcom/a/b/c/b/n;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/a/b/c/b/o;->h:Lcom/a/b/c/b/n;

    goto :goto_1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(Ljava/util/BitSet;)I
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->m()Z

    move-result v2

    iget-object v0, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->k()I

    move-result v0

    move v3, v0

    :goto_0
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    :goto_2
    if-lt v2, v4, :cond_1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->k()I

    move-result v0

    add-int/2addr v0, v1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public abstract a(Lcom/a/b/c/b/n;)Lcom/a/b/c/b/l;
.end method

.method public abstract a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
.end method

.method public a(Lcom/a/b/f/ag;)Lcom/a/b/c/b/l;
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/b/f/ag;->a(Lcom/a/b/e/b/x;)Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/l;->a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0, p3}, Lcom/a/b/c/b/l;->a(Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    const-string v4, ""

    invoke-static {v2, v3, v4, v1, v0}, Lcom/a/b/g/x;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sub-int v0, p2, v3

    goto :goto_1
.end method

.method protected abstract a(Z)Ljava/lang/String;
.end method

.method public abstract a(Lcom/a/b/g/a;)V
.end method

.method public b(Ljava/util/BitSet;)Lcom/a/b/c/b/l;
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/a/b/e/b/x;->a(Ljava/util/BitSet;)Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/a/b/c/b/q;

    iget-object v1, p0, Lcom/a/b/c/b/l;->c:Lcom/a/b/e/b/ad;

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/b/q;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c(Ljava/util/BitSet;)Lcom/a/b/c/b/l;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/b/l;->c:Lcom/a/b/e/b/ad;

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/a/b/c/b/l;->a(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/c/b/aj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .registers 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/a/b/c/b/l;->a:I

    return-void
.end method

.method public abstract d(I)Lcom/a/b/c/b/l;
.end method

.method public d(Ljava/util/BitSet;)Lcom/a/b/c/b/l;
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/a/b/e/b/x;->a(IZLjava/util/BitSet;)Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/l;->a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Z
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/l;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()I
    .registers 3

    iget v0, p0, Lcom/a/b/c/b/l;->a:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/c/b/l;->a:I

    return v0
.end method

.method public final j()Lcom/a/b/c/b/n;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/l;->b:Lcom/a/b/c/b/n;

    return-object v0
.end method

.method public final k()Lcom/a/b/e/b/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/l;->c:Lcom/a/b/e/b/ad;

    return-object v0
.end method

.method public final l()Lcom/a/b/e/b/x;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    return-object v0
.end method

.method public final m()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/l;->b:Lcom/a/b/c/b/n;

    invoke-virtual {v0}, Lcom/a/b/c/b/n;->d()Z

    move-result v0

    return v0
.end method

.method public n()Lcom/a/b/c/b/l;
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->m()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/b/e/b/x;->a(IZLjava/util/BitSet;)Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/l;->a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/a/b/c/b/l;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "%04x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/a/b/c/b/l;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final p()I
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/a/b/c/b/l;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/c/b/l;->c:Lcom/a/b/e/b/ad;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/c/b/l;->b:Lcom/a/b/c/b/n;

    invoke-virtual {v0}, Lcom/a/b/c/b/n;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/a/b/c/b/l;->d:Lcom/a/b/e/b/x;

    const-string v2, " "

    const-string v3, ", "

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/a/b/e/b/x;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/c/b/l;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
