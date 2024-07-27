.class Lcom/sun/tools/javac/file/Paths$Path;
.super Ljava/util/LinkedHashSet;
.source "Paths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/Paths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Path"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashSet",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private canonicalValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private emptyPathDefault:Ljava/io/File;

.field private expandJarClassPaths:Z

.field final this$0:Lcom/sun/tools/javac/file/Paths;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/file/Paths;)V
    .registers 3

    .line 478
    iput-object p1, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    .line 479
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->expandJarClassPaths:Z

    .line 472
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->canonicalValues:Ljava/util/Set;

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->emptyPathDefault:Ljava/io/File;

    .line 480
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/file/Paths$Path;Ljava/io/File;Z)V
    .registers 3

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/file/Paths$Path;->addDirectory(Ljava/io/File;Z)V

    return-void
.end method

.method private addDirectory(Ljava/io/File;Z)V
    .registers 8

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    if-eqz p2, :cond_0

    .line 506
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v1}, Lcom/sun/tools/javac/file/Paths;->access$300(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    const-string v2, "dir.path.element.not.found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :cond_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 512
    if-eqz v1, :cond_0

    .line 516
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 517
    iget-object v4, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v4, v3}, Lcom/sun/tools/javac/file/Paths;->access$400(Lcom/sun/tools/javac/file/Paths;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    invoke-virtual {p0, v3, p2}, Lcom/sun/tools/javac/file/Paths$Path;->addFile(Ljava/io/File;Z)V

    .line 516
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addJarClassPath(Ljava/io/File;Z)V
    .registers 8

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v0}, Lcom/sun/tools/javac/file/Paths;->access$600(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/file/FSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/FSInfo;->getJarClassPath(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 579
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/file/Paths$Path;->addFile(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v1}, Lcom/sun/tools/javac/file/Paths;->access$300(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    const-string v2, "error.reading.file"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    :cond_0
    return-void
.end method


# virtual methods
.method public addDirectories(Ljava/lang/String;)Lcom/sun/tools/javac/file/Paths$Path;
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v0}, Lcom/sun/tools/javac/file/Paths;->access$200(Lcom/sun/tools/javac/file/Paths;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/file/Paths$Path;->addDirectories(Ljava/lang/String;Z)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    return-object v0
.end method

.method public addDirectories(Ljava/lang/String;Z)Lcom/sun/tools/javac/file/Paths$Path;
    .registers 5

    .line 493
    if-eqz p1, :cond_0

    .line 494
    invoke-static {p1}, Lcom/sun/tools/javac/file/Paths;->access$100(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 495
    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/file/Paths$Path;->addDirectory(Ljava/io/File;Z)V

    goto :goto_0

    .line 496
    :cond_0
    return-object p0
.end method

.method public addFile(Ljava/io/File;Z)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 534
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v0}, Lcom/sun/tools/javac/file/Paths;->access$600(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/file/FSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 535
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/Paths$Path;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths$Path;->canonicalValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v1}, Lcom/sun/tools/javac/file/Paths;->access$600(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/file/FSInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/file/FSInfo;->exists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 542
    if-eqz p2, :cond_2

    .line 543
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v1}, Lcom/sun/tools/javac/file/Paths;->access$300(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    const-string v2, "path.element.not.found"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths$Path;->canonicalValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->expandJarClassPaths:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v0}, Lcom/sun/tools/javac/file/Paths;->access$600(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/file/FSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/FSInfo;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v0}, Lcom/sun/tools/javac/file/Paths;->access$600(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/file/FSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/FSInfo;->isFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/file/Paths$Path;->addJarClassPath(Ljava/io/File;Z)V

    goto :goto_0

    .line 544
    :cond_3
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v1}, Lcom/sun/tools/javac/file/Paths;->access$600(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/file/FSInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/file/FSInfo;->isFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v1, p1}, Lcom/sun/tools/javac/file/Paths;->access$400(Lcom/sun/tools/javac/file/Paths;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 550
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 551
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 552
    if-eqz p2, :cond_2

    .line 553
    iget-object v1, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v1}, Lcom/sun/tools/javac/file/Paths;->access$300(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    const-string v2, "unexpected.archive.file"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 554
    :catch_0
    move-exception v0

    .line 556
    if-eqz p2, :cond_0

    .line 557
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v0}, Lcom/sun/tools/javac/file/Paths;->access$300(Lcom/sun/tools/javac/file/Paths;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    const-string v1, "invalid.archive.file"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public addFiles(Ljava/lang/String;)Lcom/sun/tools/javac/file/Paths$Path;
    .registers 3

    .line 530
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->this$0:Lcom/sun/tools/javac/file/Paths;

    invoke-static {v0}, Lcom/sun/tools/javac/file/Paths;->access$200(Lcom/sun/tools/javac/file/Paths;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/file/Paths$Path;->addFiles(Ljava/lang/String;Z)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    return-object v0
.end method

.method public addFiles(Ljava/lang/String;Z)Lcom/sun/tools/javac/file/Paths$Path;
    .registers 5

    .line 523
    if-eqz p1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/sun/tools/javac/file/Paths$Path;->emptyPathDefault:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/sun/tools/javac/file/Paths;->access$500(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 525
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/file/Paths$Path;->addFile(Ljava/io/File;Z)V

    goto :goto_0

    .line 526
    :cond_0
    return-object p0
.end method

.method public emptyPathDefault(Ljava/io/File;)Lcom/sun/tools/javac/file/Paths$Path;
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/sun/tools/javac/file/Paths$Path;->emptyPathDefault:Ljava/io/File;

    .line 489
    return-object p0
.end method

.method public expandJarClassPaths(Z)Lcom/sun/tools/javac/file/Paths$Path;
    .registers 2

    .line 483
    iput-boolean p1, p0, Lcom/sun/tools/javac/file/Paths$Path;->expandJarClassPaths:Z

    .line 484
    return-object p0
.end method
