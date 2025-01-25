.class public Lorg/c/a/a/b/a/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/a/a/x;


# instance fields
.field protected a:I

.field protected b:Lorg/c/a/a/b/a/b/m;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/a/b/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/a/a/ad;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/a/a/ad;->b:Lorg/c/a/a/b/a/b/m;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/a/ad;->a:I

    return v0
.end method

.method public a(Lorg/c/a/a/b/a/a/ae;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/a/a/ae;->a(Lorg/c/a/a/b/a/a/ad;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/a/b/m;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/ad;->b:Lorg/c/a/a/b/a/b/m;

    return-object v0
.end method
