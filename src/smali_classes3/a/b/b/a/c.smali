.class public La/b/b/a/c;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/j;
.implements La/b/b/a/f;


# instance fields
.field a:I

.field private b:La/b/b/a/f;


# direct methods
.method public constructor <init>(La/b/b/a/f;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/b/a/c;->b:La/b/b/a/f;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/b;)V
    .registers 4

    iget p2, p2, La/b/a/b;->a:I

    iget-object v0, p0, La/b/b/a/c;->b:La/b/b/a/f;

    invoke-interface {p1, p2, v0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/c;)V
    .registers 4

    iget v0, p0, La/b/b/a/c;->a:I

    invoke-virtual {p2, p1, v0, p0}, La/b/a/c;->a(La/b/c;ILa/b/a/d/j;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 3

    iget p2, p2, La/b/b/h;->a:I

    iput p2, p0, La/b/b/a/c;->a:I

    invoke-interface {p1, p0}, La/b/c;->a(La/b/a/d/i;)V

    return-void
.end method
