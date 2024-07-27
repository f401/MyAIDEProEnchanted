.class Lcom/android/apksig/internal/zip/CentralDirectoryRecord$ByLocalFileHeaderOffsetComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByLocalFileHeaderOffsetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/apksig/internal/zip/CentralDirectoryRecord$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord$ByLocalFileHeaderOffsetComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;)I
    .registers 8

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLocalFileHeaderOffset()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLocalFileHeaderOffset()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    check-cast p2, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord$ByLocalFileHeaderOffsetComparator;->compare(Lcom/android/apksig/internal/zip/CentralDirectoryRecord;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;)I

    move-result v0

    return v0
.end method
