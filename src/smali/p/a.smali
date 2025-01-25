.class public final Lp/a;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Lc/n;

.field public b:Lc/e;


# direct methods
.method public constructor <init>(Lc/n;Lc/e;)V
    .registers 3

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lp/a;->a:Lc/n;

    iput-object p2, p0, Lp/a;->b:Lc/e;

    return-void
.end method

.method public constructor <init>(Lc/t;)V
    .registers 3

    invoke-direct {p0}, Lc/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    check-cast v0, Lc/n;

    iput-object v0, p0, Lp/a;->a:Lc/n;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object p1

    iput-object p1, p0, Lp/a;->b:Lc/e;

    return-void
.end method

.method public static c(Ljava/lang/Object;)Lp/a;
    .registers 2

    instance-of v0, p0, Lp/a;

    if-eqz v0, :cond_7

    check-cast p0, Lp/a;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lp/a;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Lc/t;)V

    return-object v0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null value in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final l()Lc/s;
    .registers 4

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    iget-object v1, p0, Lp/a;->a:Lc/n;

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    iget-object v1, p0, Lp/a;->b:Lc/e;

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    new-instance v1, Lc/bc;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc/bc;-><init>(Lc/f;I)V

    return-object v1
.end method
