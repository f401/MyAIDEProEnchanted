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

    if-nez v1, :cond_36

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

    :cond_36
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

    packed-switch p1, :pswitch_data_46

    :pswitch_3  #0xa9, 0xaa, 0xab, 0xac, 0xad, 0xae, 0xaf, 0xb0, 0xb1, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xbb, 0xbc, 0xbd, 0xbe, 0xbf, 0xc0, 0xc1, 0xc2, 0xc3, 0xc4, 0xc5
    invoke-virtual {p0, p1, p2, p3}, Lcom/a/b/a/b/an;->a(III)V

    :goto_6
    return-void

    :pswitch_7  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    :goto_10
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p4}, Lcom/a/b/a/b/x;->b(I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p2, p1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    goto :goto_6

    :pswitch_1d  #0xc6, 0xc7
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_10

    :pswitch_27  #0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto :goto_10

    :pswitch_33  #0xa5, 0xa6
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto :goto_10

    :pswitch_3f  #0xa7, 0xa8, 0xc8, 0xc9
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    goto :goto_10

    nop

    :pswitch_data_46
    .packed-switch 0x99
        :pswitch_7  #00000099
        :pswitch_7  #0000009a
        :pswitch_7  #0000009b
        :pswitch_7  #0000009c
        :pswitch_7  #0000009d
        :pswitch_7  #0000009e
        :pswitch_27  #0000009f
        :pswitch_27  #000000a0
        :pswitch_27  #000000a1
        :pswitch_27  #000000a2
        :pswitch_27  #000000a3
        :pswitch_27  #000000a4
        :pswitch_33  #000000a5
        :pswitch_33  #000000a6
        :pswitch_3f  #000000a7
        :pswitch_3f  #000000a8
        :pswitch_3  #000000a9
        :pswitch_3  #000000aa
        :pswitch_3  #000000ab
        :pswitch_3  #000000ac
        :pswitch_3  #000000ad
        :pswitch_3  #000000ae
        :pswitch_3  #000000af
        :pswitch_3  #000000b0
        :pswitch_3  #000000b1
        :pswitch_3  #000000b2
        :pswitch_3  #000000b3
        :pswitch_3  #000000b4
        :pswitch_3  #000000b5
        :pswitch_3  #000000b6
        :pswitch_3  #000000b7
        :pswitch_3  #000000b8
        :pswitch_3  #000000b9
        :pswitch_3  #000000ba
        :pswitch_3  #000000bb
        :pswitch_3  #000000bc
        :pswitch_3  #000000bd
        :pswitch_3  #000000be
        :pswitch_3  #000000bf
        :pswitch_3  #000000c0
        :pswitch_3  #000000c1
        :pswitch_3  #000000c2
        :pswitch_3  #000000c3
        :pswitch_3  #000000c4
        :pswitch_3  #000000c5
        :pswitch_1d  #000000c6
        :pswitch_1d  #000000c7
        :pswitch_3f  #000000c8
        :pswitch_3f  #000000c9
    .end packed-switch
.end method

.method public a(IIIILcom/a/b/e/d/c;I)V
    .registers 12

    const/4 v1, 0x0

    const/16 v0, 0x36

    if-ne p1, v0, :cond_2a

    add-int v0, p2, p3

    :goto_7
    iget-object v2, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    invoke-static {v2}, Lcom/a/b/a/b/am;->b(Lcom/a/b/a/b/am;)Lcom/a/b/a/b/t;

    move-result-object v2

    invoke-virtual {v2, v0, p4}, Lcom/a/b/a/b/t;->a(II)Lcom/a/b/a/b/u;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/a/b/a/b/u;->b()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->e()I

    move-result v3

    invoke-virtual {p5}, Lcom/a/b/e/d/c;->e()I

    move-result v4

    if-eq v3, v4, :cond_23

    move-object v0, v1

    move-object v2, p5

    :cond_23
    :goto_23
    sparse-switch p1, :sswitch_data_8e

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/b/a/b/an;->a(III)V

    :goto_29
    return-void

    :cond_2a
    move v0, p2

    goto :goto_7

    :cond_2c
    move-object v2, p5

    goto :goto_23

    :sswitch_2e
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, p4}, Lcom/a/b/a/b/x;->b(Lcom/a/b/a/b/q;I)V

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    :goto_3a
    invoke-interface {v1, v0}, Lcom/a/b/a/b/x;->a(Z)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p5}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/d/c;)V

    :goto_42
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p2, p1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    goto :goto_29

    :cond_4a
    const/4 v0, 0x0

    goto :goto_3a

    :sswitch_4c
    if-nez v0, :cond_61

    move-object v0, v1

    :goto_4f
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v3, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v3, p5}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v1, p5}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/d/c;)V

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v1, p4, v2, v0}, Lcom/a/b/a/b/x;->a(ILcom/a/b/e/d/c;Lcom/a/b/e/b/o;)V

    goto :goto_42

    :cond_61
    invoke-virtual {v0}, Lcom/a/b/a/b/u;->a()Lcom/a/b/e/b/o;

    move-result-object v0

    goto :goto_4f

    :sswitch_66
    if-nez v0, :cond_88

    :goto_68
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

    goto :goto_42

    :cond_88
    invoke-virtual {v0}, Lcom/a/b/a/b/u;->a()Lcom/a/b/e/b/o;

    move-result-object v1

    goto :goto_68

    nop

    :sswitch_data_8e
    .sparse-switch
        0x15 -> :sswitch_2e
        0x36 -> :sswitch_4c
        0x84 -> :sswitch_66
        0xa9 -> :sswitch_2e
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

    sparse-switch p1, :sswitch_data_c8

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    :goto_8
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p5}, Lcom/a/b/a/b/x;->a(I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/c/a;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p2, p1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    return-void

    :sswitch_1a
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_8

    :sswitch_24
    move-object v0, p4

    check-cast v0, Lcom/a/b/e/c/n;

    invoke-virtual {v0}, Lcom/a/b/e/c/n;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_8

    :sswitch_33
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_8

    :sswitch_3d
    move-object v0, p4

    check-cast v0, Lcom/a/b/e/c/n;

    invoke-virtual {v0}, Lcom/a/b/e/c/n;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v3, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v1, v2, v3, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto :goto_8

    :sswitch_4e
    instance-of v0, p4, Lcom/a/b/e/c/q;

    if-eqz v0, :cond_c6

    check-cast p4, Lcom/a/b/e/c/q;

    invoke-virtual {p4}, Lcom/a/b/e/c/q;->m()Lcom/a/b/e/c/z;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/z;

    invoke-static {v2, p1, v0}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/am;ILcom/a/b/e/c/z;)V

    :goto_60
    instance-of v0, v1, Lcom/a/b/e/c/z;

    if-eqz v0, :cond_72

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/z;

    invoke-virtual {v0}, Lcom/a/b/e/c/z;->l()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    invoke-static {v0, p1}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/am;I)V

    :cond_72
    const/16 v0, 0xb8

    if-ne p1, v0, :cond_88

    const/4 v0, 0x1

    move v2, v0

    :goto_78
    move-object v0, v1

    check-cast v0, Lcom/a/b/e/c/z;

    invoke-virtual {v0, v2}, Lcom/a/b/e/c/z;->a(Z)Lcom/a/b/e/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v3, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v2, v3, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/a;)V

    move-object p4, v1

    goto :goto_8

    :cond_88
    const/4 v0, 0x0

    move v2, v0

    goto :goto_78

    :sswitch_8b
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

    goto/16 :goto_8

    :sswitch_a3
    sget-object v0, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    invoke-static {v0, p5}, Lcom/a/b/e/d/a;->a(Lcom/a/b/e/d/c;I)Lcom/a/b/e/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/a;)V

    goto/16 :goto_8

    :sswitch_b2
    instance-of v0, p4, Lcom/a/b/e/c/y;

    if-nez v0, :cond_ba

    instance-of v0, p4, Lcom/a/b/e/c/ab;

    if-eqz v0, :cond_bf

    :cond_ba
    iget-object v0, p0, Lcom/a/b/a/b/an;->a:Lcom/a/b/a/b/am;

    invoke-static {v0, p4}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/am;Lcom/a/b/e/c/a;)V

    :cond_bf
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    goto/16 :goto_8

    :cond_c6
    move-object v1, p4

    goto :goto_60

    :sswitch_data_c8
    .sparse-switch
        0x12 -> :sswitch_b2
        0x13 -> :sswitch_b2
        0xb3 -> :sswitch_24
        0xb4 -> :sswitch_33
        0xb5 -> :sswitch_3d
        0xb6 -> :sswitch_4e
        0xb7 -> :sswitch_4e
        0xb8 -> :sswitch_4e
        0xb9 -> :sswitch_4e
        0xba -> :sswitch_8b
        0xbd -> :sswitch_1a
        0xc0 -> :sswitch_33
        0xc1 -> :sswitch_33
        0xc5 -> :sswitch_a3
    .end sparse-switch
