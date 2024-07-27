.class public Lorg/c/a/a/b/d/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/a/l;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lorg/c/a/a/b/d/a/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/c/a/a/b/d/a/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/a/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/b/d/a/i;->b:Lorg/c/a/a/b/d/a/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/i;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/a/g;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/i;->b:Lorg/c/a/a/b/d/a/g;

    return-object v0
.end method
