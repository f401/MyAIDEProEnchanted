.class public final Lr/e;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Lr/a;

.field public b:Lc/ap;


# direct methods
.method public constructor <init>(Lc/t;)V
    .registers 4

    invoke-direct {p0}, Lc/m;-><init>()V

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    invoke-virtual {p1}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr/a;->c(Ljava/lang/Object;)Lr/a;

    move-result-object v0

    iput-object v0, p0, Lr/e;->a:Lr/a;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lc/ap;->o(Ljava/lang/Object;)Lc/ap;

    move-result-object p1

    iput-object p1, p0, Lr/e;->b:Lc/ap;

    return-void

    .line 1
    :cond_23
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

.method public static c(Ljava/lang/Object;)Lr/e;
    .registers 2

    instance-of v0, p0, Lr/e;

    if-eqz v0, :cond_7

    check-cast p0, Lr/e;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lr/e;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p0

    invoke-direct {v0, p0}, Lr/e;-><init>(Lc/t;)V

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

    iget-object v1, p0, Lr/e;->a:Lr/a;

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    iget-object v1, p0, Lr/e;->b:Lc/ap;

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    new-instance v1, Lc/bc;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc/bc;-><init>(Lc/f;I)V

    return-object v1
.end method
