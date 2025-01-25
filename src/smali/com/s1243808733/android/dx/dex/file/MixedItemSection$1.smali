.class Lcom/s1243808733/android/dx/dex/file/MixedItemSection$1;
.super Ljava/lang/Object;
.source "MixedItemSection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 3

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object p1

    .line 58
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/dex/file/ItemType;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 54
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    check-cast p2, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$1;->compare(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result p1

    return p1
.end method
