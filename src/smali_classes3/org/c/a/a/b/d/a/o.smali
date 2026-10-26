.class public Lorg/c/a/a/b/d/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/a/l;


# instance fields
.field protected a:I

.field protected b:Lorg/c/a/a/b/d/c/d;

.field protected c:Ljava/lang/String;

.field protected d:Lorg/c/a/a/b/d/b/f;

.field protected e:Lorg/c/a/a/b/d/a/i;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/c/a/a/b/d/b/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/d/a/o;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/d/a/o;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/d/a/o;->d:Lorg/c/a/a/b/d/b/f;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/d/a/o;->a:I

    return v0
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/o;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/f;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/b/d/a/o;->d:Lorg/c/a/a/b/d/b/f;

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/c/d;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/a/o;->b:Lorg/c/a/a/b/d/c/d;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/a/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/c/a/a/b/d/b/f;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/a/o;->d:Lorg/c/a/a/b/d/b/f;

    return-object v0
.end method

.method public e()Lorg/c/a/a/b/d/a/i;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/a/o;->e:Lorg/c/a/a/b/d/a/i;

    return-object v0
.end method
