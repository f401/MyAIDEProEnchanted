.class public La/b/b/e;
.super La/b/b/b;


# instance fields
.field public a:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, La/b/b/b;-><init>()V

    iput p1, p0, La/b/b/e;->a:F

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/b/a/f;->a(La/b/c;La/b/b/e;)V

    return-void
.end method

.method public b()F
    .registers 2

    iget v0, p0, La/b/b/e;->a:F

    return v0
.end method
