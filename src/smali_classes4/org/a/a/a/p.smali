.class public abstract Lorg/a/a/a/p;
.super Lorg/a/a/a/u;

# interfaces
.implements Lorg/a/a/a/ac;


# instance fields
.field public i:Lorg/a/a/a/c;

.field protected j:Lorg/a/a/a/c/m;

.field protected k:Lorg/a/a/a/ab;

.field public l:Lorg/a/a/a/aa;

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:I

.field public r:I

.field public final s:Lorg/a/a/a/c/g;

.field public t:I

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/a/a/a/c;)V
    .registers 3

    invoke-direct {p0}, Lorg/a/a/a/u;-><init>()V

    sget-object v0, Lorg/a/a/a/m;->a:Lorg/a/a/a/ab;

    iput-object v0, p0, Lorg/a/a/a/p;->k:Lorg/a/a/a/ab;

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/p;->m:I

    new-instance v0, Lorg/a/a/a/c/g;

    invoke-direct {v0}, Lorg/a/a/a/c/g;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/p;->s:Lorg/a/a/a/c/g;

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/p;->t:I

    iput-object p1, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    new-instance v0, Lorg/a/a/a/c/m;

    invoke-direct {v0, p0, p1}, Lorg/a/a/a/c/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/a/a/a/p;->j:Lorg/a/a/a/c/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v3, :cond_12

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    aget-char v4, v2, v0

    invoke-virtual {p0, v4}, Lorg/a/a/a/p;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/a/p;->t:I

    return-void
.end method

.method public a(Lorg/a/a/a/aa;)V
    .registers 2

    iput-object p1, p0, Lorg/a/a/a/p;->l:Lorg/a/a/a/aa;

    return-void
.end method

.method public a(Lorg/a/a/a/o;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    new-instance v0, Lorg/a/a/a/c/m;

    iget-object v1, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-direct {v0, p0, v1}, Lorg/a/a/a/c/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/a/a/a/p;->j:Lorg/a/a/a/c/m;

    invoke-virtual {p0}, Lorg/a/a/a/p;->c()V

    check-cast p1, Lorg/a/a/a/c;

    iput-object p1, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    new-instance v0, Lorg/a/a/a/c/m;

    iget-object v1, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-direct {v0, p0, v1}, Lorg/a/a/a/c/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/a/a/a/p;->j:Lorg/a/a/a/c/m;

    return-void
.end method

.method public a(Lorg/a/a/a/q;)V
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/a/a/c;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Lorg/a/a/a/p;->m()Lorg/a/a/a/a/m;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ab;

    iget-object v1, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-virtual {v0, v1}, Lorg/a/a/a/a/ab;->b(Lorg/a/a/a/c;)V

    :cond_15
    return-void
.end method

.method public a()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/p;->s:Lorg/a/a/a/c/g;

    iget v1, p0, Lorg/a/a/a/p;->t:I

    invoke-virtual {v0, v1}, Lorg/a/a/a/c/g;->d(I)V

    invoke-virtual {p0, p1}, Lorg/a/a/a/p;->a(I)V

    return-void
.end method

.method public b(Lorg/a/a/a/q;)V
    .registers 9

    iget-object v0, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    iget v1, p0, Lorg/a/a/a/p;->m:I

    iget-object v2, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v2}, Lorg/a/a/a/c;->b()I

    move-result v2

    invoke-static {v1, v2}, Lorg/a/a/a/c/h;->a(II)Lorg/a/a/a/c/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/a/a/a/c;->a(Lorg/a/a/a/c/h;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token recognition error at: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/a/a/a/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/a/a/a/p;->o()Lorg/a/a/a/a;

    move-result-object v0

    const/4 v2, 0x0

    iget v3, p0, Lorg/a/a/a/p;->n:I

    iget v4, p0, Lorg/a/a/a/p;->o:I

    move-object v1, p0

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lorg/a/a/a/a;->a(Lorg/a/a/a/u;Ljava/lang/Object;IILjava/lang/String;Lorg/a/a/a/t;)V

    return-void
.end method

.method public c()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v0, v1}, Lorg/a/a/a/c;->b(I)V

    :cond_c
    iput-object v3, p0, Lorg/a/a/a/p;->l:Lorg/a/a/a/aa;

    iput v1, p0, Lorg/a/a/a/p;->r:I

    iput v1, p0, Lorg/a/a/a/p;->q:I

    iput v2, p0, Lorg/a/a/a/p;->m:I

    iput v2, p0, Lorg/a/a/a/p;->o:I

    iput v2, p0, Lorg/a/a/a/p;->n:I

    iput-object v3, p0, Lorg/a/a/a/p;->u:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/a/a/a/p;->p:Z

    iput v1, p0, Lorg/a/a/a/p;->t:I

    iget-object v0, p0, Lorg/a/a/a/p;->s:Lorg/a/a/a/c/g;

    invoke-virtual {v0}, Lorg/a/a/a/c/g;->c()V

    invoke-virtual {p0}, Lorg/a/a/a/p;->m()Lorg/a/a/a/a/m;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ab;

    invoke-virtual {v0}, Lorg/a/a/a/a/ab;->a()V

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/a/p;->r:I

    return-void
