.class Lcom/s1243808733/android/dx/merge/SortableType$100000000;
.super Ljava/lang/Object;
.source "SortableType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/s1243808733/android/dx/merge/SortableType;",
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
.method public compare(Lcom/s1243808733/android/dx/merge/SortableType;Lcom/s1243808733/android/dx/merge/SortableType;)I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 32
    if-ne p1, p2, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 35
    :cond_0
    if-nez p2, :cond_1

    .line 36
    const/4 v0, -0x1

    goto :goto_0

    .line 38
    :cond_1
    if-nez p1, :cond_2

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->access$L1000004(Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result v0

    invoke-static {p2}, Lcom/s1243808733/android/dx/merge/SortableType;->access$L1000004(Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 42
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->access$L1000004(Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result v0

    invoke-static {p2}, Lcom/s1243808733/android/dx/merge/SortableType;->access$L1000004(Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getTypeIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/merge/SortableType;->getTypeIndex()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/s1243808733/android/dx/merge/SortableType;

    check-cast p2, Lcom/s1243808733/android/dx/merge/SortableType;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/merge/SortableType$100000000;->compare(Lcom/s1243808733/android/dx/merge/SortableType;Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result v0

    return v0
.end method
