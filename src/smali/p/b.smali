.class public final Lp/b;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Lc/v;


# direct methods
.method public constructor <init>(Lc/n;Lc/e;)V
    .registers 5

    invoke-direct {p0}, Lc/m;-><init>()V

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    invoke-virtual {v0, p1}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v0, p2}, Lc/f;->b(Lc/e;)V

    new-instance p1, Lc/bd;

    new-instance p2, Lc/bc;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lc/bc;-><init>(Lc/f;I)V

    invoke-direct {p1, p2}, Lc/bd;-><init>(Lc/e;)V

    iput-object p1, p0, Lp/b;->a:Lc/v;

    return-void
.end method

.method public constructor <init>(Lc/v;)V
    .registers 2

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lp/b;->a:Lc/v;

    return-void
.end method

.method public constructor <init>([Lp/a;)V
    .registers 3

    invoke-direct {p0}, Lc/m;-><init>()V

    new-instance v0, Lc/bd;

    invoke-direct {v0, p1}, Lc/bd;-><init>([Lc/e;)V

    iput-object v0, p0, Lp/b;->a:Lc/v;

    return-void
.end method


# virtual methods
.method public final b()Lp/a;
    .registers 3

    iget-object v0, p0, Lp/b;->a:Lc/v;

    invoke-virtual {v0}, Lc/v;->p()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lp/b;->a:Lc/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/v;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lp/a;->c(Ljava/lang/Object;)Lp/a;

    move-result-object v0

    return-object v0
.end method

.method public final c()[Lp/a;
    .registers 5

    iget-object v0, p0, Lp/b;->a:Lc/v;

    invoke-virtual {v0}, Lc/v;->p()I

    move-result v0

    new-array v1, v0, [Lp/a;

    const/4 v2, 0x0

    :goto_9
    if-eq v2, v0, :cond_1a

    iget-object v3, p0, Lp/b;->a:Lc/v;

    invoke-virtual {v3, v2}, Lc/v;->k(I)Lc/e;

    move-result-object v3

    invoke-static {v3}, Lp/a;->c(Ljava/lang/Object;)Lp/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-object v1
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Lp/b;->a:Lc/v;

    invoke-virtual {v0}, Lc/v;->p()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public final l()Lc/s;
    .registers 2

    iget-object v0, p0, Lp/b;->a:Lc/v;

    return-object v0
.end method
