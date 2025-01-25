.class public La/b/c/bd;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/d/r;


# instance fields
.field private final a:La/b/c/ad;

.field private final b:La/b/c/be;


# direct methods
.method public constructor <init>(La/b/k;La/b/a/r;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/c/ad;

    invoke-direct {v0, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/bd;->a:La/b/c/ad;

    new-instance p1, La/b/c/be;

    invoke-direct {p1, p2}, La/b/c/be;-><init>(La/b/a/r;)V

    iput-object p1, p0, La/b/c/bd;->b:La/b/c/be;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/q;)V
    .registers 11

    new-instance p2, La/b/a/q;

    iget v1, p4, La/b/a/q;->a:I

    iget v2, p4, La/b/a/q;->b:I

    iget-object p3, p0, La/b/c/bd;->a:La/b/c/ad;

    iget v0, p4, La/b/a/q;->c:I

    invoke-virtual {p3, p1, v0}, La/b/c/ad;->a(La/b/c;I)I

    move-result v3

    iget-object p3, p0, La/b/c/bd;->a:La/b/c/ad;

    iget v0, p4, La/b/a/q;->d:I

    invoke-virtual {p3, p1, v0}, La/b/c/ad;->a(La/b/c;I)I

    move-result v4

    iget v5, p4, La/b/a/q;->e:I

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, La/b/a/q;-><init>(IIIII)V

    iget-object p1, p4, La/b/a/q;->f:[La/b/c;

    iput-object p1, p2, La/b/a/q;->f:[La/b/c;

    iget-object p1, p0, La/b/c/bd;->b:La/b/c/be;

    invoke-virtual {p1, p2}, La/b/c/be;->a(La/b/a/q;)V

    return-void
.end method
