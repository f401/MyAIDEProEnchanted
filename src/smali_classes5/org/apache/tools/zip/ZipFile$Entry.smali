.class Lorg/apache/tools/zip/ZipFile$Entry;
.super Lorg/apache/tools/zip/ZipEntry;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private final offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;


# direct methods
.method constructor <init>(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)V
    .registers 2

    .line 1041
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;-><init>()V

    .line 1042
    iput-object p1, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 1043
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    .line 1057
    invoke-super {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1059
    check-cast p1, Lorg/apache/tools/zip/ZipFile$Entry;

    .line 1060
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    iget-object v1, p1, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 1061
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2a

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 1062
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    iget-object v1, p1, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 1063
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2a

    const/4 v0, 0x1

    .line 1065
    :cond_2a
    return v0
.end method

.method getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;
    .registers 2

    .line 1046
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .line 1051
    invoke-super {p0}, Lorg/apache/tools/zip/ZipEntry;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 1052
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    rem-long/2addr v2, v4

    long-to-int v1, v2

    .line 1051
    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    return v0
.end method
