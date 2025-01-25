.class public Lorg/c/a/a/c/a/a/d/ae;
.super Ljava/util/AbstractList;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lorg/c/a/a/b/d/e/l;
    .registers 3

    sget-object v0, Lorg/c/a/a/b/d/e/k;->f:Lorg/c/a/a/b/d/e/k;

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/d/ae;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
