.class public Lorg/apache/commons/lang3/tuple/MutablePair;
.super Lorg/apache/commons/lang3/tuple/Pair;
.source "MutablePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/tuple/Pair",
        "<T",
        "L;",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/lang3/tuple/MutablePair",
            "<**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/lang3/tuple/MutablePair;

    sput-object v0, Lorg/apache/commons/lang3/tuple/MutablePair;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/MutablePair;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Pair;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Pair;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->left:Ljava/lang/Object;

    .line 120
    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->right:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public static emptyArray()[Lorg/apache/commons/lang3/tuple/MutablePair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()[",
            "Lorg/apache/commons/lang3/tuple/MutablePair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/apache/commons/lang3/tuple/MutablePair;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/MutablePair;

    check-cast v0, [Lorg/apache/commons/lang3/tuple/MutablePair;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/MutablePair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lorg/apache/commons/lang3/tuple/MutablePair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/apache/commons/lang3/tuple/MutablePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/tuple/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map$Entry;)Lorg/apache/commons/lang3/tuple/MutablePair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<T",
            "L;",
            "TR;>;)",
            "Lorg/apache/commons/lang3/tuple/MutablePair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 90
    if-eqz p0, :cond_12

    .line 91
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 92
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 97
    :goto_c
    new-instance v1, Lorg/apache/commons/lang3/tuple/MutablePair;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/lang3/tuple/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_12
    move-object v0, v1

    move-object v2, v1

    .line 95
    goto :goto_c
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setLeft(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->left:Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public setRight(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->right:Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/MutablePair;->getRight()Ljava/lang/Object;

    move-result-object v0

    .line 168
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/tuple/MutablePair;->setRight(Ljava/lang/Object;)V

    .line 169
    return-object v0
.end method
