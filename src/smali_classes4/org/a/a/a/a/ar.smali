.class public Lorg/a/a/a/a/ar;
.super Lorg/a/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/a/a/a/a/c;-><init>()V

    new-instance v0, Lorg/a/a/a/a/as;

    invoke-direct {v0}, Lorg/a/a/a/a/as;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/ar;->b:Lorg/a/a/a/a/d;

    return-void
.end method
