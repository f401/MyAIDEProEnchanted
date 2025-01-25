.class public La/b/c/q;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/aq;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 3

    invoke-virtual {p2, p1}, La/b/b/q;->b(La/b/c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La/b/c/q;->a:Ljava/lang/String;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 4

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 6

    iget-byte p3, p5, La/b/d/b;->c:B

    packed-switch p3, :pswitch_data_20

    goto :goto_1f

    :pswitch_6  #0xffffffb6, 0xffffffb7, 0xffffffb8, 0xffffffb9
    iget p3, p5, La/b/d/b;->a:I

    invoke-interface {p1, p3, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, La/b/c/q;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    check-cast p2, La/b/n;

    iget p1, p2, La/b/n;->b:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p2, La/b/n;->b:I

    :cond_1f
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch -0x4a
        :pswitch_6  #ffffffb6
        :pswitch_6  #ffffffb7
        :pswitch_6  #ffffffb8
        :pswitch_6  #ffffffb9
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    invoke-virtual {p2}, La/b/n;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1, p0}, La/b/n;->a(La/b/k;La/b/a/d/i;)V

    :cond_b
    return-void
.end method
