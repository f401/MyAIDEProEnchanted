.class public Lorg/c/a/a/b/a/b/f;
.super Lorg/c/a/a/b/a/b/m;


# instance fields
.field protected b:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/c/a/a/b/a/b/m;-><init>(B)V

    iput-wide p1, p0, Lorg/c/a/a/b/a/b/f;->b:J

    return-void
.end method


# virtual methods
.method public b()J
    .registers 3

    iget-wide v0, p0, Lorg/c/a/a/b/a/b/f;->b:J

    return-wide v0
.end method
