.class public final Lr/b;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Lc/t;

.field public b:Lr/f;


# direct methods
.method public constructor <init>(Lc/t;)V
    .registers 4

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lr/b;->a:Lc/t;

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lr/f;->c(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    iput-object v0, p0, Lr/b;->b:Lr/f;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lr/a;->c(Ljava/lang/Object;)Lr/a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object p1

    invoke-static {p1}, Lc/ap;->o(Ljava/lang/Object;)Lc/ap;

    return-void

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final l()Lc/s;
    .registers 2

    iget-object v0, p0, Lr/b;->a:Lc/t;

    return-object v0
.end method
