.class public La/b/c/m;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/d/j;


# instance fields
.field private final a:La/b/k;

.field private final b:La/b/c/ae;

.field private c:La/b/c/k;


# direct methods
.method public constructor <init>(La/b/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/m;->a:La/b/k;

    new-instance v0, La/b/c/ae;

    invoke-direct {v0, p1}, La/b/c/ae;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/m;->b:La/b/c/ae;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, La/b/c/m;->c:La/b/c/k;

    invoke-virtual {v0}, La/b/c/k;->a()I

    move-result v0

    return v0
.end method

.method public a(La/b/c;La/b/a/b;)V
    .registers 8

    iget-object v0, p0, La/b/c/m;->c:La/b/c/k;

    if-nez v0, :cond_2f

    new-instance v0, La/b/c/j;

    iget-object v1, p0, La/b/c/m;->a:La/b/k;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/b/c/j;-><init>(La/b/k;Z)V

    const-string v1, "BootstrapMethods"

    invoke-virtual {v0, v1}, La/b/c/j;->a(Ljava/lang/String;)La/b/a/a;

    move-result-object v3

    check-cast v3, La/b/a/c;

    if-nez v3, :cond_26

    new-instance v3, La/b/a/c;

    iget-object v4, p0, La/b/c/m;->b:La/b/c/ae;

    invoke-virtual {v4, v1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v1

    new-array v4, v2, [La/b/a/b;

    invoke-direct {v3, v1, v2, v4}, La/b/a/c;-><init>(II[La/b/a/b;)V

    invoke-virtual {v0, v3}, La/b/c/j;->a(La/b/a/a;)V

    :cond_26
    new-instance v0, La/b/c/k;

    iget-object v1, p0, La/b/c/m;->a:La/b/k;

    invoke-direct {v0, v1, v3}, La/b/c/k;-><init>(La/b/k;La/b/a/c;)V

    iput-object v0, p0, La/b/c/m;->c:La/b/c/k;

    :cond_2f
    iget-object v0, p0, La/b/c/m;->c:La/b/c/k;

    invoke-virtual {v0, p1, p2}, La/b/c/k;->a(La/b/c;La/b/a/b;)V

    return-void
.end method
