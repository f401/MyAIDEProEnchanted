.class public abstract Lcom/a/b/e/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/w;


# instance fields
.field private final a:Lcom/a/b/e/b/aa;

.field private final b:Lcom/a/b/e/b/ad;

.field private final c:Lcom/a/b/e/b/u;

.field private final d:Lcom/a/b/e/b/x;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "opcode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p4, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/a/b/e/b/j;->a:Lcom/a/b/e/b/aa;

    iput-object p2, p0, Lcom/a/b/e/b/j;->b:Lcom/a/b/e/b/ad;

    iput-object p3, p0, Lcom/a/b/e/b/j;->c:Lcom/a/b/e/b/u;

    iput-object p4, p0, Lcom/a/b/e/b/j;->d:Lcom/a/b/e/b/x;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_c

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public abstract a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;
.end method

.method public abstract a(Lcom/a/b/e/d/c;)Lcom/a/b/e/b/j;
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Insn{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/e/b/j;->b:Lcom/a/b/e/b/ad;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/e/b/j;->a:Lcom/a/b/e/b/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/e/b/j;->c:Lcom/a/b/e/b/u;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/a/b/e/b/j;->c:Lcom/a/b/e/b/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " <- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v1, p0, Lcom/a/b/e/b/j;->d:Lcom/a/b/e/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/a/b/e/b/l;)V
.end method

.method public a(Lcom/a/b/e/b/j;)Z
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/b/j;->a:Lcom/a/b/e/b/aa;

    invoke-virtual {p1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/a/b/e/b/j;->b:Lcom/a/b/e/b/ad;

    invoke-virtual {p1}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/a/b/e/b/j;->c:Lcom/a/b/e/b/u;

    invoke-virtual {p1}, Lcom/a/b/e/b/j;->h()Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/e/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/a/b/e/b/j;->d:Lcom/a/b/e/b/x;

    invoke-virtual {p1}, Lcom/a/b/e/b/j;->j()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/e/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/a/b/e/b/j;->b()Lcom/a/b/e/d/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/b/j;->b()Lcom/a/b/e/d/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/e/d/b;->a(Lcom/a/b/e/d/e;Lcom/a/b/e/d/e;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    :goto_45
    return v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public abstract b()Lcom/a/b/e/d/e;
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/e/b/j;->b:Lcom/a/b/e/b/ad;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/b/j;->a:Lcom/a/b/e/b/aa;

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_29

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    iget-object v0, p0, Lcom/a/b/e/b/j;->c:Lcom/a/b/e/b/u;

    if-nez v0, :cond_49

    const-string v0, " ."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    const-string v0, " <-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/b/j;->d:Lcom/a/b/e/b/x;

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-nez v2, :cond_58

    const-string v0, " ."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/b/j;->c:Lcom/a/b/e/b/u;

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_58
    const/4 v0, 0x0

    :goto_59
    if-ge v0, v2, :cond_44

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/a/b/e/b/j;->d:Lcom/a/b/e/b/x;

    invoke-virtual {v3, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_59
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/b/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final f()Lcom/a/b/e/b/aa;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/j;->a:Lcom/a/b/e/b/aa;

    return-object v0
.end method

.method public final g()Lcom/a/b/e/b/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/j;->b:Lcom/a/b/e/b/ad;

    return-object v0
.end method

.method public final h()Lcom/a/b/e/b/u;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/j;->c:Lcom/a/b/e/b/u;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Lcom/a/b/e/b/u;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/e/b/j;->a:Lcom/a/b/e/b/aa;

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/16 v2, 0x36

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Lcom/a/b/e/b/j;->d:Lcom/a/b/e/b/x;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    :goto_12
    if-nez v0, :cond_19

    :cond_14
    move-object v0, v1

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/a/b/e/b/j;->c:Lcom/a/b/e/b/u;

    goto :goto_12

    :cond_19
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v2

    if-eqz v2, :cond_14

    goto :goto_15
.end method

.method public final j()Lcom/a/b/e/b/x;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/j;->d:Lcom/a/b/e/b/x;

    return-object v0
.end method

.method public final k()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/j;->a:Lcom/a/b/e/b/aa;

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->h()Z

    move-result v0

    return v0
.end method

.method public l()Lcom/a/b/e/b/j;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/b/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
