.class public La/g/b/an;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:La/b/g/s;


# direct methods
.method public constructor <init>(La/b/g/s;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g/b/an;->a:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 3

    invoke-static {p1}, La/g/b/ao;->b(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, La/g/b/an;->a:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/e;)V

    :cond_b
    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    invoke-static {p1}, La/g/b/ao;->b(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, La/g/b/an;->a:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/k;)V

    :cond_b
    return-void
.end method
