.class public Lorg/c/a/a/b/d/b/k;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected d:Lorg/c/a/a/b/d/e/i;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/e/i;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p3, p0, Lorg/c/a/a/b/d/b/k;->d:Lorg/c/a/a/b/d/e/i;

    iput-object p4, p0, Lorg/c/a/a/b/d/b/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/k;)V

    return-void
.end method

.method public g()Lorg/c/a/a/b/d/e/i;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/k;->d:Lorg/c/a/a/b/d/e/i;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/k;->e:Ljava/lang/String;

    return-object v0
.end method
