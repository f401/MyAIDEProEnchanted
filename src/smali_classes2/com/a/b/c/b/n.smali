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

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus opcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lcom/a/b/d/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p3}, Lcom/a/b/d/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus nextOpcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
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

    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
    sget-object v0, Lcom/a/b/c/b/o;->aa:Lcom/a/b/c/b/n;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/a/b/c/b/o;->Z:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/a/b/c/b/o;->ac:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/a/b/c/b/o;->ab:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/a/b/c/b/o;->ae:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/a/b/c/b/o;->ad:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/a/b/c/b/o;->ag:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/a/b/c/b/o;->af:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/a/b/c/b/o;->ai:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/a/b/c/b/o;->ah:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/a/b/c/b/o;->ak:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/a/b/c/b/o;->aj:Lcom/a/b/c/b/n;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/c/b/n;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
