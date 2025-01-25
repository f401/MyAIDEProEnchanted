.class public Lorg/c/a/a/c/a/a/a/a/c;
.super Lorg/c/a/a/c/a/a/a/a/a;


# direct methods
.method public constructor <init>(I)V
    .registers 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x1

    new-instance v7, Lorg/c/a/a/c/a/a/a/a/d;

    invoke-direct {v7}, Lorg/c/a/a/c/a/a/a/a/d;-><init>()V

    move-object v0, p0

    move v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lorg/c/a/a/c/a/a/a/a/a;-><init>(Lorg/c/a/a/c/a/a/a/a/f;IIIIZLjava/util/HashSet;)V

    return-void
.end method


# virtual methods
.method public f()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
