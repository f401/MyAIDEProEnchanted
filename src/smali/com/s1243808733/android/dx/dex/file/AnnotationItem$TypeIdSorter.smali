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
        "Ljava/util/Comparator",
        "<",
        "Lcom/s1243808733/android/dx/dex/file/AnnotationItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)I
    .locals 2

    .line 72
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->-$$Nest$fgettype(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;->getIndex()I

    move-result v0

    .line 73
    invoke-static {p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->-$$Nest$fgettype(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;->getIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 68
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    check-cast p2, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;->compare(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)I

    move-result v0

    return v0
.end method
