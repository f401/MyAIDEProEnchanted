.class Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;
.super Ljava/lang/Object;
.source "ArchivePathElement.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field delegate:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field next:Ljava/util/zip/ZipEntry;

.field private final this$0:Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->this$0:Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;

    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->this$0:Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;

    invoke-static {v0}, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;->access$0(Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;)Lcom/s1243808733/android/multidex/ArchivePathElement;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/multidex/ArchivePathElement;->access$L1000000(Lcom/s1243808733/android/multidex/ArchivePathElement;)Ljava/util/zip/ZipFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->delegate:Ljava/util/Enumeration;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/zip/ZipEntry;

    iput-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->next:Ljava/util/zip/ZipEntry;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;)Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->this$0:Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->next:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->delegate:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->next:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->delegate:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    iput-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->next:Ljava/util/zip/ZipEntry;

    .line 73
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->next:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    check-cast v0, Ljava/util/zip/ZipEntry;

    iput-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->next:Ljava/util/zip/ZipEntry;

    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->next:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 84
    const/4 v0, 0x0

    check-cast v0, Ljava/util/zip/ZipEntry;

    iput-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;->next:Ljava/util/zip/ZipEntry;

    .line 85
    return-object v1

    .line 87
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
