.class public Lorg/c/a/a/b/a/a/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/a/a/x;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/a/a/ab;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/b/a/a/ab;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/a/a/ae;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/a/a/ae;->a(Lorg/c/a/a/b/a/a/ab;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/ab;->b:Ljava/lang/String;

    return-object v0
.end method
