.class public final Lcom/a/b/e/c/ah;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/a;
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no zero for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/a/b/e/c/g;->a:Lcom/a/b/e/c/g;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/a/b/e/c/h;->a:Lcom/a/b/e/c/h;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/a/b/e/c/k;->a:Lcom/a/b/e/c/k;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/a/b/e/c/l;->a:Lcom/a/b/e/c/l;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/a/b/e/c/o;->a:Lcom/a/b/e/c/o;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/a/b/e/c/p;->b:Lcom/a/b/e/c/p;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/a/b/e/c/w;->a:Lcom/a/b/e/c/w;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/a/b/e/c/ac;->a:Lcom/a/b/e/c/ac;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/a/b/e/c/s;->a:Lcom/a/b/e/c/s;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