.end method

.method public d()Lorg/a/a/a/aa;
    .registers 6

    const/4 v1, -0x3

    iget-object v0, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "nextToken requires a non-null input stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v0}, Lorg/a/a/a/c;->d()I

    move-result v2

    :cond_13
    :try_start_13
    iget-boolean v0, p0, Lorg/a/a/a/p;->p:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lorg/a/a/a/p;->i()Lorg/a/a/a/aa;

    iget-object v0, p0, Lorg/a/a/a/p;->l:Lorg/a/a/a/aa;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_90

    iget-object v1, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v1, v2}, Lorg/a/a/a/c;->a(I)V

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    :try_start_23
    iput-object v0, p0, Lorg/a/a/a/p;->l:Lorg/a/a/a/aa;

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/p;->q:I

    iget-object v0, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v0}, Lorg/a/a/a/c;->b()I

    move-result v0

    iput v0, p0, Lorg/a/a/a/p;->m:I

    invoke-virtual {p0}, Lorg/a/a/a/p;->m()Lorg/a/a/a/a/m;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ab;

    invoke-virtual {v0}, Lorg/a/a/a/a/ab;->c()I

    move-result v0

    iput v0, p0, Lorg/a/a/a/p;->o:I

    invoke-virtual {p0}, Lorg/a/a/a/p;->m()Lorg/a/a/a/a/m;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ab;

    invoke-virtual {v0}, Lorg/a/a/a/a/ab;->b()I

    move-result v0

    iput v0, p0, Lorg/a/a/a/p;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/p;->u:Ljava/lang/String;

    :cond_4b
    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/p;->r:I
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_90

    :try_start_4e
    invoke-virtual {p0}, Lorg/a/a/a/p;->m()Lorg/a/a/a/a/m;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ab;

    iget-object v3, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    iget v4, p0, Lorg/a/a/a/p;->t:I

    invoke-virtual {v0, v3, v4}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;I)I
    :try_end_5b
    .catch Lorg/a/a/a/q; {:try_start_4e .. :try_end_5b} :catch_87
    .catchall {:try_start_4e .. :try_end_5b} :catchall_90

    move-result v0

    :goto_5c
    :try_start_5c
    iget-object v3, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/a/a/a/c;->c(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_69

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/a/a/a/p;->p:Z

    :cond_69
    iget v3, p0, Lorg/a/a/a/p;->r:I

    if-nez v3, :cond_6f

    iput v0, p0, Lorg/a/a/a/p;->r:I

    :cond_6f
    iget v0, p0, Lorg/a/a/a/p;->r:I

    if-eq v0, v1, :cond_13

    iget v0, p0, Lorg/a/a/a/p;->r:I

    const/4 v3, -0x2

    if-eq v0, v3, :cond_4b

    iget-object v0, p0, Lorg/a/a/a/p;->l:Lorg/a/a/a/aa;

    if-nez v0, :cond_7f

    invoke-virtual {p0}, Lorg/a/a/a/p;->h()Lorg/a/a/a/aa;

    :cond_7f
    iget-object v0, p0, Lorg/a/a/a/p;->l:Lorg/a/a/a/aa;
    :try_end_81
    .catchall {:try_start_5c .. :try_end_81} :catchall_90

    iget-object v1, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v1, v2}, Lorg/a/a/a/c;->a(I)V

    goto :goto_21

    :catch_87
    move-exception v0

    :try_start_88
    invoke-virtual {p0, v0}, Lorg/a/a/a/p;->b(Lorg/a/a/a/q;)V

    invoke-virtual {p0, v0}, Lorg/a/a/a/p;->a(Lorg/a/a/a/q;)V
    :try_end_8e
    .catchall {:try_start_88 .. :try_end_8e} :catchall_90

    move v0, v1

    goto :goto_5c

    :catchall_90
    move-exception v0

    iget-object v1, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v1, v2}, Lorg/a/a/a/c;->a(I)V

    throw v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/a/p;->q:I

    return-void
