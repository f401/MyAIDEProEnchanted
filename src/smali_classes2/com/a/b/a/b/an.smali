.class Lcom/a/b/a/b/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/a/b/n;


# instance fields
.field final a:Lcom/a/b/a/b/am;

.field private final b:Lcom/a/b/a/b/x;

.field private c:Lcom/a/b/a/b/q;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/a/b/a/b/am;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/am;)Lcom/a/b/a/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    return-void
.end method

.method private a(Lcom/a/b/e/d/c;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->a()Lcom/a/b/e/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return type mismatch: prototype indicates "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but encountered type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/am;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/an;->d:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/a/b/a/b/an;->d:I

    return-void
.end method

.method public a(III)V
    .registers 7

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid opcode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(IIII)V
    .registers 9

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/a/b/a/b/an;->a(III)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    :goto_1
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p4}, Lcom/a/b/a/b/x;->b(I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p2, p1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public a(IIIILcom/a/b/e/d/c;I)V
    .registers 12

    const/4 v1, 0x0

    const/16 v0, 0x36

    if-ne p1, v0, :cond_1

    add-int v0, p2, p3

    :goto_0
    iget-object v2, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    invoke-static {v2}, Lcom/a/b/a/b/am;->b(Lcom/a/b/a/b/am;)Lcom/a/b/a/b/t;

    move-result-object v2

    invoke-virtual {v2, v0, p4}, Lcom/a/b/a/b/t;->a(II)Lcom/a/b/a/b/u;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/a/b/a/b/u;->b()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->e()I

    move-result v3

    invoke-virtual {p5}, Lcom/a/b/e/d/c;->e()I

    move-result v4

    if-eq v3, v4, :cond_0

    move-object v0, v1

    move-object v2, p5

    :cond_0
    :goto_1
    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/b/a/b/an;->a(III)V

    :goto_2
    return-void

    :cond_1
    move v0, p2

    goto :goto_0

    :cond_2
    move-object v2, p5

    goto :goto_1

    :sswitch_0
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, p4}, Lcom/a/b/a/b/x;->b(Lcom/a/b/a/b/q;I)V

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-interface {v1, v0}, Lcom/a/b/a/b/x;->a(Z)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p5}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/d/c;)V

    :goto_4
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p2, p1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_1
    if-nez v0, :cond_4

    move-object v0, v1

    :goto_5
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v3, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v3, p5}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v1, p5}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/d/c;)V

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v1, p4, v2, v0}, Lcom/a/b/a/b/x;->a(ILcom/a/b/e/d/c;Lcom/a/b/e/b/o;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/a/b/a/b/u;->a()Lcom/a/b/e/b/o;

    move-result-object v0

    goto :goto_5

    :sswitch_2
    if-nez v0, :cond_5

    :goto_6
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v3, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v3, p4}, Lcom/a/b/a/b/x;->b(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p4, v2, v1}, Lcom/a/b/a/b/x;->a(ILcom/a/b/e/d/c;Lcom/a/b/e/b/o;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p5}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/d/c;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p6}, Lcom/a/b/a/b/x;->a(I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-static {p6}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/c/a;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/a/b/a/b/u;->a()Lcom/a/b/e/b/o;

    move-result-object v1

    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x36 -> :sswitch_1
        0x84 -> :sswitch_2
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(IIILcom/a/b/a/b/ao;I)V
    .registers 9

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p5}, Lcom/a/b/a/b/x;->a(I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/ao;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p2, p1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    return-void
.end method

.method public a(IIILcom/a/b/e/c/a;I)V
    .registers 10

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    :goto_0
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p5}, Lcom/a/b/a/b/x;->a(I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/c/a;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p2, p1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_0

    :sswitch_1
    move-object v0, p4

    check-cast v0, Lcom/a/b/e/c/n;

    invoke-virtual {v0}, Lcom/a/b/e/c/n;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_0

    :sswitch_3
    move-object v0, p4

    check-cast v0, Lcom/a/b/e/c/n;

    invoke-virtual {v0}, Lcom/a/b/e/c/n;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v3, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v1, v2, v3, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto :goto_0

    :sswitch_4
    instance-of v0, p4, Lcom/a/b/e/c/q;

    if-eqz v0, :cond_4

    check-cast p4, Lcom/a/b/e/c/q;

    invoke-virtual {p4}, Lcom/a/b/e/c/q;->m()Lcom/a/b/e/c/z;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/z;

    invoke-static {v2, p1, v0}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/am;ILcom/a/b/e/c/z;)V

    :goto_1
    instance-of v0, v1, Lcom/a/b/e/c/z;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/z;

    invoke-virtual {v0}, Lcom/a/b/e/c/z;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    invoke-static {v0, p1}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/am;I)V

    :cond_0
    const/16 v0, 0xb8

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/z;

    invoke-virtual {v0, v2}, Lcom/a/b/e/c/z;->a(Z)Lcom/a/b/e/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v3, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v2, v3, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/a;)V

    move-object p4, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    invoke-static {v0, p1}, Lcom/a/b/a/b/am;->b(Lcom/a/b/a/b/am;I)V

    check-cast p4, Lcom/a/b/e/c/r;

    invoke-virtual {p4}, Lcom/a/b/e/c/r;->f()Lcom/a/b/e/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/a;)V

    invoke-virtual {p4}, Lcom/a/b/e/c/r;->a()Lcom/a/b/e/c/j;

    move-result-object p4

    goto/16 :goto_0

    :sswitch_6
    sget-object v0, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    invoke-static {v0, p5}, Lcom/a/b/e/d/a;->a(Lcom/a/b/e/d/c;I)Lcom/a/b/e/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/a;)V

    goto/16 :goto_0

    :sswitch_7
    instance-of v0, p4, Lcom/a/b/e/c/y;

    if-nez v0, :cond_2

    instance-of v0, p4, Lcom/a/b/e/c/ab;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    invoke-static {v0, p4}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/am;Lcom/a/b/e/c/a;)V

    :cond_3
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    goto/16 :goto_0

    :cond_4
    move-object v1, p4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
        0xb3 -> :sswitch_1
        0xb4 -> :sswitch_2
        0xb5 -> :sswitch_3
        0xb6 -> :sswitch_4
        0xb7 -> :sswitch_4
        0xb8 -> :sswitch_4
        0xb9 -> :sswitch_4
        0xba -> :sswitch_5
        0xbd -> :sswitch_0
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_2
        0xc5 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(IIILcom/a/b/e/d/c;)V
    .registers 11

    const/16 v5, 0x212

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/b/a/b/an;->a(III)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/d/c;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p2, p1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->g:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->e:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->d:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_1

    :sswitch_6
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    sget-object v0, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    invoke-direct {p0, v0}, Lcom/a/b/a/b/an;->a(Lcom/a/b/e/d/c;)V

    goto :goto_1

    :sswitch_7
    sget-object v0, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    if-ne p4, v0, :cond_1b

    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    invoke-direct {p0, v0}, Lcom/a/b/a/b/an;->a(Lcom/a/b/e/d/c;)V

    goto :goto_1

    :sswitch_8
    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, v4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    goto :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->q()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type mismatch: expected array type but encountered "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/am;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto/16 :goto_1

    :sswitch_a
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto/16 :goto_1

    :sswitch_b
    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/a/b/a/b/am;->a(Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-ne v0, v1, :cond_3

    sget-object p4, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    :goto_3
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v3, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v1, v2, v0, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object p4

    goto :goto_3

    :sswitch_c
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p4, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_1

    :sswitch_d
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, p4, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_1

    :sswitch_e
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->g:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->g:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_1

    :sswitch_f
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->e:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->e:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_1

    :sswitch_10
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->d:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->d:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_1

    :sswitch_11
    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v2}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v2

    invoke-virtual {p4}, Lcom/a/b/e/d/c;->k()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->b(I)Z

    move-result v0

    invoke-static {p4, v1}, Lcom/a/b/a/b/am;->a(Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)Lcom/a/b/e/d/c;

    move-result-object v1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-ne v1, v0, :cond_6

    sget-object p4, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v3, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v2, v1, v3, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object p4

    goto :goto_5

    :sswitch_12
    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->l()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, v4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    const/16 v0, 0x11

    :goto_6
    const/16 v1, 0x5c

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v1, v0}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->k()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    const/16 v0, 0x2121

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :sswitch_13
    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, v4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :sswitch_14
    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->k()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->k()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_b
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, v5}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :sswitch_15
    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v2}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_c
    invoke-virtual {v2, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, v5}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v2, v1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const/16 v1, 0x3213

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :sswitch_16
    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v2}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->l()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_f
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, v5}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v2, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v2, v1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const v1, 0x32132

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :sswitch_17
    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v2}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, v5}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v2, v1}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v2, v1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const/16 v1, 0x3213

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :cond_14
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_15
    invoke-virtual {v2, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->k()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v2, v1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const v1, 0x32132

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :cond_16
    invoke-virtual {v2, v1}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->k()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const v1, 0x432143

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :cond_17
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :sswitch_18
    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->k()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->k()Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_1a
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_1

    :cond_1b
    move-object v0, p4

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2e -> :sswitch_b
        0x4f -> :sswitch_11
        0x57 -> :sswitch_8
        0x58 -> :sswitch_12
        0x59 -> :sswitch_13
        0x5a -> :sswitch_14
        0x5b -> :sswitch_15
        0x5c -> :sswitch_12
        0x5d -> :sswitch_16
        0x5e -> :sswitch_17
        0x5f -> :sswitch_18
        0x60 -> :sswitch_c
        0x64 -> :sswitch_c
        0x68 -> :sswitch_c
        0x6c -> :sswitch_c
        0x70 -> :sswitch_c
        0x74 -> :sswitch_1
        0x78 -> :sswitch_d
        0x7a -> :sswitch_d
        0x7c -> :sswitch_d
        0x7e -> :sswitch_c
        0x80 -> :sswitch_c
        0x82 -> :sswitch_c
        0x85 -> :sswitch_2
        0x86 -> :sswitch_2
        0x87 -> :sswitch_2
        0x88 -> :sswitch_3
        0x89 -> :sswitch_3
        0x8a -> :sswitch_3
        0x8b -> :sswitch_4
        0x8c -> :sswitch_4
        0x8d -> :sswitch_4
        0x8e -> :sswitch_5
        0x8f -> :sswitch_5
        0x90 -> :sswitch_5
        0x91 -> :sswitch_2
        0x92 -> :sswitch_2
        0x93 -> :sswitch_2
        0x94 -> :sswitch_e
        0x95 -> :sswitch_f
        0x96 -> :sswitch_f
        0x97 -> :sswitch_10
        0x98 -> :sswitch_10
        0xac -> :sswitch_7
        0xb1 -> :sswitch_6
        0xbe -> :sswitch_9
        0xbf -> :sswitch_a
        0xc2 -> :sswitch_a
        0xc3 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(IILcom/a/b/e/c/ae;Ljava/util/ArrayList;)V
    .registers 8

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p4}, Lcom/a/b/a/b/x;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/c/a;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    const/16 v2, 0xbc

    invoke-interface {v0, v1, p1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    return-void
.end method

.method public a(Lcom/a/b/a/b/q;)V
    .registers 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frame == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    return-void
.end method
