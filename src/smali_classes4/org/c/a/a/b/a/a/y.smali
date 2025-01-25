.class public Lorg/c/a/a/b/a/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/a/a/x;


# instance fields
.field protected a:Lorg/c/a/a/b/a/a/a;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/a/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/a/a/y;->a:Lorg/c/a/a/b/a/a/a;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/b/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/y;->a:Lorg/c/a/a/b/a/a/a;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/a/a/ae;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/a/a/ae;->a(Lorg/c/a/a/b/a/a/y;)V

    return-void
.end method
