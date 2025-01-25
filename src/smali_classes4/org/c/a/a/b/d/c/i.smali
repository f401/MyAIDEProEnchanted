.class public Lorg/c/a/a/b/d/c/i;
.super Lorg/c/a/a/b/d/c/h;


# instance fields
.field protected a:Lorg/c/a/a/b/d/c/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/c/h;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/b/d/c/i;->a:Lorg/c/a/a/b/d/c/e;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/c/e;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/c/h;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/c/i;->a:Lorg/c/a/a/b/d/c/e;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/c/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/c/o;->a(Lorg/c/a/a/b/d/c/i;)V

    return-void
.end method

.method public d()Lorg/c/a/a/b/d/c/e;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/c/i;->a:Lorg/c/a/a/b/d/c/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ElementValueArrayInitializerElementValue{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/c/i;->a:Lorg/c/a/a/b/d/c/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
