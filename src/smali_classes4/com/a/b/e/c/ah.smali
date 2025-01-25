.class public final Lcom/a/b/e/c/ah;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/a;
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

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

    :pswitch_20  #0x1
    sget-object v0, Lcom/a/b/e/c/g;->a:Lcom/a/b/e/c/g;

    :goto_22
    return-object v0

    :pswitch_23  #0x2
    sget-object v0, Lcom/a/b/e/c/h;->a:Lcom/a/b/e/c/h;

    goto :goto_22

    :pswitch_26  #0x3
    sget-object v0, Lcom/a/b/e/c/k;->a:Lcom/a/b/e/c/k;

    goto :goto_22

    :pswitch_29  #0x4
    sget-object v0, Lcom/a/b/e/c/l;->a:Lcom/a/b/e/c/l;

    goto :goto_22

    :pswitch_2c  #0x5
    sget-object v0, Lcom/a/b/e/c/o;->a:Lcom/a/b/e/c/o;

    goto :goto_22

    :pswitch_2f  #0x6
    sget-object v0, Lcom/a/b/e/c/p;->b:Lcom/a/b/e/c/p;

    goto :goto_22

    :pswitch_32  #0x7
    sget-object v0, Lcom/a/b/e/c/w;->a:Lcom/a/b/e/c/w;

    goto :goto_22

    :pswitch_35  #0x8
    sget-object v0, Lcom/a/b/e/c/ac;->a:Lcom/a/b/e/c/ac;

    goto :goto_22

    :pswitch_38  #0x9
    sget-object v0, Lcom/a/b/e/c/s;->a:Lcom/a/b/e/c/s;

    goto :goto_22

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_23  #00000002
        :pswitch_26  #00000003
        :pswitch_29  #00000004
        :pswitch_2c  #00000005
        :pswitch_2f  #00000006
        :pswitch_32  #00000007
        :pswitch_35  #00000008
        :pswitch_38  #00000009
    .end packed-switch
.end method
