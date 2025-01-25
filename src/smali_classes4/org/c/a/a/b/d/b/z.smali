.class public Lorg/c/a/a/b/d/b/z;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected d:Lorg/c/a/a/b/d/b/n;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/b/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p3, p0, Lorg/c/a/a/b/d/b/z;->d:Lorg/c/a/a/b/d/b/n;

    iput-object p4, p0, Lorg/c/a/a/b/d/b/z;->e:Ljava/lang/String;

    iput-object p5, p0, Lorg/c/a/a/b/d/b/z;->f:Ljava/lang/String;

    iput-object p6, p0, Lorg/c/a/a/b/d/b/z;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/z;->d:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/z;)V

    return-void
.end method

.method public g()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/z;->d:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/z;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/z;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/z;->g:Ljava/lang/String;

    return-object v0
.end method