.end method

.method public a(IIILcom/a/b/e/d/c;)V
    .registers 11

    const/16 v5, 0x212

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    sparse-switch p1, :sswitch_data_356

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/b/a/b/an;->a(III)V

    :goto_c
    return-void

    :sswitch_d
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/e/d/c;)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p2, p1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;II)V

    goto :goto_c

    :sswitch_1f
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_12

    :sswitch_27
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_12

    :sswitch_31
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->g:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_12

    :sswitch_3b
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->e:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_12

    :sswitch_45
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->d:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto :goto_12

    :sswitch_4f
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0}, Lcom/a/b/a/b/x;->b()V

    sget-object v0, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    invoke-direct {p0, v0}, Lcom/a/b/a/b/an;->a(Lcom/a/b/e/d/c;)V

    goto :goto_12

    :sswitch_5a
    sget-object v0, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    if-ne p4, v0, :cond_352

    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    :goto_68
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    invoke-direct {p0, v0}, Lcom/a/b/a/b/an;->a(Lcom/a/b/e/d/c;)V

    goto :goto_12

    :sswitch_73
    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_88
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, v4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    goto :goto_12

    :sswitch_90
    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->q()Z

    move-result v1

    if-nez v1, :cond_b8

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

    :cond_b8
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto/16 :goto_12

    :sswitch_c3
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V

    goto/16 :goto_12

    :sswitch_ce
    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/a/b/a/b/am;->a(Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-ne v0, v1, :cond_ed

    sget-object p4, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    :goto_e2
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v3, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v1, v2, v0, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_12

    :cond_ed
    invoke-virtual {v0}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object p4

    goto :goto_e2

    :sswitch_f2
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, p4, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_12

    :sswitch_fb
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, p4, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_12

    :sswitch_106
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->g:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->g:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_12

    :sswitch_113
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->e:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->e:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_12

    :sswitch_120
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v2, Lcom/a/b/e/d/c;->d:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->d:Lcom/a/b/e/d/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_12

    :sswitch_12d
    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v2}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v2

    invoke-virtual {p4}, Lcom/a/b/e/d/c;->k()Z

    move-result v3

    if-eqz v3, :cond_158

    :goto_139
    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->b(I)Z

    move-result v0

    invoke-static {p4, v1}, Lcom/a/b/a/b/am;->a(Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)Lcom/a/b/e/d/c;

    move-result-object v1

    if-eqz v0, :cond_14d

    sget-object v0, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-ne v1, v0, :cond_15a

    sget-object p4, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    :cond_14d
    :goto_14d
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    sget-object v3, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-interface {v0, v2, v1, v3, p4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V

    goto/16 :goto_12

    :cond_158
    move v0, v1

    goto :goto_139

    :cond_15a
    invoke-virtual {v1}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object p4

    goto :goto_14d

    :sswitch_15f
    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->l()Z

    move-result v2

    if-eqz v2, :cond_183

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, v4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    const/16 v0, 0x11

    :goto_178
    const/16 v1, 0x5c

    if-ne p1, v1, :cond_12

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v1, v0}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :cond_183
    invoke-virtual {v1, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->k()Z

    move-result v1

    if-eqz v1, :cond_197

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    const/16 v0, 0x2121

    goto :goto_178

    :cond_197
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :sswitch_19c
    iget-object v0, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1b1

    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_1b1
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v1, v4}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :sswitch_1c1
    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->k()Z

    move-result v2

    if-eqz v2, :cond_1db

    invoke-virtual {v1, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->k()Z

    move-result v1

    if-nez v1, :cond_1e0

    :cond_1db
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_1e0
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, v5}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :sswitch_1ee
    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v2}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_203

    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_203
    invoke-virtual {v2, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_21b

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, v5}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :cond_21b
    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->k()Z

    move-result v0

    if-eqz v0, :cond_235

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v2, v1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const/16 v1, 0x3213

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :cond_235
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :sswitch_23a
    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v2}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_267

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->l()Z

    move-result v1

    if-eqz v1, :cond_259

    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_259
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, v5}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :cond_267
    invoke-virtual {v2, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-nez v3, :cond_27b

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_280

    :cond_27b
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_280
    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v2, v1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const v1, 0x32132

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :sswitch_291
    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v2}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_2d8

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->l()Z

    move-result v3

    if-eqz v3, :cond_2b9

    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    invoke-interface {v0, v5}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :cond_2b9
    invoke-virtual {v2, v1}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2d3

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v2, v1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const/16 v1, 0x3213

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :cond_2d3
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_2d8
    invoke-virtual {v2, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->k()Z

    move-result v3

    if-eqz v3, :cond_31e

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    if-eqz v0, :cond_2fd

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v0, v2, v1}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const v1, 0x32132

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :cond_2fd
    invoke-virtual {v2, v1}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->k()Z

    move-result v0

    if-eqz v0, :cond_319

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const v1, 0x432143

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :cond_319
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_31e
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :sswitch_323
    iget-object v1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-virtual {v1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->k()Z

    move-result v2

    if-eqz v2, :cond_33d

    invoke-virtual {v1, v4}, Lcom/a/b/a/b/p;->c(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->k()Z

    move-result v1

    if-nez v1, :cond_342

    :cond_33d
    invoke-static {}, Lcom/a/b/a/b/am;->a()Lcom/a/b/a/b/al;

    move-result-object v0

    throw v0

    :cond_342
    iget-object v1, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    iget-object v2, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    invoke-interface {v1, v2, v0}, Lcom/a/b/a/b/x;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/an;->b:Lcom/a/b/a/b/x;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/a/b/a/b/x;->a(I)V

    goto/16 :goto_12

    :cond_352
    move-object v0, p4

    goto/16 :goto_68

    nop

    :sswitch_data_356
    .sparse-switch
        0x0 -> :sswitch_d
        0x2e -> :sswitch_ce
        0x4f -> :sswitch_12d
        0x57 -> :sswitch_73
        0x58 -> :sswitch_15f
        0x59 -> :sswitch_19c
        0x5a -> :sswitch_1c1
        0x5b -> :sswitch_1ee
        0x5c -> :sswitch_15f
        0x5d -> :sswitch_23a
        0x5e -> :sswitch_291
        0x5f -> :sswitch_323
        0x60 -> :sswitch_f2
        0x64 -> :sswitch_f2
        0x68 -> :sswitch_f2
        0x6c -> :sswitch_f2
        0x70 -> :sswitch_f2
        0x74 -> :sswitch_1f
        0x78 -> :sswitch_fb
        0x7a -> :sswitch_fb
        0x7c -> :sswitch_fb
        0x7e -> :sswitch_f2
        0x80 -> :sswitch_f2
        0x82 -> :sswitch_f2
        0x85 -> :sswitch_27
        0x86 -> :sswitch_27
        0x87 -> :sswitch_27
        0x88 -> :sswitch_31
        0x89 -> :sswitch_31
        0x8a -> :sswitch_31
        0x8b -> :sswitch_3b
        0x8c -> :sswitch_3b
        0x8d -> :sswitch_3b
        0x8e -> :sswitch_45
        0x8f -> :sswitch_45
        0x90 -> :sswitch_45
        0x91 -> :sswitch_27
        0x92 -> :sswitch_27
        0x93 -> :sswitch_27
        0x94 -> :sswitch_106
        0x95 -> :sswitch_113
        0x96 -> :sswitch_113
        0x97 -> :sswitch_120
        0x98 -> :sswitch_120
        0xac -> :sswitch_5a
        0xb1 -> :sswitch_4f
        0xbe -> :sswitch_90
        0xbf -> :sswitch_c3
        0xc2 -> :sswitch_c3
        0xc3 -> :sswitch_c3
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

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frame == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/a/b/a/b/an;->c:Lcom/a/b/a/b/q;

    return-void
.end method
