.class public La/b/b/c;
.super La/b/b/b;


# instance fields
.field public a:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3

    invoke-direct {p0}, La/b/b/b;-><init>()V

    iput-wide p1, p0, La/b/b/c;->a:D

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/b/a/f;->a(La/b/c;La/b/b/c;)V

    return-void
.end method

.method public b()D
    .registers 3

    iget-wide v0, p0, La/b/b/c;->a:D

    return-wide v0
.end method
