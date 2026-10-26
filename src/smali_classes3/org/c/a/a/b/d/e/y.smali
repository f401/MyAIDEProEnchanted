.class public Lorg/c/a/a/b/d/e/y;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/e/n;


# instance fields
.field protected a:Lorg/c/a/a/b/d/e/l;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/e/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/e/y;->a:Lorg/c/a/a/b/d/e/l;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/b/d/e/l;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/e/y;->a:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/e/u;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/y;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WildcardSuperTypeArgument{? super "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/e/y;->a:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
