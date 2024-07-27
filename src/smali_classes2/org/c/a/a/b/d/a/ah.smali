.class public Lorg/c/a/a/b/d/a/ah;
.super Lorg/c/a/a/b/d/a/aa;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lorg/c/a/a/b/d/d/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/c/a/a/b/d/d/b;)V
    .registers 3

    invoke-direct {p0}, Lorg/c/a/a/b/d/a/aa;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/a/ah;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/b/d/a/ah;->b:Lorg/c/a/a/b/d/d/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/ah;)V

    return-void
.end method

.method public g()Lorg/c/a/a/b/d/d/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/ah;->b:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "StaticInitializerDeclaration{}"

    return-object v0
.end method
