.class public La/b/g/u;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/g/s;


# direct methods
.method public constructor <init>(La/b/g/s;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/g/u;->a:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    iget-object v0, p0, La/b/g/u;->a:La/b/g/s;

    invoke-virtual {p2, v0}, La/b/b/a;->a(La/b/g/s;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    iget-byte v0, p5, La/b/d/b;->c:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a

    const/16 v1, 0x13

    if-ne v0, v1, :cond_f

    :cond_a
    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    :cond_f
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method
