.class public La/g/b/ah;
.super La/b/f/w;

# interfaces
.implements La/b/g/aq;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/g/b/ah;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-boolean p1, p0, La/g/b/ah;->a:Z

    return-void
.end method


# virtual methods
.method public a(La/b/k;La/b/l;)V
    .registers 4

    invoke-virtual {p2}, La/b/l;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, La/g/b/ah;->a:Z

    if-eqz v0, :cond_d

    :cond_a
    invoke-static {p1, p2}, La/g/b/ag;->c(La/b/c;La/b/d;)V

    :cond_d
    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    invoke-static {p2}, La/b/f/u;->a(La/b/i;)La/b/i;

    move-result-object v0

    invoke-interface {v0}, La/b/i;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, La/g/b/ah;->a:Z

    if-eqz v0, :cond_11

    :cond_e
    invoke-static {p1, p2}, La/g/b/ai;->b(La/b/c;La/b/j;)V

    :cond_11
    return-void
.end method
