.class Lcom/a/b/c/b/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/e/b/l;


# instance fields
.field private final a:Lcom/a/b/c/b/aa;

.field final b:Lcom/a/b/c/b/af;

.field private c:Lcom/a/b/e/b/b;

.field private d:Lcom/a/b/c/b/h;


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/af;Lcom/a/b/c/b/aa;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/c/b/ai;->b:Lcom/a/b/c/b/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/a/b/c/b/ai;->a:Lcom/a/b/c/b/aa;

    return-void
.end method

.method private a()Lcom/a/b/e/b/u;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b/c/b/ai;->c:Lcom/a/b/e/b/b;

    invoke-virtual {v1}, Lcom/a/b/e/b/b;->d()I

    move-result v1

    if-gez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v2, p0, Lcom/a/b/c/b/ai;->b:Lcom/a/b/c/b/af;

    invoke-static {v2}, Lcom/a/b/c/b/af;->e(Lcom/a/b/c/b/af;)Lcom/a/b/e/b/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/b/e/b/d;->b(I)Lcom/a/b/e/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/b;->b()Lcom/a/b/e/b/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_9

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->h()Lcom/a/b/e/b/u;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method protected a(Lcom/a/b/c/b/l;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/ai;->a:Lcom/a/b/c/b/aa;

    invoke-virtual {v0, p1}, Lcom/a/b/c/b/aa;->a(Lcom/a/b/c/b/l;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/ae;)V
    .registers 10

    invoke-virtual {p1}, Lcom/a/b/e/b/ae;->g()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/e/b/ae;->c()Lcom/a/b/g/n;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/c/b/ai;->c:Lcom/a/b/e/b/b;

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v3

    invoke-virtual {v2}, Lcom/a/b/g/n;->b()I

    move-result v4

    invoke-virtual {v3}, Lcom/a/b/g/n;->b()I

    move-result v0

    iget-object v5, p0, Lcom/a/b/c/b/ai;->c:Lcom/a/b/e/b/b;

    invoke-virtual {v5}, Lcom/a/b/e/b/b;->d()I

    move-result v5

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_26

    invoke-virtual {v3, v4}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    if-eq v5, v0, :cond_2e

    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-array v5, v4, [Lcom/a/b/c/b/h;

    const/4 v0, 0x0

    :goto_31
    if-lt v0, v4, :cond_6f

    new-instance v3, Lcom/a/b/c/b/h;

    invoke-direct {v3, v1}, Lcom/a/b/c/b/h;-><init>(Lcom/a/b/e/b/ad;)V

    new-instance v4, Lcom/a/b/c/b/h;

    iget-object v0, p0, Lcom/a/b/c/b/ai;->d:Lcom/a/b/c/b/h;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->k()Lcom/a/b/e/b/ad;

    move-result-object v0

    const/4 v6, 0x1

    invoke-direct {v4, v0, v6}, Lcom/a/b/c/b/h;-><init>(Lcom/a/b/e/b/ad;Z)V

    new-instance v6, Lcom/a/b/c/b/al;

    invoke-direct {v6, v1, v4, v2, v5}, Lcom/a/b/c/b/al;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/c/b/h;Lcom/a/b/g/n;[Lcom/a/b/c/b/h;)V

    invoke-virtual {v6}, Lcom/a/b/c/b/al;->c()Z

    move-result v0

    if-eqz v0, :cond_82

    sget-object v0, Lcom/a/b/c/b/o;->S:Lcom/a/b/c/b/n;

    :goto_51
    new-instance v2, Lcom/a/b/c/b/am;

    invoke-static {p1}, Lcom/a/b/c/b/af;->a(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/x;

    move-result-object v5

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/a/b/c/b/am;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/c/b/h;)V

    invoke-virtual {p0, v4}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    invoke-virtual {p0, v2}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    new-instance v0, Lcom/a/b/c/b/z;

    invoke-direct {v0, v1}, Lcom/a/b/c/b/z;-><init>(Lcom/a/b/e/b/ad;)V

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/ai;->b(Lcom/a/b/c/b/l;)V

    invoke-virtual {p0, v3}, Lcom/a/b/c/b/ai;->b(Lcom/a/b/c/b/l;)V

    invoke-virtual {p0, v6}, Lcom/a/b/c/b/ai;->b(Lcom/a/b/c/b/l;)V

    return-void

    :cond_6f
    invoke-virtual {v3, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v6

    iget-object v7, p0, Lcom/a/b/c/b/ai;->b:Lcom/a/b/c/b/af;

    invoke-static {v7}, Lcom/a/b/c/b/af;->a(Lcom/a/b/c/b/af;)Lcom/a/b/c/b/b;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/a/b/c/b/b;->a(I)Lcom/a/b/c/b/h;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_82
    sget-object v0, Lcom/a/b/c/b/o;->T:Lcom/a/b/c/b/n;

    goto :goto_51
.end method

.method public a(Lcom/a/b/e/b/af;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/af;->g()Lcom/a/b/e/b/ad;

    move-result-object v3

    invoke-static {p1}, Lcom/a/b/c/b/ae;->a(Lcom/a/b/e/b/j;)Lcom/a/b/c/b/n;

    move-result-object v4

    invoke-virtual {p1}, Lcom/a/b/e/b/af;->f()Lcom/a/b/e/b/aa;

    move-result-object v5

    invoke-virtual {p1}, Lcom/a/b/e/b/af;->g_()Lcom/a/b/e/c/a;

    move-result-object v6

    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    const/4 v7, 0x6

    if-eq v2, v7, :cond_32

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BRANCH_THROW got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget-object v2, p0, Lcom/a/b/c/b/ai;->d:Lcom/a/b/c/b/h;

    invoke-virtual {p0, v2}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->e()Z

    move-result v2

    if-eqz v2, :cond_4a

    new-instance v0, Lcom/a/b/c/b/i;

    invoke-virtual {p1}, Lcom/a/b/e/b/af;->j()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-direct {v0, v4, v3, v1, v6}, Lcom/a/b/c/b/i;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    :goto_49
    return-void

    :cond_4a
    invoke-direct {p0}, Lcom/a/b/c/b/ai;->a()Lcom/a/b/e/b/u;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/a/b/c/b/af;->a(Lcom/a/b/e/b/j;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v8

    invoke-virtual {v4}, Lcom/a/b/c/b/n;->d()Z

    move-result v2

    if-nez v2, :cond_7b

    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    const/16 v9, 0x2b

    if-eq v2, v9, :cond_7b

    move v2, v0

    :goto_61
    if-eqz v7, :cond_64

    move v0, v1

    :cond_64
    if-eq v2, v0, :cond_7d

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insn with result/move-result-pseudo mismatch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    move v2, v1

    goto :goto_61

    :cond_7d
    invoke-virtual {v5}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_96

    invoke-virtual {v4}, Lcom/a/b/c/b/n;->a()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_96

    new-instance v0, Lcom/a/b/c/b/aj;

    invoke-direct {v0, v4, v3, v8}, Lcom/a/b/c/b/aj;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    :goto_92
    invoke-virtual {p0, v0}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    goto :goto_49

    :cond_96
    new-instance v0, Lcom/a/b/c/b/i;

    invoke-direct {v0, v4, v3, v8, v6}, Lcom/a/b/c/b/i;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    goto :goto_92
.end method

.method public a(Lcom/a/b/e/b/ag;)V
    .registers 7

    invoke-virtual {p1}, Lcom/a/b/e/b/ag;->g()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-static {p1}, Lcom/a/b/c/b/ae;->a(Lcom/a/b/e/b/j;)Lcom/a/b/c/b/n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/e/b/ag;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1b

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-direct {p0}, Lcom/a/b/c/b/ai;->a()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v2}, Lcom/a/b/c/b/n;->d()Z

    move-result v4

    if-eqz v3, :cond_3d

    const/4 v0, 0x1

    :goto_26
    if-eq v4, v0, :cond_3f

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insn with result/move-result-pseudo mismatch"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_26

    :cond_3f
    iget-object v0, p0, Lcom/a/b/c/b/ai;->d:Lcom/a/b/c/b/h;

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    new-instance v0, Lcom/a/b/c/b/aj;

    invoke-static {p1, v3}, Lcom/a/b/c/b/af;->a(Lcom/a/b/e/b/j;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/a/b/c/b/aj;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/b;Lcom/a/b/c/b/h;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/c/b/ai;->c:Lcom/a/b/e/b/b;

    iput-object p2, p0, Lcom/a/b/c/b/ai;->d:Lcom/a/b/c/b/h;

    return-void
.end method

.method public a(Lcom/a/b/e/b/i;)V
    .registers 8

    invoke-virtual {p1}, Lcom/a/b/e/b/i;->g()Lcom/a/b/e/b/ad;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/b/i;->e()Lcom/a/b/e/c/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/e/b/i;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/e/b/i;->f()Lcom/a/b/e/b/aa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/aa;->d()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v3, Lcom/a/b/c/b/h;

    invoke-direct {v3, v0}, Lcom/a/b/c/b/h;-><init>(Lcom/a/b/e/b/ad;)V

    new-instance v4, Lcom/a/b/c/b/a;

    iget-object v5, p0, Lcom/a/b/c/b/ai;->d:Lcom/a/b/c/b/h;

    invoke-direct {v4, v0, v5, v2, v1}, Lcom/a/b/c/b/a;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/c/b/h;Ljava/util/ArrayList;Lcom/a/b/e/c/a;)V

    new-instance v1, Lcom/a/b/c/b/am;

    sget-object v2, Lcom/a/b/c/b/o;->N:Lcom/a/b/c/b/n;

    invoke-static {p1}, Lcom/a/b/c/b/af;->a(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/x;

    move-result-object v5

    invoke-direct {v1, v2, v0, v5, v3}, Lcom/a/b/c/b/am;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/c/b/h;)V

    iget-object v2, p0, Lcom/a/b/c/b/ai;->d:Lcom/a/b/c/b/h;

    invoke-virtual {p0, v2}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    invoke-virtual {p0, v1}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    new-instance v1, Lcom/a/b/c/b/z;

    invoke-direct {v1, v0}, Lcom/a/b/c/b/z;-><init>(Lcom/a/b/e/b/ad;)V

    invoke-virtual {p0, v1}, Lcom/a/b/c/b/ai;->b(Lcom/a/b/c/b/l;)V

    invoke-virtual {p0, v3}, Lcom/a/b/c/b/ai;->b(Lcom/a/b/c/b/l;)V

    invoke-virtual {p0, v4}, Lcom/a/b/c/b/ai;->b(Lcom/a/b/c/b/l;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/n;)V
    .registers 9

    invoke-virtual {p1}, Lcom/a/b/e/b/n;->g()Lcom/a/b/e/b/ad;

    move-result-object v0

    invoke-static {p1}, Lcom/a/b/c/b/ae;->a(Lcom/a/b/e/b/j;)Lcom/a/b/c/b/n;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/e/b/n;->f()Lcom/a/b/e/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->d()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected BRANCH_THROW got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->e()Z

    move-result v2

    if-nez v2, :cond_3a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected call-like operation"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-object v2, p0, Lcom/a/b/c/b/ai;->d:Lcom/a/b/c/b/h;

    invoke-virtual {p0, v2}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    new-instance v2, Lcom/a/b/c/b/y;

    invoke-virtual {p1}, Lcom/a/b/e/b/n;->j()Lcom/a/b/e/b/x;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/a/b/e/c/a;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/n;->e()Lcom/a/b/e/c/z;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/a/b/e/b/n;->m()Lcom/a/b/e/c/ab;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/a/b/c/b/y;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;[Lcom/a/b/e/c/a;)V

    invoke-virtual {p0, v2}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    return-void
.end method

.method public a(Lcom/a/b/e/b/r;)V
    .registers 9

    invoke-virtual {p1}, Lcom/a/b/e/b/r;->g()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-static {p1}, Lcom/a/b/c/b/ae;->a(Lcom/a/b/e/b/j;)Lcom/a/b/c/b/n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/e/b/r;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/4 v0, 0x3

    if-ne v3, v0, :cond_5b

    iget-object v0, p0, Lcom/a/b/c/b/ai;->b:Lcom/a/b/c/b/af;

    invoke-static {v0}, Lcom/a/b/c/b/af;->b(Lcom/a/b/c/b/af;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p1}, Lcom/a/b/e/b/r;->h()Lcom/a/b/e/b/u;

    move-result-object v3

    new-instance v4, Lcom/a/b/c/b/aj;

    invoke-virtual {p1}, Lcom/a/b/e/b/r;->g_()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    iget-object v5, p0, Lcom/a/b/c/b/ai;->b:Lcom/a/b/c/b/af;

    invoke-static {v5}, Lcom/a/b/c/b/af;->c(Lcom/a/b/c/b/af;)I

    move-result v5

    iget-object v6, p0, Lcom/a/b/c/b/ai;->b:Lcom/a/b/c/b/af;

    invoke-static {v6}, Lcom/a/b/c/b/af;->d(Lcom/a/b/c/b/af;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-direct {v4, v2, v1, v0}, Lcom/a/b/c/b/aj;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    invoke-virtual {p0, v4}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    new-instance v0, Lcom/a/b/c/b/i;

    invoke-static {p1}, Lcom/a/b/c/b/af;->a(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/x;

    move-result-object v3

    invoke-virtual {p1}, Lcom/a/b/e/b/r;->g_()Lcom/a/b/e/c/a;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/a/b/c/b/i;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    goto :goto_5a
.end method

.method public a(Lcom/a/b/e/b/s;)V
    .registers 8

    invoke-virtual {p1}, Lcom/a/b/e/b/s;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_d

    :cond_c
    :goto_c
    :pswitch_c  #0x3
    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->a()I

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_c

    invoke-virtual {p1}, Lcom/a/b/e/b/s;->g()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-static {p1}, Lcom/a/b/c/b/ae;->a(Lcom/a/b/e/b/j;)Lcom/a/b/c/b/n;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    :pswitch_24  #0x5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c  #0x1, 0x2, 0x6
    new-instance v0, Lcom/a/b/c/b/aj;

    invoke-static {p1}, Lcom/a/b/c/b/af;->a(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/x;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/a/b/c/b/aj;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    :goto_35
    invoke-virtual {p0, v0}, Lcom/a/b/c/b/ai;->a(Lcom/a/b/c/b/l;)V

    goto :goto_c

    :pswitch_39  #0x4
    iget-object v0, p0, Lcom/a/b/c/b/ai;->c:Lcom/a/b/e/b/b;

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v3

    new-instance v0, Lcom/a/b/c/b/am;

    invoke-static {p1}, Lcom/a/b/c/b/af;->a(Lcom/a/b/e/b/j;)Lcom/a/b/e/b/x;

    move-result-object v4

    iget-object v5, p0, Lcom/a/b/c/b/ai;->b:Lcom/a/b/c/b/af;

    invoke-static {v5}, Lcom/a/b/c/b/af;->a(Lcom/a/b/c/b/af;)Lcom/a/b/c/b/b;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/a/b/c/b/b;->a(I)Lcom/a/b/c/b/h;

    move-result-object v3

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/a/b/c/b/am;-><init>(Lcom/a/b/c/b/n;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/c/b/h;)V

    goto :goto_35

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_2c  #00000002
        :pswitch_c  #00000003
        :pswitch_39  #00000004
        :pswitch_24  #00000005
        :pswitch_2c  #00000006
    .end packed-switch
.end method

.method protected b(Lcom/a/b/c/b/l;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/ai;->a:Lcom/a/b/c/b/aa;

    invoke-virtual {v0, p1}, Lcom/a/b/c/b/aa;->b(Lcom/a/b/c/b/l;)V

    return-void
.end method
