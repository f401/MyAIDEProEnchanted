.class public La/b/c/bb;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/d/q;


# instance fields
.field private final a:La/b/c/ad;

.field private final b:La/b/c/bc;


# direct methods
.method public constructor <init>(La/b/k;La/b/a/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/c/ad;

    invoke-direct {v0, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/bb;->a:La/b/c/ad;

    new-instance p1, La/b/c/bc;

    invoke-direct {p1, p2}, La/b/c/bc;-><init>(La/b/a/p;)V

    iput-object p1, p0, La/b/c/bb;->b:La/b/c/bc;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/o;)V
    .registers 11

    new-instance p2, La/b/a/o;

    iget v1, p4, La/b/a/o;->a:I

    iget v2, p4, La/b/a/o;->b:I

    iget-object p3, p0, La/b/c/bb;->a:La/b/c/ad;

    iget v0, p4, La/b/a/o;->c:I

    invoke-virtual {p3, p1, v0}, La/b/c/ad;->a(La/b/c;I)I

    move-result v3

    iget-object p3, p0, La/b/c/bb;->a:La/b/c/ad;

    iget v0, p4, La/b/a/o;->d:I

    invoke-virtual {p3, p1, v0}, La/b/c/ad;->a(La/b/c;I)I

    move-result v4

    iget v5, p4, La/b/a/o;->e:I

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, La/b/a/o;-><init>(IIIII)V

    iget-object p1, p4, La/b/a/o;->f:La/b/c;

    iput-object p1, p2, La/b/a/o;->f:La/b/c;

    iget-object p1, p0, La/b/c/bb;->b:La/b/c/bc;

    invoke-virtual {p1, p2}, La/b/c/bc;->a(La/b/a/o;)V

    return-void
.end method
