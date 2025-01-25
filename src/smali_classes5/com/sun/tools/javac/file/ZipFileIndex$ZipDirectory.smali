.class Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;
.super Ljava/lang/Object;
.source "ZipFileIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/ZipFileIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZipDirectory"
.end annotation


# instance fields
.field private lastDir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

.field private lastLen:I

.field private lastStart:I

.field final this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

.field zipDir:[B

.field zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

.field zipRandomFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/file/ZipFileIndex;Ljava/io/RandomAccessFile;JJLcom/sun/tools/javac/file/ZipFileIndex;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 492
    iput-object p1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    .line 490
    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    .line 493
    iput-object p2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    .line 494
    iput-object p7, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    .line 495
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->hasValidHeader()Z

    .line 496
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->findCENRecord(JJ)V

    .line 497
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->buildIndex()V

    return-void
.end method

.method private buildIndex()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 571
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$400([BI)I

    move-result v2

    .line 574
    if-lez v2, :cond_7b

    .line 575
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, v3}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$602(Lcom/sun/tools/javac/file/ZipFileIndex;Ljava/util/Map;)Ljava/util/Map;

    .line 576
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 577
    const/4 v0, 0x2

    .line 578
    :goto_19
    if-ge v1, v2, :cond_28

    .line 579
    iget-object v4, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v4}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$600(Lcom/sun/tools/javac/file/ZipFileIndex;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->readEntry(ILjava/util/List;Ljava/util/Map;)I

    move-result v0

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 583
    :cond_28
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$600(Lcom/sun/tools/javac/file/ZipFileIndex;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 585
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->dirname()Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$700(Lcom/sun/tools/javac/file/ZipFileIndex;Ljava/lang/String;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v2

    .line 586
    invoke-virtual {v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->basename()Ljava/lang/String;

    move-result-object v0

    .line 587
    new-instance v4, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-direct {v4, v2, v0}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->isDir:Z

    .line 589
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 592
    :cond_60
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-static {v1, v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$802(Lcom/sun/tools/javac/file/ZipFileIndex;[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    .line 593
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$800(Lcom/sun/tools/javac/file/ZipFileIndex;)[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 597
    :goto_7a
    return-void

    .line 595
    :cond_7b
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$900(Lcom/sun/tools/javac/file/ZipFileIndex;)V

    goto :goto_7a
.end method

.method private findCENRecord(JJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    const/16 v0, 0x400

    .line 529
    const/16 v1, 0x400

    new-array v4, v1, [B

    .line 530
    sub-long v2, p3, p1

    .line 533
    :goto_8
    const-wide/16 v6, 0x16

    cmp-long v1, v2, v6

    if-ltz v1, :cond_a9

    .line 534
    int-to-long v6, v0

    cmp-long v1, v2, v6

    if-gez v1, :cond_14

    .line 535
    long-to-int v0, v2

    .line 536
    :cond_14
    int-to-long v6, v0

    sub-long/2addr v2, v6

    .line 537
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    add-long v6, p1, v2

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 538
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 539
    add-int/lit8 v1, v0, -0x16

    .line 540
    :goto_25
    if-ltz v1, :cond_59

    aget-byte v5, v4, v1

    const/16 v6, 0x50

    if-ne v5, v6, :cond_56

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v4, v5

    const/16 v6, 0x4b

    if-ne v5, v6, :cond_56

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, v4, v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_56

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, v4, v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_56

    int-to-long v6, v1

    .line 546
    add-long/2addr v6, v2

    const-wide/16 v8, 0x16

    add-long/2addr v6, v8

    add-int/lit8 v5, v1, 0x14

    invoke-static {v4, v5}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$400([BI)I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    sub-long v8, p3, p1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_59

    .line 547
    :cond_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    .line 550
    :cond_59
    if-ltz v1, :cond_a4

    .line 551
    add-int/lit8 v0, v1, 0xc

    invoke-static {v4, v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$500([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    .line 552
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0xa

    aget-byte v3, v4, v3

    aput-byte v3, v0, v2

    .line 553
    const/4 v2, 0x1

    add-int/lit8 v3, v1, 0xb

    aget-byte v3, v4, v3

    aput-byte v3, v0, v2

    .line 554
    add-int/lit8 v0, v1, 0x10

    invoke-static {v4, v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$500([BI)I

    move-result v0

    .line 557
    if-ltz v0, :cond_9c

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$400([BI)I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_9c

    .line 560
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 561
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    const/4 v2, 0x2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 562
    return-void

    .line 558
    :cond_9c
    new-instance v0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipFormatException;

    const-string v1, "detected a zip64 archive"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndex$ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_a4
    const-wide/16 v6, 0x15

    add-long/2addr v2, v6

    .line 566
    goto/16 :goto_8

    .line 567
    :cond_a9
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "cannot read zip file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasValidHeader()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 506
    :try_start_6
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_33

    .line 507
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_33

    .line 508
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_33

    .line 509
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_40

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    .line 510
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x1

    return v0

    .line 516
    :cond_33
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 517
    new-instance v0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipFormatException;

    const-string v1, "invalid zip magic"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndex$ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :catchall_40
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 517
    throw v0
.end method

.method private readEntry(ILjava/util/List;Ljava/util/Map;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/sun/tools/javac/file/ZipFileIndex$Entry;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            "Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x2f

    .line 601
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    invoke-static {v0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$500([BI)I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_13f

    .line 605
    add-int/lit8 v1, p1, 0x2e

    .line 607
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    add-int/lit8 v2, p1, 0x1c

    invoke-static {v0, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$400([BI)I

    move-result v0

    add-int v4, v0, v1

    .line 609
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$1000(Lcom/sun/tools/javac/file/ZipFileIndex;)I

    move-result v0

    if-eqz v0, :cond_14a

    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    .line 610
    sub-int v2, v4, v1

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$1000(Lcom/sun/tools/javac/file/ZipFileIndex;)I

    move-result v0

    if-lt v2, v0, :cond_14a

    .line 611
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$1000(Lcom/sun/tools/javac/file/ZipFileIndex;)I

    move-result v0

    add-int/2addr v0, v1

    .line 612
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-static {v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$1000(Lcom/sun/tools/javac/file/ZipFileIndex;)I

    move-result v2

    add-int/2addr v1, v2

    move v2, v1

    :goto_3a
    move v3, v2

    move v1, v2

    .line 615
    :goto_3c
    if-ge v3, v4, :cond_53

    .line 616
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    aget-byte v5, v2, v3

    .line 617
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4e

    .line 618
    aput-byte v7, v2, v3

    .line 619
    add-int/lit8 v1, v3, 0x1

    .line 615
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3c

    .line 620
    :cond_4e
    if-ne v5, v7, :cond_4a

    .line 621
    add-int/lit8 v1, v3, 0x1

    goto :goto_4a

    .line 625
    :cond_53
    const/4 v3, 0x0

    .line 626
    if-ne v1, v0, :cond_f9

    .line 627
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$700(Lcom/sun/tools/javac/file/ZipFileIndex;Ljava/lang/String;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v2

    .line 640
    :goto_5e
    if-nez v2, :cond_12d

    .line 641
    iput v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->lastStart:I

    .line 642
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->lastLen:I

    .line 644
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    iget v6, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->lastLen:I

    const-string v7, "UTF-8"

    invoke-direct {v3, v5, v0, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2, v3}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$700(Lcom/sun/tools/javac/file/ZipFileIndex;Ljava/lang/String;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v2

    .line 645
    iput-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->lastDir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-object v0, v2

    .line 650
    :goto_7c
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9e

    .line 651
    new-instance v3, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;

    iget-object v5, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-direct {v3, v0, v5}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Lcom/sun/tools/javac/file/ZipFileIndex;)V

    invoke-interface {p3, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object v3, v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v5, v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_11d

    .line 667
    :cond_9e
    :goto_9e
    if-eq v1, v4, :cond_db

    .line 668
    new-instance v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    sub-int/2addr v4, v1

    const-string v6, "UTF-8"

    invoke-direct {v3, v5, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    add-int/lit8 v2, p1, 0xc

    invoke-static {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$500([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->setNativeTime(I)V

    .line 672
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    add-int/lit8 v2, p1, 0x14

    invoke-static {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$500([BI)I

    move-result v1

    iput v1, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->compressedSize:I

    .line 673
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    add-int/lit8 v2, p1, 0x18

    invoke-static {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$500([BI)I

    move-result v1

    iput v1, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->size:I

    .line 674
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    add-int/lit8 v2, p1, 0x2a

    invoke-static {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$500([BI)I

    move-result v1

    iput v1, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->offset:I

    .line 675
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_db
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    .line 679
    add-int/lit8 v1, p1, 0x1c

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$400([BI)I

    move-result v0

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    .line 680
    add-int/lit8 v2, p1, 0x1e

    invoke-static {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$400([BI)I

    move-result v1

    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    .line 681
    add-int/lit8 v3, p1, 0x20

    invoke-static {v2, v3}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$400([BI)I

    move-result v2

    .line 678
    add-int/lit8 v3, p1, 0x2e

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0

    .line 628
    :cond_f9
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->lastDir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    if-eqz v2, :cond_147

    iget v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->lastLen:I

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_147

    .line 629
    add-int/lit8 v2, v2, -0x1

    .line 630
    :goto_107
    iget-object v5, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipDir:[B

    iget v6, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->lastStart:I

    add-int/2addr v6, v2

    aget-byte v6, v5, v6

    add-int v7, v0, v2

    aget-byte v5, v5, v7

    if-ne v6, v5, :cond_147

    .line 631
    if-nez v2, :cond_11a

    .line 632
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->lastDir:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    goto/16 :goto_5e

    .line 635
    :cond_11a
    add-int/lit8 v2, v2, -0x1

    goto :goto_107

    .line 656
    :cond_11d
    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->this$0:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->dirname()Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->access$700(Lcom/sun/tools/javac/file/ZipFileIndex;Ljava/lang/String;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v0

    goto/16 :goto_7c

    .line 661
    :cond_12d
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9e

    .line 662
    new-instance v0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;

    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->zipFileIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-direct {v0, v2, v3}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Lcom/sun/tools/javac/file/ZipFileIndex;)V

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9e

    .line 602
    :cond_13f
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "cannot read zip file entry"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_147
    move-object v2, v3

    goto/16 :goto_5e

    :cond_14a
    move v0, v1

    move v2, v1

    goto/16 :goto_3a
.end method
