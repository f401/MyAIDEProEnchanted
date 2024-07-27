.class Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;
.super Ljava/lang/Object;
.source "ZipFileIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/ZipFileIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectoryEntry"
.end annotation


# instance fields
.field private dirName:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

.field private directoriesInited:Z

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/tools/javac/file/ZipFileIndex$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private entriesInited:Z

.field private filesInited:Z

.field private numEntries:I

.field private writtenOffsetOffset:J

.field private zipFileEntries:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/file/ZipFileIndex$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private zipFileEntriesDirectories:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zipFileEntriesFiles:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zipFileEntriesInited:Z

.field private zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Lcom/sun/tools/javac/file/ZipFileIndex;)V
    .registers 6

    const/4 v2, 0x0

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->writtenOffsetOffset:J

    .line 710
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesFiles:Lcom/sun/tools/javac/util/List;

    .line 711
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesDirectories:Lcom/sun/tools/javac/util/List;

    .line 712
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntries:Lcom/sun/tools/javac/util/List;

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entries:Ljava/util/List;

    .line 721
    iput-boolean v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->filesInited:Z

    .line 722
    iput-boolean v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->directoriesInited:Z

    .line 723
    iput-boolean v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entriesInited:Z

    .line 725
    iput-object p1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->dirName:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 726
    iput-object p2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    .line 727
    return-void
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;Ljava/lang/String;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;
    .registers 3

    .line 700
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->getEntry(Ljava/lang/String;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;I)I
    .registers 2

    .line 700
    iput p1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->numEntries:I

    return p1
.end method

.method static synthetic access$1602(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;J)J
    .registers 4

    .line 700
    iput-wide p1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->writtenOffsetOffset:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->dirName:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;)Lcom/sun/tools/javac/util/List;
    .registers 2

    .line 700
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->getFiles()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;)Lcom/sun/tools/javac/util/List;
    .registers 2

    .line 700
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->getDirectories()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getDirectories()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 743
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->directoriesInited:Z

    if-nez v0, :cond_2

    .line 744
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->initEntries()V

    .line 745
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    .line 746
    iget-boolean v2, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->isDir:Z

    if-eqz v2, :cond_0

    .line 747
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesDirectories:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesDirectories:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 750
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->directoriesInited:Z

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesDirectories:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method private getEntries()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/file/ZipFileIndex$Entry;",
            ">;"
        }
    .end annotation

    .line 756
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesInited:Z

    if-nez v0, :cond_1

    .line 757
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->initEntries()V

    .line 758
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntries:Lcom/sun/tools/javac/util/List;

    .line 759
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    .line 760
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntries:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntries:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 762
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesInited:Z

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntries:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method private getEntry(Ljava/lang/String;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;
    .registers 5

    .line 768
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->initEntries()V

    .line 769
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entries:Ljava/util/List;

    new-instance v1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->dirName:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-direct {v1, v2, p1}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 770
    if-gez v0, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 774
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    goto :goto_0
.end method

.method private getFiles()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 730
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->filesInited:Z

    if-nez v0, :cond_2

    .line 731
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->initEntries()V

    .line 732
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    .line 733
    iget-boolean v2, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->isDir:Z

    if-nez v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesFiles:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesFiles:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 737
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->filesInited:Z

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileEntriesFiles:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method private initEntries()V
    .registers 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 778
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entriesInited:Z

    if-eqz v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$1100(Lcom/sun/tools/javac/file/ZipFileIndex;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$800(Lcom/sun/tools/javac/file/ZipFileIndex;)[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->dirName:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 784
    new-instance v3, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-static {}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$1200()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    .line 783
    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    .line 785
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v1}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$800(Lcom/sun/tools/javac/file/ZipFileIndex;)[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->dirName:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 786
    new-instance v4, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-static {}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$1300()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    .line 785
    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    neg-int v1, v1

    .line 788
    add-int/lit8 v0, v0, -0x1

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_4

    .line 789
    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entries:Ljava/util/List;

    iget-object v4, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v4}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$800(Lcom/sun/tools/javac/file/ZipFileIndex;)[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$1400(Lcom/sun/tools/javac/file/ZipFileIndex;)Ljava/io/File;

    move-result-object v3

    .line 793
    if-eqz v3, :cond_4

    .line 794
    const/4 v0, 0x0

    .line 796
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    :try_start_1
    iget-wide v6, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->writtenOffsetOffset:J

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    move v3, v1

    .line 799
    :goto_2
    iget v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->numEntries:I

    if-ge v3, v0, :cond_3

    .line 801
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 802
    new-array v0, v0, [B

    .line 803
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 804
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 807
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 810
    :goto_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 813
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 816
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    .line 819
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v10

    .line 821
    new-instance v9, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    iget-object v12, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->dirName:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-direct {v9, v12, v5}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    .line 822
    iput-boolean v0, v9, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->isDir:Z

    .line 823
    iput v6, v9, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->offset:I

    .line 824
    iput v7, v9, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->size:I

    .line 825
    iput v8, v9, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->compressedSize:I

    .line 826
    iput-wide v10, v9, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->javatime:J

    .line 827
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entries:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 799
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v2

    .line 807
    goto :goto_3

    .line 833
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 839
    :cond_4
    :goto_4
    iput-boolean v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entriesInited:Z

    goto/16 :goto_0

    .line 829
    :catchall_0
    move-exception v1

    .line 833
    :goto_5
    if-eqz v0, :cond_4

    .line 834
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 836
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 829
    :catchall_2
    move-exception v0

    move-object v0, v4

    goto :goto_5
.end method


# virtual methods
.method getEntriesAsCollection()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/tools/javac/file/ZipFileIndex$Entry;",
            ">;"
        }
    .end annotation

    .line 847
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->initEntries()V

    .line 849
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->entries:Ljava/util/List;

    return-object v0
.end method
