.class Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;
.super Ljava/lang/Object;
.source "ArchivePathElement.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/multidex/ArchivePathElement$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field delegate:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field next:Ljava/util/zip/ZipEntry;

.field final this$1:Lcom/s1243808733/android/multidex/ArchivePathElement$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/multidex/ArchivePathElement$1;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->this$1:Lcom/s1243808733/android/multidex/ArchivePathElement$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-object p1, p1, Lcom/s1243808733/android/multidex/ArchivePathElement$1;->this$0:Lcom/s1243808733/android/multidex/ArchivePathElement;

    invoke-static {p1}, Lcom/s1243808733/android/multidex/ArchivePathElement;->-$$Nest$fgetarchive(Lcom/s1243808733/android/multidex/ArchivePathElement;)Ljava/util/zip/ZipFile;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->delegate:Ljava/util/Enumeration;

    .line 67
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->next:Ljava/util/zip/ZipEntry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 71
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->next:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->delegate:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->delegate:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    iput-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->next:Ljava/util/zip/ZipEntry;

    .line 73
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->next:Ljava/util/zip/ZipEntry;

    goto :goto_1

    .line 77
    :cond_21
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->next:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    .line 82
    invoke-virtual {p0}, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->next:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;->next:Ljava/util/zip/ZipEntry;

    return-object v0

    .line 87
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
