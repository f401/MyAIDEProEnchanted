.class La/g/a/g;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/aq;


# instance fields
.field final a:La/g/a/a;

.field private b:I

.field private c:La/b/d/b;


# direct methods
.method private constructor <init>(La/g/a/a;)V
    .registers 2

    iput-object p1, p0, La/g/a/g;->a:La/g/a/a;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/g/a/a;La/g/a/b;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/a/g;-><init>(La/g/a/a;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/i;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 7

    iget-byte v0, p5, La/b/d/b;->c:B

    packed-switch v0, :pswitch_data_10

    :goto_5
    :pswitch_5  #0xffffffb8
    return-void

    :pswitch_6  #0xffffffb6, 0xffffffb7, 0xffffffb9
    iput p4, p0, La/g/a/g;->b:I

    iput-object p5, p0, La/g/a/g;->c:La/b/d/b;

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_5

    :pswitch_data_10
    .packed-switch -0x4a
        :pswitch_6  #ffffffb6
        :pswitch_6  #ffffffb7
        :pswitch_5  #ffffffb8
        :pswitch_6  #ffffffb9
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 6

    invoke-virtual {p2}, La/b/n;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_18

    const/4 v0, 0x0

    invoke-static {p2, v0}, La/g/b/ad;->b(La/b/j;I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, La/g/a/g;->a:La/g/a/a;

    iget v1, p0, La/g/a/g;->b:I

    iget-object v2, p0, La/g/a/g;->c:La/b/d/b;

    invoke-static {v0, p1, v1, v2}, La/g/a/a;->a(La/g/a/a;La/b/c;ILa/b/d/b;)V

    :cond_18
    return-void
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 3

    invoke-virtual {p2, p0}, La/b/b/q;->a(La/b/g/aq;)V

    return-void
.end method
