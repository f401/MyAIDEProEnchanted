.class La/g/a/p;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field final a:La/g/a/j;


# direct methods
.method private constructor <init>(La/g/a/j;)V
    .registers 2

    iput-object p1, p0, La/g/a/p;->a:La/g/a/j;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/g/a/j;La/g/a/k;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/a/p;-><init>(La/g/a/j;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 8

    iget-byte v0, p5, La/b/d/a;->c:B

    const/16 v1, -0x58

    if-eq v0, v1, :cond_c

    iget-byte v0, p5, La/b/d/a;->c:B

    const/16 v1, -0x37

    if-ne v0, v1, :cond_13

    :cond_c
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    const/4 v1, 0x0

    invoke-static {v0, p4, v1}, La/g/a/j;->c(La/g/a/j;II)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p1, p4, p5}, La/g/a/j;->a(La/g/a/j;La/b/c;ILa/b/d/c;)V

    goto :goto_12
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 7

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p1, p4, p5}, La/g/a/j;->a(La/g/a/j;La/b/c;ILa/b/d/c;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 7

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p1, p4, p5}, La/g/a/j;->a(La/g/a/j;La/b/c;ILa/b/d/c;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 12

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p5, La/b/d/h;->c:B

    packed-switch v0, :pswitch_data_9c

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p1, p4, p5}, La/g/a/j;->a(La/g/a/j;La/b/c;ILa/b/d/c;)V

    :goto_f
    return-void

    :pswitch_10  #0x59
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v1, v1}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v2, v1}, La/g/a/j;->a(La/g/a/j;III)V

    goto :goto_f

    :pswitch_1b  #0x5a
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v1, v1}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v2, v2}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v3, v1}, La/g/a/j;->a(La/g/a/j;III)V

    goto :goto_f

    :pswitch_2b  #0x5b
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v1, v1}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v2, v2}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v3, v3}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v4, v1}, La/g/a/j;->a(La/g/a/j;III)V

    goto :goto_f

    :pswitch_40  #0x5c
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v1, v1}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v2, v2}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v3, v1}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v4, v2}, La/g/a/j;->a(La/g/a/j;III)V

    goto :goto_f

    :pswitch_55  #0x5d
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v1, v1}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v2, v2}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v3, v3}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v4, v1}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v5, v2}, La/g/a/j;->a(La/g/a/j;III)V

    goto :goto_f

    :pswitch_6f  #0x5e
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v1, v1}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v2, v2}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v3, v3}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v4, v4}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v5, v1}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    const/4 v1, 0x5

    invoke-static {v0, p4, v1, v2}, La/g/a/j;->a(La/g/a/j;III)V

    goto :goto_f

    :pswitch_8f  #0x5f
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v1, v2}, La/g/a/j;->a(La/g/a/j;III)V

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p4, v2, v1}, La/g/a/j;->a(La/g/a/j;III)V

    goto/16 :goto_f

    nop

    :pswitch_data_9c
    .packed-switch 0x59
        :pswitch_10  #00000059
        :pswitch_1b  #0000005a
        :pswitch_2b  #0000005b
        :pswitch_40  #0000005c
        :pswitch_55  #0000005d
        :pswitch_6f  #0000005e
        :pswitch_8f  #0000005f
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 8

    invoke-virtual {p5}, La/b/d/k;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    iget v1, p5, La/b/d/k;->b:I

    invoke-static {v0, p4, v1}, La/g/a/j;->b(La/g/a/j;II)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, La/g/a/p;->a:La/g/a/j;

    invoke-static {v0, p1, p4, p5}, La/g/a/j;->a(La/g/a/j;La/b/c;ILa/b/d/c;)V

    goto :goto_d
.end method
