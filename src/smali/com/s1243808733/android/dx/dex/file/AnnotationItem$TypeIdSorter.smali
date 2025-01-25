.class Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;
.super Ljava/lang/Object;
.source "AnnotationItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/file/AnnotationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeIdSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/s1243808733/android/dx/dex/file/AnnotationItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)I
    .registers 3

    .line 72
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->-$$Nest$fgettype(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;->getIndex()I

    move-result p1

    .line 73
    invoke-static {p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->-$$Nest$fgettype(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;->getIndex()I

    move-result p2

    if-ge p1, p2, :cond_14

    const/4 p1, -0x1

    return p1

    :cond_14
    if-le p1, p2, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 68
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    check-cast p2, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;->compare(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)I

    move-result p1

    return p1
.end method
