.class public Lorg/c/a/a/b/d/d/af;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:I

.field protected b:Lorg/c/a/a/b/d/e/i;

.field protected c:Lorg/c/a/a/d/c;

.field protected d:Ljava/lang/String;

.field protected e:Lorg/c/a/a/b/d/d/b;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/i;Ljava/lang/String;Lorg/c/a/a/b/d/d/b;)V
    .locals 1

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/b/d/d/af;->c:Lorg/c/a/a/d/c;

    iput p1, p0, Lorg/c/a/a/b/d/d/af;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/d/d/af;->b:Lorg/c/a/a/b/d/e/i;

    iput-object p3, p0, Lorg/c/a/a/b/d/d/af;->d:Ljava/lang/String;

    iput-object p4, p0, Lorg/c/a/a/b/d/d/af;->e:Lorg/c/a/a/b/d/d/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/t;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/af;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/i;)V
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/af;->c:Lorg/c/a/a/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/b/d/d/af;->c:Lorg/c/a/a/d/c;

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/b/d/d/af;->c:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/d/d/af;->a:I

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/e/i;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/af;->b:Lorg/c/a/a/b/d/e/i;

    return-object v0
.end method

.method public e()Lorg/c/a/a/d/c;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/af;->c:Lorg/c/a/a/d/c;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/af;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lorg/c/a/a/b/d/d/b;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/af;->e:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method
