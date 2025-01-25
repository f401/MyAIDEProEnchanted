.class La/a/d;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/c;

.field private final b:La/b/j;

.field private final c:La/b/b/a/f;


# direct methods
.method public constructor <init>(La/b/c;La/b/j;La/b/b/a/f;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/a/d;->a:La/b/c;

    iput-object p2, p0, La/a/d;->b:La/b/j;

    iput-object p3, p0, La/a/d;->c:La/b/b/a/f;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/g;)V
    .registers 5

    iget-object v0, p2, La/b/b/g;->c:La/b/c;

    iget-object v1, p0, La/a/d;->a:La/b/c;

    if-ne v0, v1, :cond_11

    iget-object v0, p2, La/b/b/g;->e:La/b/i;

    iget-object v1, p0, La/a/d;->b:La/b/j;

    if-ne v0, v1, :cond_11

    iget-object v0, p0, La/a/d;->c:La/b/b/a/f;

    invoke-interface {v0, p1, p2}, La/b/b/a/f;->a(La/b/c;La/b/b/g;)V

    :cond_11
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 6

    iget-byte p2, p5, La/b/d/b;->c:B

    packed-switch p2, :pswitch_data_c

    goto :goto_b

    :pswitch_6  #0xffffffb7
    iget p2, p5, La/b/d/b;->a:I

    invoke-interface {p1, p2, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    :goto_b
    return-void

    :pswitch_data_c
    .packed-switch -0x49
        :pswitch_6  #ffffffb7
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method
