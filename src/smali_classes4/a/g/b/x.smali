.class public La/g/b/x;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/a/d/w;


# direct methods
.method public constructor <init>(La/b/a/d/w;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/g/b/x;->a:La/b/a/d/w;

    return-void
.end method

.method private a(La/b/j;II)V
    .registers 5

    iget-object v0, p0, La/g/b/x;->a:La/b/a/d/w;

    invoke-virtual {v0, p2}, La/b/a/d/w;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, La/g/b/x;->a:La/b/a/d/w;

    invoke-virtual {v0, p2}, La/b/a/d/w;->b(I)I

    move-result v0

    if-le v0, p3, :cond_13

    :cond_10
    invoke-static {p1}, La/g/b/x;->b(La/b/j;)V

    :cond_13
    return-void
.end method

.method public static a(La/b/j;)Z
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->r()Z

    move-result v0

    return v0
.end method

.method private static b(La/b/j;)V
    .registers 2

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/ai;->N()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 7

    iget-byte v0, p5, La/b/d/h;->c:B

    packed-switch v0, :pswitch_data_16

    :goto_5
    return-void

    :pswitch_6  #0xffffffad, 0xffffffaf
    const/4 v0, 0x2

    invoke-direct {p0, p2, p4, v0}, La/g/b/x;->a(La/b/j;II)V

    goto :goto_5

    :pswitch_b  #0xffffffac, 0xffffffae, 0xffffffb0
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, La/g/b/x;->a(La/b/j;II)V

    goto :goto_5

    :pswitch_10  #0xffffffb1
    const/4 v0, 0x0

    invoke-direct {p0, p2, p4, v0}, La/g/b/x;->a(La/b/j;II)V

    goto :goto_5

    nop

    :pswitch_data_16
    .packed-switch -0x54
        :pswitch_b  #ffffffac
        :pswitch_6  #ffffffad
        :pswitch_b  #ffffffae
        :pswitch_6  #ffffffaf
        :pswitch_b  #ffffffb0
        :pswitch_10  #ffffffb1
    .end packed-switch
.end method
