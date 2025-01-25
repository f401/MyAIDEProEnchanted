.class public abstract La/d/h;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/g/bg;
.implements La/d/f;


# instance fields
.field private final a:La/b/g/aq;

.field protected b:Z

.field protected c:Z

.field protected d:La/d/i;

.field private e:La/d/l;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/f/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, La/b/f/b;-><init>(ZLa/b/g/bg;)V

    iput-object v0, p0, La/d/h;->a:La/b/g/aq;

    return-void
.end method


# virtual methods
.method public abstract a(La/b/c;La/b/b/h;Ljava/lang/String;)La/d/a/bd;
.end method

.method public abstract a(La/b/c;La/b/b/q;Ljava/lang/String;)La/d/a/bd;
.end method

.method public abstract a(La/b/c;La/b/j;ILjava/lang/String;La/b/c;)La/d/a/bd;
.end method

.method public a(La/b/c;La/b/b/d;)V
    .registers 5

    iget-boolean v0, p0, La/d/h;->c:Z

    if-nez v0, :cond_d

    iget-object v0, p0, La/d/h;->d:La/d/i;

    invoke-virtual {v0}, La/d/i;->c()La/d/a/bd;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, La/d/h;->a(La/b/c;La/b/b/q;La/d/a/bd;)V

    :cond_d
    iget-boolean v0, p0, La/d/h;->b:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, La/d/h;->d:La/d/i;

    invoke-virtual {v0}, La/d/i;->h()La/d/a/ap;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, La/d/h;->a(La/b/c;La/b/b/q;La/d/a/ap;)V

    :cond_1a
    iget-boolean v0, p0, La/d/h;->c:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p2, p1}, La/b/b/d;->c(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/d/h;->d:La/d/i;

    invoke-virtual {p0, p1, p2, v0}, La/d/h;->a(La/b/c;La/b/b/q;Ljava/lang/String;)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v1, v0}, La/d/i;->a(La/d/a/bd;)V

    :cond_2b
    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 6

    invoke-virtual {p2, p1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->t(Ljava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, La/d/h;->b:Z

    if-nez v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_1a

    iget-object v2, p0, La/d/h;->d:La/d/i;

    invoke-virtual {v2}, La/d/i;->c()La/d/a/bd;

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_1a
    invoke-static {v1}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x56

    if-eq v1, v2, :cond_30

    iget-object v1, p0, La/d/h;->d:La/d/i;

    invoke-virtual {p0, p1, p2, v0}, La/d/h;->a(La/b/c;La/b/b/h;Ljava/lang/String;)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v1, v0}, La/d/i;->a(La/d/a/bd;)V

    :cond_30
    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 6

    invoke-virtual {p2, p1}, La/b/b/q;->c(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->t(Ljava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, La/d/h;->b:Z

    if-nez v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_1e

    iget-object v2, p0, La/d/h;->d:La/d/i;

    invoke-virtual {v2}, La/d/i;->c()La/d/a/bd;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v0, v2}, La/d/h;->a(La/b/c;La/b/b/q;ILa/d/a/bd;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_1e
    invoke-static {v1}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x56

    if-eq v1, v2, :cond_34

    iget-object v1, p0, La/d/h;->d:La/d/i;

    invoke-virtual {p0, p1, p2, v0}, La/d/h;->b(La/b/c;La/b/b/q;Ljava/lang/String;)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v1, v0}, La/d/i;->a(La/d/a/bd;)V

    :cond_34
    return-void
.end method

.method public abstract a(La/b/c;La/b/b/q;ILa/d/a/bd;)V
.end method

.method public abstract a(La/b/c;La/b/b/q;La/d/a/ap;)V
.end method

.method public abstract a(La/b/c;La/b/b/q;La/d/a/bd;)V
.end method

.method public a(La/b/c;La/b/i;IIIILjava/lang/String;La/b/c;)V
    .registers 15

    move-object v2, p2

    check-cast v2, La/b/j;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p7

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, La/d/h;->a(La/b/c;La/b/j;ILjava/lang/String;La/b/c;)La/d/a/bd;

    move-result-object v0

    iget-object v1, p0, La/d/h;->e:La/d/l;

    invoke-virtual {v1, p5, v0}, La/d/l;->b(ILa/d/a/bd;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;IILa/d/i;)V
    .registers 8

    move-object v0, p1

    check-cast v0, La/b/k;

    invoke-virtual {v0, p5}, La/b/k;->l(I)La/b/b/b;

    move-result-object v0

    check-cast v0, La/b/b/a;

    invoke-virtual {p0, p1, v0}, La/d/h;->b(La/b/c;La/b/b/a;)La/d/a/bd;

    move-result-object v0

    invoke-virtual {p6, v0}, La/d/i;->a(La/d/a/bd;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;La/d/i;)V
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p5, La/b/d/b;->a:I

    iget-byte v1, p5, La/b/d/b;->c:B

    packed-switch v1, :pswitch_data_2c

    :goto_9
    iput-object p6, p0, La/d/h;->d:La/d/i;

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/h;->d:La/d/i;

    return-void

    :pswitch_12  #0xffffffb2
    iput-boolean v3, p0, La/d/h;->b:Z

    iput-boolean v3, p0, La/d/h;->c:Z

    goto :goto_9

    :pswitch_17  #0xffffffb3
    iput-boolean v3, p0, La/d/h;->b:Z

    iput-boolean v2, p0, La/d/h;->c:Z

    goto :goto_9

    :pswitch_1c  #0xffffffb4
    iput-boolean v2, p0, La/d/h;->b:Z

    iput-boolean v3, p0, La/d/h;->c:Z

    goto :goto_9

    :pswitch_21  #0xffffffb5
    iput-boolean v2, p0, La/d/h;->b:Z

    iput-boolean v2, p0, La/d/h;->c:Z

    goto :goto_9

    :pswitch_26  #0xffffffb8, 0xffffffba
    iput-boolean v3, p0, La/d/h;->b:Z

    goto :goto_9

    :pswitch_29  #0xffffffb6, 0xffffffb7, 0xffffffb9
    iput-boolean v2, p0, La/d/h;->b:Z

    goto :goto_9

    :pswitch_data_2c
    .packed-switch -0x4e
        :pswitch_12  #ffffffb2
        :pswitch_17  #ffffffb3
        :pswitch_1c  #ffffffb4
        :pswitch_21  #ffffffb5
        :pswitch_29  #ffffffb6
        :pswitch_29  #ffffffb7
        :pswitch_26  #ffffffb8
        :pswitch_29  #ffffffb9
        :pswitch_26  #ffffffba
    .end packed-switch
.end method

.method public abstract a(La/b/c;La/b/j;La/d/a/bd;)V
.end method

.method public a(La/b/c;La/b/j;La/d/l;)V
    .registers 6

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La/b/j;->a()I

    move-result v1

    invoke-static {v0, v1}, La/b/f/i;->c(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p3, v0}, La/d/l;->b(I)V

    iput-object p3, p0, La/d/h;->e:La/d/l;

    iget-object v0, p0, La/d/h;->a:La/b/g/aq;

    invoke-interface {p2, p1, v0}, La/b/j;->a(La/b/c;La/b/g/aq;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/h;->e:La/d/l;

    return-void
.end method

.method public abstract b(La/b/c;La/b/b/a;)La/d/a/bd;
.end method

.method public abstract b(La/b/c;La/b/b/q;Ljava/lang/String;)La/d/a/bd;
.end method

.method public b(La/b/c;La/b/j;La/d/a/bd;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, La/d/h;->a(La/b/c;La/b/j;La/d/a/bd;)V

    return-void
.end method
