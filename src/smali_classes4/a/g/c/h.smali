.class public La/g/c/h;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/c/v;

.field private final b:La/b/d/a/d;


# direct methods
.method public constructor <init>(La/b/c/v;La/b/d/a/d;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/g/c/h;->a:La/b/c/v;

    iput-object p2, p0, La/g/c/h;->b:La/b/d/a/d;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 12

    iget-byte v0, p5, La/b/d/a;->c:B

    const/16 v1, -0x59

    if-eq v0, v1, :cond_a

    const/16 v1, -0x38

    if-ne v0, v1, :cond_28

    :cond_a
    iget v0, p5, La/b/d/a;->a:I

    add-int/2addr v0, p4

    iget-object v1, p0, La/g/c/h;->a:La/b/c/v;

    invoke-virtual {v1, p4}, La/b/c/v;->f(I)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, La/g/c/h;->a:La/b/c/v;

    invoke-virtual {v1, v0}, La/b/c/v;->f(I)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p3, La/b/a/d;->f:[B

    invoke-static {v1, v0}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v0

    iget-byte v1, v0, La/b/d/c;->c:B

    packed-switch v1, :pswitch_data_44

    :cond_28
    :goto_28
    return-void

    :pswitch_29  #0xffffffac, 0xffffffad, 0xffffffae, 0xffffffaf, 0xffffffb0, 0xffffffb1
    new-instance v1, La/b/d/h;

    iget-byte v0, v0, La/b/d/c;->c:B

    invoke-direct {v1, v0}, La/b/d/h;-><init>(B)V

    iget-object v0, p0, La/g/c/h;->a:La/b/c/v;

    invoke-virtual {v0, p4, v1}, La/b/c/v;->b(ILa/b/d/c;)V

    iget-object v0, p0, La/g/c/h;->b:La/b/d/a/d;

    if-eqz v0, :cond_28

    iget-object v0, p0, La/g/c/h;->b:La/b/d/a/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V

    goto :goto_28

    :pswitch_data_44
    .packed-switch -0x54
        :pswitch_29  #ffffffac
        :pswitch_29  #ffffffad
        :pswitch_29  #ffffffae
        :pswitch_29  #ffffffaf
        :pswitch_29  #ffffffb0
        :pswitch_29  #ffffffb1
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method
