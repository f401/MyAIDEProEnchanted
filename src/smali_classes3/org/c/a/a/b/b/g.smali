.class public Lorg/c/a/a/b/b/g;
.super Lorg/c/a/a/b/b/d;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/b/d;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lorg/c/a/a/b/b/g;->d:I

    iput p1, p0, Lorg/c/a/a/b/b/g;->c:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/f;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/b/f;->a(Lorg/c/a/a/b/b/g;)V

    return-void
.end method
