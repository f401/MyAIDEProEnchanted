.class public La/g/l;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/aq;


# instance fields
.field private final a:La/b/g/aq;

.field private final b:La/b/g/aq;


# direct methods
.method public constructor <init>(La/b/g/aq;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/g/l;-><init>(La/b/g/aq;La/b/g/aq;)V

    return-void
.end method

.method public constructor <init>(La/b/g/aq;La/b/g/aq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g/l;->a:La/b/g/aq;

    iput-object p2, p0, La/g/l;->b:La/b/g/aq;

    return-void
.end method


# virtual methods
.method public a(La/b/e;La/b/f;)V
    .registers 3

    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 3

    return-void
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 4

    invoke-static {p2}, La/g/b/l;->a(La/b/d;)La/g/b/l;

    move-result-object v0

    instance-of v0, v0, La/g/b/ag;

    if-eqz v0, :cond_10

    iget-object v0, p0, La/g/l;->a:La/b/g/aq;

    :goto_a
    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/k;La/b/l;)V

    :cond_f
    return-void

    :cond_10
    iget-object v0, p0, La/g/l;->b:La/b/g/aq;

    goto :goto_a
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    invoke-static {p2}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    instance-of v0, v0, La/g/b/ai;

    if-eqz v0, :cond_10

    iget-object v0, p0, La/g/l;->a:La/b/g/aq;

    :goto_a
    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/k;La/b/n;)V

    :cond_f
    return-void

    :cond_10
    iget-object v0, p0, La/g/l;->b:La/b/g/aq;

    goto :goto_a
.end method
