.class public final Lcom/a/b/c/b/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/a/b/c/b/r;

.field private final e:Z


# direct methods
.method public constructor <init>(IIILcom/a/b/c/b/r;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/a/b/d/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus opcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-static {p2}, Lcom/a/b/d/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static {p3}, Lcom/a/b/d/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus nextOpcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    if-nez p4, :cond_37

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iput p1, p0, Lcom/a/b/c/b/n;->a:I

    iput p2, p0, Lcom/a/b/c/b/n;->b:I

    iput p3, p0, Lcom/a/b/c/b/n;->c:I

    iput-object p4, p0, Lcom/a/b/c/b/n;->d:Lcom/a/b/c/b/r;

    iput-boolean p5, p0, Lcom/a/b/c/b/n;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/n;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/n;->b:I

    return v0
.end method

.method public c()Lcom/a/b/c/b/r;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/n;->d:Lcom/a/b/c/b/r;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/c/b/n;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/n;->a:I

    invoke-static {v0}, Lcom/a/b/d/b;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/n;->c:I

    return v0
.end method

.method public g()Lcom/a/b/c/b/n;
    .registers 4

    iget v0, p0, Lcom/a/b/c/b/n;->a:I

    packed-switch v0, :pswitch_data_3e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus opcode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a  #0x32
    sget-object v0, Lcom/a/b/c/b/o;->aa:Lcom/a/b/c/b/n;

    :goto_1c
    return-object v0

    :pswitch_1d  #0x33
    sget-object v0, Lcom/a/b/c/b/o;->Z:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_20  #0x34
    sget-object v0, Lcom/a/b/c/b/o;->ac:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_23  #0x35
    sget-object v0, Lcom/a/b/c/b/o;->ab:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_26  #0x36
    sget-object v0, Lcom/a/b/c/b/o;->ae:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_29  #0x37
    sget-object v0, Lcom/a/b/c/b/o;->ad:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_2c  #0x38
    sget-object v0, Lcom/a/b/c/b/o;->ag:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_2f  #0x39
    sget-object v0, Lcom/a/b/c/b/o;->af:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_32  #0x3a
    sget-object v0, Lcom/a/b/c/b/o;->ai:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_35  #0x3b
    sget-object v0, Lcom/a/b/c/b/o;->ah:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_38  #0x3c
    sget-object v0, Lcom/a/b/c/b/o;->ak:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_3b  #0x3d
    sget-object v0, Lcom/a/b/c/b/o;->aj:Lcom/a/b/c/b/n;

    goto :goto_1c

    :pswitch_data_3e
    .packed-switch 0x32
        :pswitch_1a  #00000032
        :pswitch_1d  #00000033
        :pswitch_20  #00000034
        :pswitch_23  #00000035
        :pswitch_26  #00000036
        :pswitch_29  #00000037
        :pswitch_2c  #00000038
        :pswitch_2f  #00000039
        :pswitch_32  #0000003a
        :pswitch_35  #0000003b
        :pswitch_38  #0000003c
        :pswitch_3b  #0000003d
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/b/n;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
