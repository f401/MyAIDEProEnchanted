.class public Lorg/c/a/a/b/a/b/c;
.super Lorg/c/a/a/b/a/b/m;


# instance fields
.field protected b:D


# direct methods
.method public constructor <init>(D)V
    .registers 4

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/c/a/a/b/a/b/m;-><init>(B)V

    iput-wide p1, p0, Lorg/c/a/a/b/a/b/c;->b:D

    return-void
.end method


# virtual methods
.method public b()D
    .registers 3

    iget-wide v0, p0, Lorg/c/a/a/b/a/b/c;->b:D

    return-wide v0
.end method
