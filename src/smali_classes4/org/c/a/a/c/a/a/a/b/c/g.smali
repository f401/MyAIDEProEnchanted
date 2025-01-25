.class public Lorg/c/a/a/c/a/a/a/b/c/g;
.super Lorg/c/a/a/b/d/d/af;


# instance fields
.field protected f:Lorg/c/a/a/c/a/a/a/c/f;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/i;Lorg/c/a/a/c/a/a/a/c/f;Lorg/c/a/a/b/d/d/b;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/c/a/a/b/d/d/af;-><init>(ILorg/c/a/a/b/d/e/i;Ljava/lang/String;Lorg/c/a/a/b/d/d/b;)V

    iput-object p3, p0, Lorg/c/a/a/c/a/a/a/b/c/g;->f:Lorg/c/a/a/c/a/a/a/c/f;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/c/g;->f:Lorg/c/a/a/c/a/a/a/c/f;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/c/f;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
