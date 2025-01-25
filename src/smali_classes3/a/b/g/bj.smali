.class public La/b/g/bj;
.super La/b/f/w;

# interfaces
.implements La/b/a/a/b/g;
.implements La/b/b/a/f;


# instance fields
.field protected final b:La/b/g/aq;


# direct methods
.method public constructor <init>(La/b/g/aq;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/g/bj;->b:La/b/g/aq;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/a;La/b/a/a/h;)V
    .registers 4

    iget-object p1, p0, La/b/g/bj;->b:La/b/g/aq;

    invoke-virtual {p3, p1}, La/b/a/a/h;->a(La/b/g/aq;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 3

    iget-object p1, p0, La/b/g/bj;->b:La/b/g/aq;

    invoke-virtual {p2, p1}, La/b/b/r;->a(La/b/g/aq;)V

    return-void
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 3

    iget-object p1, p0, La/b/g/bj;->b:La/b/g/aq;

    invoke-virtual {p2, p1}, La/b/b/q;->a(La/b/g/aq;)V

    return-void
.end method
