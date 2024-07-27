.class public abstract Lorg/c/a/a/b/d/b/c;
.super Lorg/c/a/a/b/d/b/b;


# instance fields
.field protected c:Lorg/c/a/a/b/d/e/l;


# direct methods
.method protected constructor <init>(ILorg/c/a/a/b/d/e/l;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/b/b;-><init>(I)V

    iput-object p2, p0, Lorg/c/a/a/b/d/b/c;->c:Lorg/c/a/a/b/d/e/l;

    return-void
.end method

.method protected constructor <init>(Lorg/c/a/a/b/d/e/l;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/b;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/b/c;->c:Lorg/c/a/a/b/d/e/l;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/e/l;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/c;->c:Lorg/c/a/a/b/d/e/l;

    return-void
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/c;->c:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method
