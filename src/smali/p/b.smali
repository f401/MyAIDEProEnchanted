.class public final Lp/b;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Lc/v;


# direct methods
.method public constructor <init>(Lc/n;Lc/e;)V
    .locals 4

    invoke-direct {p0}, Lc/m;-><init>()V

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    invoke-virtual {v0, p1}, Lc/f;->b(Lc/e;)V

    invoke-virtual {v0, p2}, Lc/f;->b(Lc/e;)V

    new-instance v1, Lc/bd;

    new-instance v2, Lc/bc;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lc/bc;-><init>(Lc/f;I)V

    invoke-direct {v1, v2}, Lc/bd;-><init>(Lc/e;)V

    iput-object v1, p0, Lp/b;->a:Lc/v;

    return-void
.end method

.method public constructor <init>(Lc/v;)V
    .locals 0

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lp/b;->a:Lc/v;

    return-void
.end method

.method public constructor <init>([Lp/a;)V
    .locals 1

    invoke-direct {p0}, Lc/m;-><init>()V

    new-instance v0, Lc/bd;

    invoke-direct {v0, p1}, Lc/bd;-><init>([Lc/e;)V

    iput-object v0, p0, Lp/b;->a:Lc/v;

    return-void
.end method


# virtual methods
.method public final b()Lp/a;
    .locals 2

    iget-object v0, p0, Lp/b;->a:Lc/v;

    invoke-virtual {v0}, Lc/v;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lp/b;->a:Lc/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/v;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lp/a;->c(Ljava/lang/Object;)Lp/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()[Lp/a;
    .locals 4

    iget-object v0, p0, Lp/b;->a:Lc/v;

    invoke-virtual {v0}, Lc/v;->p()I

    move-result v1

    new-array v2, v1, [Lp/a;

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v3, p0, Lp/b;->a:Lc/v;

    invoke-virtual {v3, v0}, Lc/v;->k(I)Lc/e;

    move-result-object v3

    invoke-static {v3}, Lp/a;->c(Ljava/lang/Object;)Lp/a;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lp/b;->a:Lc/v;

    invoke-virtual {v1}, Lc/v;->p()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Lc/s;
    .locals 1

    iget-object v0, p0, Lp/b;->a:Lc/v;

    return-object v0
.end method
