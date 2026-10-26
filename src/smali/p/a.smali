.class public final Lp/a;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Lc/n;

.field public b:Lc/e;


# direct methods
.method public constructor <init>(Lc/n;Lc/e;)V
    .locals 0

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lp/a;->a:Lc/n;

    iput-object p2, p0, Lp/a;->b:Lc/e;

    return-void
.end method

.method public constructor <init>(Lc/t;)V
    .locals 1

    invoke-direct {p0}, Lc/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    check-cast v0, Lc/n;

    iput-object v0, p0, Lp/a;->a:Lc/n;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    iput-object v0, p0, Lp/a;->b:Lc/e;

    return-void
.end method

.method public static c(Ljava/lang/Object;)Lp/a;
    .locals 2

    instance-of v0, p0, Lp/a;

    if-eqz v0, :cond_0

    check-cast p0, Lp/a;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lp/a;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lp/a;-><init>(Lc/t;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null value in getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final l()Lc/s;
    .locals 3

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
