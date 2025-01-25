.class public La/b/c/aq;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/c/ad;

.field private final b:La/b/c/u;


# direct methods
.method public constructor <init>(La/b/k;La/b/c/u;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/ad;

    invoke-direct {v0, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/aq;->a:La/b/c/ad;

    iput-object p2, p0, La/b/c/aq;->b:La/b/c/u;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    new-instance p2, La/b/d/b;

    iget-byte p3, p5, La/b/d/b;->c:B

    iget-object v0, p0, La/b/c/aq;->a:La/b/c/ad;

    iget v1, p5, La/b/d/b;->a:I

    invoke-virtual {v0, p1, v1}, La/b/c/ad;->a(La/b/c;I)I

    move-result p1

    iget p5, p5, La/b/d/b;->b:I

    invoke-direct {p2, p3, p1, p5}, La/b/d/b;-><init>(BII)V

    iget-object p1, p0, La/b/c/aq;->b:La/b/c/u;

    invoke-virtual {p1, p4, p2}, La/b/c/u;->a(ILa/b/d/c;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    iget-object p1, p0, La/b/c/aq;->b:La/b/c/u;

    invoke-virtual {p1, p4, p5}, La/b/c/u;->a(ILa/b/d/c;)V

    return-void
.end method
