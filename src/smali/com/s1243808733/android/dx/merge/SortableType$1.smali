.class Lcom/s1243808733/android/dx/merge/SortableType$1;
.super Ljava/lang/Object;
.source "SortableType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/merge/SortableType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/s1243808733/android/dx/merge/SortableType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/merge/SortableType;Lcom/s1243808733/android/dx/merge/SortableType;)I
    .registers 5

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    if-nez p2, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    if-nez p1, :cond_c

    const/4 p1, 0x1

    return p1

    .line 41
    :cond_c
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->-$$Nest$fgetdepth(Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result v0

    invoke-static {p2}, Lcom/s1243808733/android/dx/merge/SortableType;->-$$Nest$fgetdepth(Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result v1

    if-eq v0, v1, :cond_1f

    .line 42
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->-$$Nest$fgetdepth(Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result p1

    invoke-static {p2}, Lcom/s1243808733/android/dx/merge/SortableType;->-$$Nest$fgetdepth(Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result p2

    goto :goto_27

    .line 44
    :cond_1f
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getTypeIndex()I

    move-result p1

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/merge/SortableType;->getTypeIndex()I

    move-result p2

    .line 42
    :goto_27
    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 29
    check-cast p1, Lcom/s1243808733/android/dx/merge/SortableType;

    check-cast p2, Lcom/s1243808733/android/dx/merge/SortableType;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/merge/SortableType$1;->compare(Lcom/s1243808733/android/dx/merge/SortableType;Lcom/s1243808733/android/dx/merge/SortableType;)I

    move-result p1

    return p1
.end method
