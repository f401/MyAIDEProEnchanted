.class public Lorg/c/a/a/b/c/n;
.super Lorg/c/a/a/b/f/a;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/b/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/f/h;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/f/h;->a()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/b/c/n;->a:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/i;)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/b/c/n;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/b/c/n;->b:I

    return-void
.end method
