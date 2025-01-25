.class final Lorg/apache/commons/lang3/tuple/Triple$TripleAdapter;
.super Lorg/apache/commons/lang3/tuple/Triple;
.source "Triple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/tuple/Triple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TripleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/tuple/Triple",
        "<T",
        "L;",
        "TM;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 42
    check-cast p1, Lorg/apache/commons/lang3/tuple/Triple;

    invoke-super {p0, p1}, Lorg/apache/commons/lang3/tuple/Triple;->compareTo(Lorg/apache/commons/lang3/tuple/Triple;)I

    move-result v0

    return v0
.end method

.method public getLeft()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiddle()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