.end method

.method public e(I)Ljava/lang/String;
    .registers 3

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sparse-switch p1, :sswitch_data_16

    :goto_8
    return-object v0

    :sswitch_9
    const-string v0, "<EOF>"

    goto :goto_8

    :sswitch_c
    const-string v0, "\\n"

    goto :goto_8

    :sswitch_f
    const-string v0, "\\t"

    goto :goto_8

    :sswitch_12
    const-string v0, "\\r"

    goto :goto_8

    nop

    :sswitch_data_16
    .sparse-switch
        -0x1 -> :sswitch_9
        0x9 -> :sswitch_f
        0xa -> :sswitch_c
        0xd -> :sswitch_12
    .end sparse-switch
.end method

.method public e()V
    .registers 2

    const/4 v0, -0x3

    iput v0, p0, Lorg/a/a/a/p;->r:I

    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, -0x2

    iput v0, p0, Lorg/a/a/a/p;->r:I

    return-void
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/p;->s:Lorg/a/a/a/c/g;

    invoke-virtual {v0}, Lorg/a/a/a/c/g;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lorg/a/a/a/p;->s:Lorg/a/a/a/c/g;

    invoke-virtual {v0}, Lorg/a/a/a/c/g;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/p;->a(I)V

    iget v0, p0, Lorg/a/a/a/p;->t:I

    return v0
.end method

.method public h()Lorg/a/a/a/aa;
    .registers 10

    iget-object v0, p0, Lorg/a/a/a/p;->k:Lorg/a/a/a/ab;

    iget-object v1, p0, Lorg/a/a/a/p;->j:Lorg/a/a/a/c/m;

    iget v2, p0, Lorg/a/a/a/p;->r:I

    iget-object v3, p0, Lorg/a/a/a/p;->u:Ljava/lang/String;

    iget v4, p0, Lorg/a/a/a/p;->q:I

    iget v5, p0, Lorg/a/a/a/p;->m:I

    invoke-virtual {p0}, Lorg/a/a/a/p;->l()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lorg/a/a/a/p;->n:I

    iget v8, p0, Lorg/a/a/a/p;->o:I

    invoke-interface/range {v0 .. v8}, Lorg/a/a/a/ab;->b(Lorg/a/a/a/c/m;ILjava/lang/String;IIIII)Lorg/a/a/a/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/p;->a(Lorg/a/a/a/aa;)V

    return-object v0
.end method

.method public i()Lorg/a/a/a/aa;
    .registers 10

    invoke-virtual {p0}, Lorg/a/a/a/p;->k()I

    move-result v8

    invoke-virtual {p0}, Lorg/a/a/a/p;->j()I

    move-result v7

    iget-object v0, p0, Lorg/a/a/a/p;->k:Lorg/a/a/a/ab;

    iget-object v1, p0, Lorg/a/a/a/p;->j:Lorg/a/a/a/c/m;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v5}, Lorg/a/a/a/c;->b()I

    move-result v5

    iget-object v6, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v6}, Lorg/a/a/a/c;->b()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface/range {v0 .. v8}, Lorg/a/a/a/ab;->b(Lorg/a/a/a/c/m;ILjava/lang/String;IIIII)Lorg/a/a/a/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/p;->a(Lorg/a/a/a/aa;)V

    return-object v0
.end method

.method public j()I
    .registers 2

    invoke-virtual {p0}, Lorg/a/a/a/p;->m()Lorg/a/a/a/a/m;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ab;

    invoke-virtual {v0}, Lorg/a/a/a/a/ab;->b()I

    move-result v0

    return v0
.end method

.method public k()I
    .registers 2

    invoke-virtual {p0}, Lorg/a/a/a/p;->m()Lorg/a/a/a/a/m;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ab;

    invoke-virtual {v0}, Lorg/a/a/a/a/ab;->c()I

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/p;->i:Lorg/a/a/a/c;

    invoke-interface {v0}, Lorg/a/a/a/c;->b()I

    move-result v0

    return v0
.end method
