.class public final Lr/a;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Lc/n;

.field public b:Lc/e;


# direct methods
.method public constructor <init>(Lc/n;)V
    .registers 2

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lr/a;->a:Lc/n;

    return-void
.end method

.method public constructor <init>(Lc/n;Lc/e;)V
    .registers 3

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lr/a;->a:Lc/n;

    iput-object p2, p0, Lr/a;->b:Lc/e;

    return-void
.end method

.method public constructor <init>(Lc/t;)V
    .registers 5

    invoke-direct {p0}, Lc/m;-><init>()V

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2b

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lc/n;->h(Ljava/lang/Object;)Lc/n;

    move-result-object v0

    iput-object v0, p0, Lr/a;->a:Lc/n;

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v0

    if-ne v0, v2, :cond_27

    invoke-virtual {p1, v1}, Lc/t;->k(I)Lc/e;

    move-result-object p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    iput-object p1, p0, Lr/a;->b:Lc/e;

    return-void

    .line 1
    :cond_2b
    const-string v0, "Bad sequence size: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lc/t;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/lang/Object;)Lr/a;
    .registers 2

    instance-of v0, p0, Lr/a;

    if-eqz v0, :cond_7

    check-cast p0, Lr/a;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lr/a;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p0

    invoke-direct {v0, p0}, Lr/a;-><init>(Lc/t;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final l()Lc/s;
    .registers 4

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    iget-object v1, p0, Lr/a;->a:Lc/n;

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    iget-object v1, p0, Lr/a;->b:Lc/e;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    :cond_11
    new-instance v1, Lc/bc;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc/bc;-><init>(Lc/f;I)V

    return-object v1
.end method
