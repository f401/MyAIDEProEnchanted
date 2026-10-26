.class public Lorg/a/a/a/c/g;
.super Lorg/a/a/a/c/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/a/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/a/a/a/c/g;->a(I)V

    return-void
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/a/c/g;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/g;->c(I)I

    move-result v0

    return v0
.end method
