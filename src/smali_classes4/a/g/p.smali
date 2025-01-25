.class La/g/p;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/bb;


# instance fields
.field final a:La/g/m;


# direct methods
.method constructor <init>(La/g/m;)V
    .registers 2

    iput-object p1, p0, La/g/p;->a:La/g/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/b/g/s;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, La/g/p;->a:La/g/m;

    invoke-static {v0}, La/g/m;->a(La/g/m;)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v1

    :goto_b
    iget-object v3, p0, La/g/p;->a:La/g/m;

    invoke-static {v3}, La/g/m;->b(La/g/m;)Z

    move-result v3

    if-nez v3, :cond_14

    move v2, v1

    :cond_14
    new-instance v1, La/b/g/d;

    new-instance v3, La/g/l;

    new-instance v4, La/g/b/ad;

    invoke-direct {v4, v0, v2}, La/g/b/ad;-><init>(ZZ)V

    invoke-direct {v3, v4}, La/g/l;-><init>(La/b/g/aq;)V

    invoke-direct {v1, v3}, La/b/g/d;-><init>(La/b/g/aq;)V

    return-object v1

    :cond_24
    move v0, v2

    goto :goto_b
.end method
