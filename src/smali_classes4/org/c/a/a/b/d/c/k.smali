.class public Lorg/c/a/a/b/d/c/k;
.super Lorg/c/a/a/d/c;

# interfaces
.implements Lorg/c/a/a/b/d/c/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/c/a/a/d/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/c/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/c/o;->a(Lorg/c/a/a/b/d/c/k;)V

    return-void
.end method

.method public l_()Lorg/c/a/a/d/c;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ElementValuePairs{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/c/a/a/d/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
