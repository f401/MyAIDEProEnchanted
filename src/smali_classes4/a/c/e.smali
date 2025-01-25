.class public La/c/e;
.super La/g/c/k;


# direct methods
.method public constructor <init>([La/b/b/b;[La/b/d/c;[La/b/b/b;[La/b/d/c;La/g/c/a;La/b/c/v;La/b/d/a/d;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, La/g/c/k;-><init>([La/b/b/b;[La/b/d/c;[La/b/b/b;[La/b/d/c;La/g/c/a;La/b/c/v;La/b/d/a/d;)V

    return-void
.end method


# virtual methods
.method protected a(La/b/c;La/b/j;La/b/a/d;II)I
    .registers 7

    packed-switch p5, :pswitch_data_16

    invoke-super {p0, p1, p5}, La/g/c/k;->a(La/b/c;I)I

    move-result v0

    :goto_7
    return v0

    :pswitch_8  #0x30000001
    iget v0, p3, La/b/a/d;->d:I

    goto :goto_7

    :pswitch_b  #0x30000002
    iget v0, p3, La/b/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :pswitch_10  #0x30000003
    iget v0, p3, La/b/a/d;->d:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    nop

    :pswitch_data_16
    .packed-switch 0x30000001
        :pswitch_8  #30000001
        :pswitch_b  #30000002
        :pswitch_10  #30000003
    .end packed-switch
.end method

.method protected a(La/b/k;I)I
    .registers 6

    packed-switch p2, :pswitch_data_1c

    invoke-super {p0, p1, p2}, La/g/c/k;->a(La/b/k;I)I

    move-result v0

    :goto_7
    return v0

    :pswitch_8  #0x30000000
    new-instance v0, La/b/c/ae;

    invoke-direct {v0, p1}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {p1}, La/b/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;La/b/i;)I

    move-result v0

    goto :goto_7

    nop

    :pswitch_data_1c
    .packed-switch 0x30000000
        :pswitch_8  #30000000
    .end packed-switch
.end method
