.class final Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/promeg/pinyinhelper/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmitComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/ahocorasick/trie/Emit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 92
    check-cast p1, Lorg/ahocorasick/trie/Emit;

    check-cast p2, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {p0, p1, p2}, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;->compare(Lorg/ahocorasick/trie/Emit;Lorg/ahocorasick/trie/Emit;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/ahocorasick/trie/Emit;Lorg/ahocorasick/trie/Emit;)I
    .registers 8

    .line 96
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v0

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_26

    .line 98
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result v0

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    goto :goto_25

    :cond_18
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result p1

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result p2

    if-ne p1, p2, :cond_24

    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    const/4 v2, -0x1

    :goto_25
    return v2

    .line 101
    :cond_26
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v0

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v1

    if-ge v0, v1, :cond_32

    const/4 v2, -0x1

    goto :goto_3d

    :cond_32
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result p1

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result p2

    if-ne p1, p2, :cond_3d

    const/4 v2, 0x0

    :cond_3d
    :goto_3d
    return v2
.end method
