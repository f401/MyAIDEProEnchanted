.class public Lcom/a/b/a/b/ap;
.super Lcom/a/b/a/b/a;


# direct methods
.method public constructor <init>(Lcom/a/b/e/d/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/a/b/a;-><init>(Lcom/a/b/e/d/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/a/b/q;II)V
    .registers 7

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldn\'t happen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/a/b/q;)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/d;

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->c(I)Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->d()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->e()I

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/a/b/a/b/ap;->c(I)Lcom/a/b/e/d/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/a/b/a/b/ap;->b(Lcom/a/b/e/d/d;)V

    shr-int/lit8 v0, v0, 0x4

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/a/b/a/b/aa;

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->g()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/aa;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->c(I)Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/a/b/a/b/q;->a(Lcom/a/b/e/d/c;)V

    :cond_2
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/j;

    invoke-virtual {v0}, Lcom/a/b/e/c/j;->b()Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/e/d/c;->a(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->t()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v0, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_1
        :pswitch_b
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
