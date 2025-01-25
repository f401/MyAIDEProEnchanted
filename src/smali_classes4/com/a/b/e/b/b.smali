.class public final Lcom/a/b/e/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/p;


# instance fields
.field private final a:I

.field private final b:Lcom/a/b/e/b/m;

.field private final c:Lcom/a/b/g/n;

.field private final d:I


# direct methods
.method public constructor <init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V
    .registers 9

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :try_start_e
    invoke-virtual {p2}, Lcom/a/b/e/b/m;->m()V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_11} :catch_1f

    invoke-virtual {p2}, Lcom/a/b/e/b/m;->d_()I

    move-result v1

    if-nez v1, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "insns.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1f
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "insns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    add-int/lit8 v0, v1, -0x2

    :goto_2a
    if-gez v0, :cond_44

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p2, v0}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    if-ne v0, v3, :cond_76

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "insns does not end with a branch or throwing instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    invoke-virtual {p2, v0}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    if-eq v2, v3, :cond_73

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insns["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] is a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "branch or can throw"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_73
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_76
    :try_start_76
    invoke-virtual {p3}, Lcom/a/b/g/n;->m()V
    :try_end_79
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_79} :catch_84

    const/4 v0, -0x1

    if-ge p4, v0, :cond_8d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "primarySuccessor < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_84
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "successors == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    if-ltz p4, :cond_b4

    invoke-virtual {p3, p4}, Lcom/a/b/g/n;->h(I)Z

    move-result v0

    if-nez v0, :cond_b4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "primarySuccessor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in successors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b4
    iput p1, p0, Lcom/a/b/e/b/b;->a:I

    iput-object p2, p0, Lcom/a/b/e/b/b;->b:Lcom/a/b/e/b/m;

    iput-object p3, p0, Lcom/a/b/e/b/b;->c:Lcom/a/b/g/n;

    iput p4, p0, Lcom/a/b/e/b/b;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/b;->a:I

    return v0
.end method

.method public b()Lcom/a/b/e/b/m;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/b;->b:Lcom/a/b/e/b/m;

    return-object v0
.end method

.method public c()Lcom/a/b/g/n;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/b;->c:Lcom/a/b/g/n;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/b;->d:I

    return v0
.end method

.method public e()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/b/b;->c:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/a/b/e/b/b;->c:Lcom/a/b/g/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    iget v1, p0, Lcom/a/b/e/b/b;->d:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/a/b/e/b/b;->c:Lcom/a/b/g/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    :cond_23
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()Lcom/a/b/e/b/j;
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/b/b;->b:Lcom/a/b/e/b/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/a/b/e/b/j;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/b;->b:Lcom/a/b/e/b/m;

    invoke-virtual {v0}, Lcom/a/b/e/b/m;->e()Lcom/a/b/e/b/j;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/b;->b:Lcom/a/b/e/b/m;

    invoke-virtual {v0}, Lcom/a/b/e/b/m;->e()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->k()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/b;->b:Lcom/a/b/e/b/m;

    invoke-virtual {v0}, Lcom/a/b/e/b/m;->e()Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->b()Lcom/a/b/e/d/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/e;->d_()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/a/b/e/b/b;->a:I

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
