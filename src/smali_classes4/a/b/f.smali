.class public La/b/f;
.super La/b/g;

# interfaces
.implements La/b/d;


# instance fields
.field public a:La/b/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b/e;La/b/g/aq;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/g/aq;->a(La/b/e;La/b/f;)V

    return-void
.end method

.method public a(La/b/g/s;)V
    .registers 3

    iget-object v0, p0, La/b/f;->a:La/b/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/b/f;->a:La/b/c;

    invoke-interface {v0, p1}, La/b/c;->a(La/b/g/s;)V

    :cond_9
    return-void
.end method
