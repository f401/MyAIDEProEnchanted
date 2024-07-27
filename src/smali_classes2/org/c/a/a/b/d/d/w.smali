.class public abstract Lorg/c/a/a/b/d/d/w;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:Lorg/c/a/a/b/d/d/b;


# direct methods
.method protected constructor <init>(Lorg/c/a/a/b/d/d/b;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/w;->a:Lorg/c/a/a/b/d/d/b;

    return-void
.end method


# virtual methods
.method public b()Lorg/c/a/a/b/d/d/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/w;->a:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method
