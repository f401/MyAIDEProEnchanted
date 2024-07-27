.class public abstract Lsun/misc/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private oa:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    .line 39
    iput p1, p0, Lsun/misc/LRUCache;->size:I

    .line 40
    return-void
.end method

.method public static moveToFront([Ljava/lang/Object;I)V
    .registers 4

    .line 47
    aget-object v0, p0, p1

    .line 48
    :goto_0
    if-lez p1, :cond_0

    .line 49
    add-int/lit8 v1, p1, -0x1

    aget-object v1, p0, v1

    aput-object v1, p0, p1

    .line 48
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation
.end method

.method public forName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 55
    iget v0, p0, Lsun/misc/LRUCache;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lsun/misc/LRUCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 72
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    .line 73
    :goto_0
    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 58
    aget-object v1, v1, v0

    .line 59
    if-nez v1, :cond_3

    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p0, v1, p1}, Lsun/misc/LRUCache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    if-lez v0, :cond_4

    .line 63
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    invoke-static {v2, v0}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    :cond_4
    move-object v0, v1

    .line 64
    goto :goto_0
.end method

.method protected abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TN;)Z"
        }
    .end annotation
.end method
