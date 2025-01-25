.class public Lorg/c/a/a/b/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/f/p;


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/f/d;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/f/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/f/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/c/a/a/b/f/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/f/d;->a:I

    return v0
.end method

.method public a(Lorg/c/a/a/b/f/q;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/f/q;->a(Lorg/c/a/a/b/f/d;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/f/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/f/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/f/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeclarationToken{declaration=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/f/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
