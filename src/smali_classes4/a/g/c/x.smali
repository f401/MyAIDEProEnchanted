.class public La/g/c/x;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:La/b/g/s;

.field private final b:La/b/g/s;


# direct methods
.method public constructor <init>(La/b/g/s;La/b/g/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g/c/x;->a:La/b/g/s;

    iput-object p2, p0, La/g/c/x;->b:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 3

    iget-object v0, p0, La/g/c/x;->b:La/b/g/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/g/c/x;->b:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/e;)V

    :cond_9
    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    invoke-static {p1}, La/g/c/c;->b(La/b/c;)La/b/c;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, La/g/c/x;->a:La/b/g/s;

    :goto_8
    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/k;)V

    :cond_d
    return-void

    :cond_e
    iget-object v0, p0, La/g/c/x;->b:La/b/g/s;

    goto :goto_8
.end method
