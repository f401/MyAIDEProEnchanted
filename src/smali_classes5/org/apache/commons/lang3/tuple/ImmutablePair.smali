.class public final Lorg/apache/commons/lang3/tuple/ImmutablePair;
.super Lorg/apache/commons/lang3/tuple/Pair;
.source "ImmutablePair.java"


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
.field public static final EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair",
            "<**>;"
        }
    .end annotation
.end field

.field private static final NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/lang3/tuple/ImmutablePair;

    sput-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/ImmutablePair;

    .line 53
    invoke-static {v1, v1}, Lorg/apache/commons/lang3/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

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

    .line 169
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Pair;-><init>()V

    .line 170
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    .line 171
    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public static emptyArray()[Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()[",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 69
    sget-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/ImmutablePair;

    check-cast v0, [Lorg/apache/commons/lang3/tuple/ImmutablePair;

    return-object v0
.end method

.method public static left(Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;

    move-result-object v0

    return-object v0
.end method

.method public static nullPair()Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 97
    sget-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;
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
            "Lorg/apache/commons/lang3/tuple/ImmutablePair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map$Entry;)Lorg/apache/commons/lang3/tuple/ImmutablePair;
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
            "Lorg/apache/commons/lang3/tuple/ImmutablePair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 131
    if-eqz p0, :cond_12

    .line 132
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 133
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 138
    :goto_c
    new-instance v1, Lorg/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_12
    move-object v0, v1

    move-object v2, v1

    .line 136
    goto :goto_c
.end method

.method public static right(Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;

    move-result-object v0

    return-object v0
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

    .line 179
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
