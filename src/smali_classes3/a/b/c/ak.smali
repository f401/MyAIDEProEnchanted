.class public La/b/c/ak;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;


# instance fields
.field private final a:La/b/c/ad;

.field private final b:La/b/c/an;


# direct methods
.method public constructor <init>(La/b/k;La/b/a/i;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/ad;

    invoke-direct {v0, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/ak;->a:La/b/c/ad;

    new-instance p1, La/b/c/an;

    invoke-direct {p1, p2}, La/b/c/an;-><init>(La/b/a/i;)V

    iput-object p1, p0, La/b/c/ak;->b:La/b/c/an;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    iget-object v0, p0, La/b/c/ak;->a:La/b/c/ad;

    invoke-virtual {v0, p1, p2}, La/b/c/ad;->a(La/b/c;La/b/b/a;)V

    iget-object p1, p0, La/b/c/ak;->b:La/b/c/an;

    iget-object p2, p0, La/b/c/ak;->a:La/b/c/ad;

    invoke-virtual {p2}, La/b/c/ad;->a()I

    move-result p2

    invoke-virtual {p1, p2}, La/b/c/an;->a(I)V

    return-void
.end method
