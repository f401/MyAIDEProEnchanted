.class public Lorg/c/a/a/b/d/e/q;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/e/f;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/e/q;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/e/u;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/q;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/e/q;
    .locals 0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/e/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic h()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/c/a/a/b/d/e/q;->b()Lorg/c/a/a/b/d/e/q;

    move-result-object v0

    return-object v0
.end method

.method public j_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l_()Lorg/c/a/a/d/c;
    .locals 1

    invoke-static {p0}, Lorg/c/a/a/d/b;->b(Lorg/c/a/a/d/a;)Lorg/c/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeParameter{identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
