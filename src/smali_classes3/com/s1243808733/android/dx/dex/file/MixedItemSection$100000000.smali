.class Lcom/s1243808733/android/dx/dex/file/MixedItemSection$100000000;
.super Ljava/lang/Object;
.source "MixedItemSection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v0

    .line 58
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/ItemType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    check-cast p2, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$100000000;->compare(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v0

    return v0
.end method
