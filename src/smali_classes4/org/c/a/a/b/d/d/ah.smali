.class public Lorg/c/a/a/b/d/d/ah;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:Lorg/c/a/a/b/d/a/ai;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/a/ai;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/ah;->a:Lorg/c/a/a/b/d/a/ai;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/ah;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/a/ai;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ah;->a:Lorg/c/a/a/b/d/a/ai;

    return-object v0
.end method
