.class public Lcom/sun/tools/javac/file/JavacFileManager;
.super Lcom/sun/tools/javac/util/BaseFileManager;
.source "JavacFileManager.java"

# interfaces
.implements Ljavax/tools/StandardJavaFileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/file/JavacFileManager$Archive;,
        Lcom/sun/tools/javac/file/JavacFileManager$MissingArchive;,
        Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;
    }
.end annotation


# static fields
.field private static final fileSystemIsCaseSensitive:Z

.field private static final symbolFileLocation:[Ljava/lang/String;

.field private static final symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;


# instance fields
.field archives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lcom/sun/tools/javac/file/JavacFileManager$Archive;",
            ">;"
        }
    .end annotation
.end field

.field private classOutDir:Ljava/io/File;

.field private contextUseOptimizedZip:Z

.field private defaultEncodingName:Ljava/lang/String;

.field private fsInfo:Lcom/sun/tools/javac/file/FSInfo;

.field protected ignoreSymbolFile:Z

.field protected mmappedIO:Z

.field private paths:Lcom/sun/tools/javac/file/Paths;

.field protected sortFiles:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

.field private final sourceOrClass:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject$Kind;",
            ">;"
        }
    .end annotation
.end field

.field private sourceOutDir:Ljava/io/File;

.field private final uninited:Ljava/io/File;

.field private zipFileIndexCache:Lcom/sun/tools/javac/file/ZipFileIndexCache;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_22

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/sun/tools/javac/file/JavacFileManager;->fileSystemIsCaseSensitive:Z

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "lib"

    aput-object v3, v0, v2

    const-string v2, "ct.sym"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/tools/javac/file/JavacFileManager;->symbolFileLocation:[Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    const-string v1, "META-INF/sym/rt.jar/"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/file/JavacFileManager;->symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    return-void

    :cond_22
    move v0, v2

    .line 83
    goto :goto_9
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V
    .registers 6

    .line 126
    invoke-direct {p0, p3}, Lcom/sun/tools/javac/util/BaseFileManager;-><init>(Ljava/nio/charset/Charset;)V

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "U N I N I T E D"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->uninited:Ljava/io/File;

    .line 89
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    sget-object v1, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    .line 90
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sourceOrClass:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->archives:Ljava/util/Map;

    .line 113
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->uninited:Ljava/io/File;

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->classOutDir:Ljava/io/File;

    .line 118
    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sourceOutDir:Ljava/io/File;

    .line 127
    if-eqz p2, :cond_2a

    .line 128
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 129
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->setContext(Lcom/sun/tools/javac/util/Context;)V

    .line 130
    return-void
.end method

.method private caseMapCheck(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 460
    sget-boolean v2, Lcom/sun/tools/javac/file/JavacFileManager;->fileSystemIsCaseSensitive:Z

    if-eqz v2, :cond_7

    .line 482
    :cond_6
    :goto_6
    return v0

    .line 465
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_4a

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 470
    iget-object v2, p2, Lcom/sun/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 471
    array-length v2, v4

    add-int/lit8 v3, v2, -0x1

    .line 472
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    .line 473
    :cond_1b
    :goto_1b
    if-ltz v3, :cond_46

    if-ltz v2, :cond_46

    .line 474
    :goto_1f
    if-ltz v3, :cond_2a

    aget-char v6, v4, v3

    sget-char v7, Ljava/io/File;->separatorChar:C

    if-ne v6, v7, :cond_2a

    add-int/lit8 v3, v3, -0x1

    goto :goto_1f

    .line 475
    :cond_2a
    :goto_2a
    if-ltz v2, :cond_35

    aget-char v6, v5, v2

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_35

    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 476
    :cond_35
    if-ltz v3, :cond_1b

    if-ltz v2, :cond_1b

    .line 477
    aget-char v6, v4, v3

    aget-char v7, v5, v2

    if-eq v6, v7, :cond_41

    move v0, v1

    goto :goto_6

    .line 478
    :cond_41
    add-int/lit8 v3, v3, -0x1

    .line 479
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 482
    :cond_46
    if-ltz v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 466
    :catch_4a
    move-exception v0

    move v0, v1

    .line 467
    goto :goto_6
.end method

.method private getClassOutDir()Ljava/io/File;
    .registers 3

    .line 871
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->classOutDir:Ljava/io/File;

    iget-object v1, p0, Lcom/sun/tools/javac/file/JavacFileManager;->uninited:Ljava/io/File;

    if-ne v0, v1, :cond_f

    .line 872
    const/4 v0, 0x0

    sget-object v1, Lcom/sun/tools/javac/main/OptionName;->D:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->getOutputLocation(Ljava/io/File;Lcom/sun/tools/javac/main/OptionName;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->classOutDir:Ljava/io/File;

    .line 873
    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->classOutDir:Ljava/io/File;

    return-object v0
.end method

.method private getDefaultEncodingName()Ljava/lang/String;
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->defaultEncodingName:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 615
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 616
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->defaultEncodingName:Ljava/lang/String;

    .line 618
    :cond_14
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->defaultEncodingName:Ljava/lang/String;

    return-object v0
.end method

.method private getFileForInput(Ljavax/tools/JavaFileManager$Location;Lcom/sun/tools/javac/file/RelativePath$RelativeFile;)Ljavax/tools/JavaFileObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 716
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    .line 717
    if-nez v0, :cond_9

    move-object v0, v2

    .line 737
    :goto_8
    return-object v0

    .line 720
    :cond_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 721
    iget-object v1, p0, Lcom/sun/tools/javac/file/JavacFileManager;->archives:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/file/JavacFileManager$Archive;

    .line 722
    if-nez v1, :cond_3f

    .line 723
    iget-object v1, p0, Lcom/sun/tools/javac/file/JavacFileManager;->fsInfo:Lcom/sun/tools/javac/file/FSInfo;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/file/FSInfo;->isDirectory(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 724
    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 725
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 726
    new-instance v0, Lcom/sun/tools/javac/file/RegularFileObject;

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/file/RegularFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;)V

    goto :goto_8

    .line 730
    :cond_3b
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->openArchive(Ljava/io/File;)Lcom/sun/tools/javac/file/JavacFileManager$Archive;

    move-result-object v1

    .line 733
    :cond_3f
    invoke-interface {v1, p2}, Lcom/sun/tools/javac/file/JavacFileManager$Archive;->contains(Lcom/sun/tools/javac/file/RelativePath;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 734
    invoke-virtual {p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->dirname()Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->basename()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/sun/tools/javac/file/JavacFileManager$Archive;->getFileObject(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    goto :goto_8

    :cond_52
    move-object v0, v2

    .line 737
    goto :goto_8
.end method

.method private getFileForOutput(Ljavax/tools/JavaFileManager$Location;Lcom/sun/tools/javac/file/RelativePath$RelativeFile;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 775
    sget-object v1, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    if-ne p1, v1, :cond_37

    .line 776
    invoke-direct {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getClassOutDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 777
    invoke-direct {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getClassOutDir()Ljava/io/File;

    move-result-object v0

    .line 796
    :cond_f
    :goto_f
    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 797
    new-instance v0, Lcom/sun/tools/javac/file/RegularFileObject;

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/file/RegularFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;)V

    :goto_18
    return-object v0

    .line 780
    :cond_19
    if-eqz p3, :cond_27

    instance-of v1, p3, Lcom/sun/tools/javac/file/RegularFileObject;

    if-eqz v1, :cond_27

    .line 781
    check-cast p3, Lcom/sun/tools/javac/file/RegularFileObject;

    iget-object v0, p3, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 783
    :cond_27
    new-instance v1, Lcom/sun/tools/javac/file/RegularFileObject;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->basename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/sun/tools/javac/file/RegularFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;)V

    move-object v0, v1

    goto :goto_18

    .line 785
    :cond_37
    sget-object v1, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    if-ne p1, v1, :cond_4b

    .line 786
    invoke-direct {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getSourceOutDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-direct {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getSourceOutDir()Ljava/io/File;

    move-result-object v0

    goto :goto_f

    :cond_46
    invoke-direct {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getClassOutDir()Ljava/io/File;

    move-result-object v0

    goto :goto_f

    .line 788
    :cond_4b
    iget-object v1, p0, Lcom/sun/tools/javac/file/JavacFileManager;->paths:Lcom/sun/tools/javac/file/Paths;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v1

    .line 789
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_f
.end method

.method public static getMessage(Ljava/io/IOException;)Ljava/lang/String;
    .registers 2

    .line 271
    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_7

    .line 277
    :cond_6
    :goto_6
    return-object v0

    .line 274
    :cond_7
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 275
    if-nez v0, :cond_6

    .line 277
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private getOutputDirectory(Ljava/lang/Iterable;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    if-nez p1, :cond_4

    .line 836
    const/4 v0, 0x0

    .line 847
    :cond_3
    return-object v0

    .line 837
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 838
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 840
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 841
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_54

    .line 843
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 845
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": not a directory"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": does not exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path too long for directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty path for directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOutputLocation(Ljava/io/File;Lcom/sun/tools/javac/main/OptionName;)Ljava/io/File;
    .registers 4

    .line 851
    if-eqz p1, :cond_3

    .line 856
    :goto_2
    return-object p1

    .line 853
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v0

    .line 854
    if-nez v0, :cond_d

    .line 855
    const/4 p1, 0x0

    goto :goto_2

    .line 856
    :cond_d
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getRelativeName(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 252
    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_19

    .line 253
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->isRelativeUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 255
    return-object v0

    .line 257
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid relative path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getSourceOutDir()Ljava/io/File;
    .registers 3

    .line 877
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sourceOutDir:Ljava/io/File;

    iget-object v1, p0, Lcom/sun/tools/javac/file/JavacFileManager;->uninited:Ljava/io/File;

    if-ne v0, v1, :cond_f

    .line 878
    const/4 v0, 0x0

    sget-object v1, Lcom/sun/tools/javac/main/OptionName;->S:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->getOutputLocation(Ljava/io/File;Lcom/sun/tools/javac/main/OptionName;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sourceOutDir:Ljava/io/File;

    .line 879
    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sourceOutDir:Ljava/io/File;

    return-object v0
.end method

.method protected static isRelativeUri(Ljava/lang/String;)Z
    .registers 2

    .line 233
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->isRelativeUri(Ljava/net/URI;)Z
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_8} :catch_a

    move-result v0

    .line 235
    :goto_9
    return v0

    .line 234
    :catch_a
    move-exception v0

    .line 235
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected static isRelativeUri(Ljava/net/URI;)Z
    .registers 4

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 227
    :cond_7
    :goto_7
    return v0

    .line 220
    :cond_8
    invoke-virtual {p0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 223
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 225
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "./"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "../"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 227
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private isValidFile(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject$Kind;",
            ">;)Z"
        }
    .end annotation

    .line 450
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getKind(Ljava/lang/String;)Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    .line 451
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isValidName(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 157
    const-string v1, "\\."

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_18

    aget-object v4, v2, v1

    .line 158
    invoke-static {v4}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 161
    :goto_14
    return v0

    .line 157
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 161
    :cond_18
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private listArchive(Lcom/sun/tools/javac/file/JavacFileManager$Archive;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLcom/sun/tools/javac/util/ListBuffer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/file/JavacFileManager$Archive;",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject$Kind;",
            ">;Z",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 390
    invoke-interface {p1, p2}, Lcom/sun/tools/javac/file/JavacFileManager$Archive;->getFiles(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_22

    move-object v1, v0

    .line 392
    :goto_7
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 393
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 394
    invoke-direct {p0, v0, p3}, Lcom/sun/tools/javac/file/JavacFileManager;->isValidFile(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 395
    invoke-interface {p1, p2, v0}, Lcom/sun/tools/javac/file/JavacFileManager$Archive;->getFileObject(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 392
    :cond_1e
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_7

    .line 399
    :cond_22
    if-eqz p4, :cond_47

    .line 400
    invoke-interface {p1}, Lcom/sun/tools/javac/file/JavacFileManager$Archive;->getSubdirectories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2c
    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 401
    invoke-virtual {p2, v2}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->contains(Lcom/sun/tools/javac/file/RelativePath;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 405
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/file/JavacFileManager;->listArchive(Lcom/sun/tools/javac/file/JavacFileManager$Archive;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLcom/sun/tools/javac/util/ListBuffer;)V

    goto :goto_2c

    .line 409
    :cond_47
    return-void
.end method

.method private listContainer(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLcom/sun/tools/javac/util/ListBuffer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject$Kind;",
            ">;Z",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->archives:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/JavacFileManager$Archive;

    .line 422
    if-nez v0, :cond_39

    .line 424
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->fsInfo:Lcom/sun/tools/javac/file/FSInfo;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/FSInfo;->isDirectory(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 425
    invoke-direct/range {p0 .. p5}, Lcom/sun/tools/javac/file/JavacFileManager;->listDirectory(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLcom/sun/tools/javac/util/ListBuffer;)V

    .line 447
    :goto_15
    return-void

    .line 435
    :cond_16
    :try_start_16
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->openArchive(Ljava/io/File;)Lcom/sun/tools/javac/file/JavacFileManager$Archive;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_23

    move-result-object v1

    :goto_1a
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 442
    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/file/JavacFileManager;->listArchive(Lcom/sun/tools/javac/file/JavacFileManager$Archive;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLcom/sun/tools/javac/util/ListBuffer;)V

    goto :goto_15

    .line 436
    :catch_23
    move-exception v0

    .line 437
    iget-object v1, p0, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    .line 438
    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    .line 437
    const-string v2, "error.reading.file"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_39
    move-object v1, v0

    .line 422
    goto :goto_1a
.end method

.method private listDirectory(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLcom/sun/tools/javac/util/ListBuffer;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject$Kind;",
            ">;Z",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-virtual {p2, p1}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 350
    invoke-direct {p0, v7, p2}, Lcom/sun/tools/javac/file/JavacFileManager;->caseMapCheck(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 378
    :cond_a
    return-void

    .line 353
    :cond_b
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 354
    if-eqz v8, :cond_a

    .line 357
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sortFiles:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    if-eqz v0, :cond_18

    .line 358
    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 360
    :cond_18
    array-length v9, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_1b
    if-ge v6, v9, :cond_a

    aget-object v0, v8, v6

    .line 361
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 363
    if-eqz p4, :cond_3e

    invoke-static {v1}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 364
    new-instance v2, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-direct {v2, p2, v1}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/file/JavacFileManager;->listDirectory(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLcom/sun/tools/javac/util/ListBuffer;)V

    .line 371
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1b

    :cond_42
    invoke-direct {p0, v1, p3}, Lcom/sun/tools/javac/file/JavacFileManager;->isValidFile(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 372
    new-instance v0, Lcom/sun/tools/javac/file/RegularFileObject;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/sun/tools/javac/file/RegularFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/lang/String;Ljava/io/File;)V

    .line 374
    invoke-virtual {p5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_3e
.end method

.method private openArchive(Ljava/io/File;Z)Lcom/sun/tools/javac/file/JavacFileManager$Archive;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 507
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->ignoreSymbolFile:Z

    if-nez v0, :cond_140

    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->paths:Lcom/sun/tools/javac/file/Paths;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/Paths;->isDefaultBootClassPathRtJar(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 509
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 510
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "jre"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 511
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 513
    :cond_31
    sget-object v3, Lcom/sun/tools/javac/file/JavacFileManager;->symbolFileLocation:[Ljava/lang/String;

    array-length v4, v3

    move-object v1, v0

    move v2, v7

    :goto_36
    if-ge v2, v4, :cond_43

    aget-object v6, v3, v2

    .line 514
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 513
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_36

    .line 516
    :cond_43
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 525
    :goto_49
    if-nez p2, :cond_62

    .line 529
    :try_start_4b
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v2, v0

    move-object v4, v5

    move v3, v7

    .line 555
    :goto_53
    if-ne p1, v1, :cond_f3

    .line 556
    if-nez p2, :cond_dc

    .line 557
    new-instance v0, Lcom/sun/tools/javac/file/ZipArchive;

    invoke-direct {v0, p0, v2}, Lcom/sun/tools/javac/file/ZipArchive;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/util/zip/ZipFile;)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_5c} :catch_fe
    .catch Lcom/sun/tools/javac/file/ZipFileIndex$ZipFormatException; {:try_start_4b .. :try_end_5c} :catch_13e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_5c} :catch_11e

    .line 586
    :goto_5c
    iget-object v1, p0, Lcom/sun/tools/javac/file/JavacFileManager;->archives:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    return-object v0

    .line 531
    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    const-string v2, "usezipindex"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v3

    .line 532
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    const-string v2, "java.io.tmpdir"

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    const-string v4, "cachezipindexdir"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_d7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d7

    .line 536
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 537
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 538
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_9d
    :goto_9d
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d7

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 546
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d8

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d8

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v5

    goto :goto_53

    .line 540
    :cond_d1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    :cond_d7
    move-object v0, v2

    :cond_d8
    move-object v2, v5

    move-object v4, v0

    .line 555
    goto/16 :goto_53

    .line 559
    :cond_dc
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->zipFileIndexCache:Lcom/sun/tools/javac/file/ZipFileIndexCache;

    iget-object v2, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    .line 564
    const-string v5, "writezipindexfiles"

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    .line 560
    new-instance v6, Lcom/sun/tools/javac/file/ZipFileIndexArchive;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/file/ZipFileIndexCache;->getZipFileIndex(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;ZLjava/lang/String;Z)Lcom/sun/tools/javac/file/ZipFileIndex;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/sun/tools/javac/file/ZipFileIndexArchive;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Lcom/sun/tools/javac/file/ZipFileIndex;)V

    move-object v0, v6

    goto/16 :goto_5c

    .line 567
    :cond_f3
    if-nez p2, :cond_106

    .line 568
    new-instance v0, Lcom/sun/tools/javac/file/SymbolArchive;

    sget-object v3, Lcom/sun/tools/javac/file/JavacFileManager;->symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/sun/tools/javac/file/SymbolArchive;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;Ljava/util/zip/ZipFile;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;)V
    :try_end_fc
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_fc} :catch_fe
    .catch Lcom/sun/tools/javac/file/ZipFileIndex$ZipFormatException; {:try_start_62 .. :try_end_fc} :catch_13e
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_fc} :catch_11e

    goto/16 :goto_5c

    .line 578
    :catch_fe
    move-exception v0

    .line 579
    new-instance v0, Lcom/sun/tools/javac/file/JavacFileManager$MissingArchive;

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/file/JavacFileManager$MissingArchive;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;)V

    goto/16 :goto_5c

    .line 570
    :cond_106
    :try_start_106
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->zipFileIndexCache:Lcom/sun/tools/javac/file/ZipFileIndexCache;

    sget-object v2, Lcom/sun/tools/javac/file/JavacFileManager;->symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v5, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    .line 575
    const-string v6, "writezipindexfiles"

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    .line 571
    new-instance v6, Lcom/sun/tools/javac/file/ZipFileIndexArchive;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/file/ZipFileIndexCache;->getZipFileIndex(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;ZLjava/lang/String;Z)Lcom/sun/tools/javac/file/ZipFileIndex;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/sun/tools/javac/file/ZipFileIndexArchive;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Lcom/sun/tools/javac/file/ZipFileIndex;)V
    :try_end_11b
    .catch Ljava/io/FileNotFoundException; {:try_start_106 .. :try_end_11b} :catch_fe
    .catch Lcom/sun/tools/javac/file/ZipFileIndex$ZipFormatException; {:try_start_106 .. :try_end_11b} :catch_13e
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_11b} :catch_11e

    move-object v0, v6

    goto/16 :goto_5c

    .line 582
    :catch_11e
    move-exception v0

    .line 583
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_137

    .line 584
    iget-object v2, p0, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "error.reading.file"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    :cond_137
    new-instance v0, Lcom/sun/tools/javac/file/JavacFileManager$MissingArchive;

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/file/JavacFileManager$MissingArchive;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;)V

    goto/16 :goto_5c

    .line 580
    :catch_13e
    move-exception v0

    .line 581
    throw v0

    :cond_140
    move-object v1, p1

    goto/16 :goto_49
.end method

.method public static preRegister(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 143
    const-class v0, Ljavax/tools/JavaFileManager;

    new-instance v1, Lcom/sun/tools/javac/file/JavacFileManager$1;

    invoke-direct {v1}, Lcom/sun/tools/javac/file/JavacFileManager$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Lcom/sun/tools/javac/util/Context$Factory;)V

    .line 149
    return-void
.end method

.method private static varargs printAscii(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 202
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_18

    .line 206
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    return-void

    .line 204
    :catch_18
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static testName(Ljava/lang/String;ZZ)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    :try_start_2
    invoke-static {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->validatePackageName(Ljava/lang/String;)V

    .line 179
    if-eqz p1, :cond_23

    .line 181
    const-string v0, "Valid package name: \"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->printAscii(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_12} :catch_3a

    .line 188
    :goto_12
    :try_start_12
    invoke-static {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->validateClassName(Ljava/lang/String;)V

    .line 189
    if-eqz p2, :cond_47

    .line 191
    const-string v0, "Valid class name: \"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->printAscii(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_22} :catch_5e

    .line 197
    :goto_22
    return-void

    .line 180
    :cond_23
    :try_start_23
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name accepted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_3a} :catch_3a

    .line 182
    :catch_3a
    move-exception v0

    .line 183
    if-nez p1, :cond_82

    .line 185
    const-string v0, "Invalid package name: \"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->printAscii(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    .line 190
    :cond_47
    :try_start_47
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class name accepted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_5e} :catch_5e

    .line 192
    :catch_5e
    move-exception v0

    .line 193
    if-nez p2, :cond_6b

    .line 195
    const-string v0, "Invalid class name: \"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->printAscii(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22

    .line 194
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Valid class name rejected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 184
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Valid package name rejected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static toArray(Ljava/nio/CharBuffer;)[C
    .registers 2

    .line 133
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 134
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 136
    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_14
.end method

.method private static validateClassName(Ljava/lang/String;)V
    .registers 3

    .line 165
    invoke-static {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    return-void

    .line 166
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static validatePackageName(Ljava/lang/String;)V
    .registers 3

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    invoke-static {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 172
    :cond_c
    return-void

    .line 171
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid packageName name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->archives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 604
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/JavacFileManager$Archive;

    .line 605
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 607
    :try_start_19
    invoke-interface {v0}, Lcom/sun/tools/javac/file/JavacFileManager$Archive;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_a

    .line 608
    :catch_1d
    move-exception v0

    goto :goto_a

    .line 611
    :cond_1f
    return-void
.end method

.method public flush()V
    .registers 2

    .line 596
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->contentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 597
    return-void
.end method

.method public getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;
    .registers 5

    .line 622
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    .line 624
    if-nez v0, :cond_b

    .line 625
    const/4 v0, 0x0

    .line 635
    :goto_a
    return-object v0

    .line 626
    :cond_b
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 627
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 629
    :try_start_20
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    :try_end_2b
    .catch Ljava/net/MalformedURLException; {:try_start_20 .. :try_end_2b} :catch_2c

    goto :goto_14

    .line 630
    :catch_2c
    move-exception v0

    .line 631
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 635
    :cond_33
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->size()I

    move-result v0

    new-array v0, v0, [Ljava/net/URL;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getClassLoader([Ljava/net/URL;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_a
.end method

.method public getFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Ljavax/tools/FileObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    invoke-static {p2}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-static {p3}, Lcom/sun/tools/javac/file/JavacFileManager;->isRelativeUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 709
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 710
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    invoke-direct {v0, p3}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Ljava/lang/String;)V

    .line 712
    :goto_17
    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getFileForInput(Ljavax/tools/JavaFileManager$Location;Lcom/sun/tools/javac/file/RelativePath$RelativeFile;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0

    .line 711
    :cond_1c
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    invoke-static {p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->forPackage(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    goto :goto_17

    .line 708
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid relative name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileForInput(Ljava/lang/String;)Ljavax/tools/JavaFileObject;
    .registers 3

    .line 315
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getRegularFile(Ljava/io/File;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Ljavax/tools/FileObject;)Ljavax/tools/FileObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-static {p2}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    invoke-static {p3}, Lcom/sun/tools/javac/file/JavacFileManager;->isRelativeUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 764
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 765
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    invoke-direct {v0, p3}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Ljava/lang/String;)V

    .line 767
    :goto_17
    invoke-direct {p0, p1, v0, p4}, Lcom/sun/tools/javac/file/JavacFileManager;->getFileForOutput(Ljavax/tools/JavaFileManager$Location;Lcom/sun/tools/javac/file/RelativePath$RelativeFile;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0

    .line 766
    :cond_1c
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    invoke-static {p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->forPackage(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    goto :goto_17

    .line 763
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid relative name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileForOutput(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    sget-object v0, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/tools/javac/file/JavacFileManager;->getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getJavaFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Ljavax/tools/JavaFileObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-static {p2}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-static {p3}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sourceOrClass:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 697
    invoke-static {p2, p3}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->forClass(Ljava/lang/CharSequence;Ljavax/tools/JavaFileObject$Kind;)Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getFileForInput(Ljavax/tools/JavaFileManager$Location;Lcom/sun/tools/javac/file/RelativePath$RelativeFile;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0

    .line 696
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid kind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-static {p2}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-static {p3}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sourceOrClass:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 751
    invoke-static {p2, p3}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->forClass(Ljava/lang/CharSequence;Ljavax/tools/JavaFileObject$Kind;)Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/sun/tools/javac/file/JavacFileManager;->getFileForOutput(Ljavax/tools/JavaFileManager$Location;Lcom/sun/tools/javac/file/RelativePath$RelativeFile;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0

    .line 750
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid kind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs getJavaFileObjects([Ljava/io/File;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 814
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public varargs getJavaFileObjects([Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 337
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 804
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2f

    .line 805
    new-instance v1, Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 808
    :goto_10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 809
    new-instance v3, Lcom/sun/tools/javac/file/RegularFileObject;

    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v3, p0, v0}, Lcom/sun/tools/javac/file/RegularFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 807
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    goto :goto_10

    .line 810
    :cond_36
    return-object v1
.end method

.method public getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 331
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    new-instance v3, Ljava/io/File;

    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_9

    .line 333
    :cond_24
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/JavaFileManager$Location;",
            ")",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 860
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    iget-object v1, p0, Lcom/sun/tools/javac/file/JavacFileManager;->paths:Lcom/sun/tools/javac/file/Paths;

    invoke-virtual {v1}, Lcom/sun/tools/javac/file/Paths;->lazy()V

    .line 862
    sget-object v1, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    if-ne p1, v1, :cond_1d

    .line 863
    invoke-direct {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getClassOutDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_14

    .line 867
    :cond_13
    :goto_13
    return-object v0

    .line 863
    :cond_14
    invoke-direct {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getClassOutDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_13

    .line 864
    :cond_1d
    sget-object v1, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    if-ne p1, v1, :cond_30

    .line 865
    invoke-direct {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getSourceOutDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getSourceOutDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_13

    .line 867
    :cond_30
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->paths:Lcom/sun/tools/javac/file/Paths;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/Paths;->getPathForLocation(Ljavax/tools/JavaFileManager$Location;)Lcom/sun/tools/javac/file/Paths$Path;

    move-result-object v0

    goto :goto_13
.end method

.method public getRegularFile(Ljava/io/File;)Ljavax/tools/JavaFileObject;
    .registers 3

    .line 319
    new-instance v0, Lcom/sun/tools/javac/file/RegularFileObject;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/file/RegularFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;)V

    return-object v0
.end method

.method public hasLocation(Ljavax/tools/JavaFileManager$Location;)Z
    .registers 3

    .line 684
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;
    .registers 5

    .line 659
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    .line 663
    if-nez v0, :cond_e

    .line 664
    const/4 v0, 0x0

    .line 668
    :goto_d
    return-object v0

    .line 667
    :cond_e
    instance-of v1, p2, Lcom/sun/tools/javac/file/BaseFileObject;

    if-eqz v1, :cond_19

    .line 668
    check-cast p2, Lcom/sun/tools/javac/file/BaseFileObject;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/file/BaseFileObject;->inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 670
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDefaultBootClassPath()Z
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->paths:Lcom/sun/tools/javac/file/Paths;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/Paths;->isDefaultBootClassPath()Z

    move-result v0

    return v0
.end method

.method public isSameFile(Ljavax/tools/FileObject;Ljavax/tools/FileObject;)Z
    .registers 5

    .line 674
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    invoke-static {p2}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    instance-of v0, p1, Lcom/sun/tools/javac/file/BaseFileObject;

    if-eqz v0, :cond_2a

    .line 678
    instance-of v0, p2, Lcom/sun/tools/javac/file/BaseFileObject;

    if-eqz v0, :cond_13

    .line 680
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 679
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/JavaFileManager$Location;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject$Kind;",
            ">;Z)",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    invoke-static {p2}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-static {p3}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/util/Collection;)Ljava/util/Collection;

    .line 647
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    .line 648
    if-nez v0, :cond_11

    .line 649
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 655
    :goto_10
    return-object v0

    .line 650
    :cond_11
    invoke-static {p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->forPackage(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v2

    .line 651
    new-instance v5, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 653
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    .line 654
    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/file/JavacFileManager;->listContainer(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLcom/sun/tools/javac/util/ListBuffer;)V

    goto :goto_1e

    .line 655
    :cond_31
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_10
.end method

.method protected openArchive(Ljava/io/File;)Lcom/sun/tools/javac/file/JavacFileManager$Archive;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->contextUseOptimizedZip:Z

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->openArchive(Ljava/io/File;Z)Lcom/sun/tools/javac/file/JavacFileManager$Archive;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 496
    :goto_6
    return-object v0

    .line 494
    :catch_7
    move-exception v0

    .line 495
    instance-of v1, v0, Lcom/sun/tools/javac/file/ZipFileIndex$ZipFormatException;

    if-eqz v1, :cond_12

    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->openArchive(Ljava/io/File;Z)Lcom/sun/tools/javac/file/JavacFileManager$Archive;

    move-result-object v0

    goto :goto_6

    .line 498
    :cond_12
    throw v0
.end method

.method public setContext(Lcom/sun/tools/javac/util/Context;)V
    .registers 5

    .line 285
    invoke-super {p0, p1}, Lcom/sun/tools/javac/util/BaseFileManager;->setContext(Lcom/sun/tools/javac/util/Context;)V

    .line 286
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->paths:Lcom/sun/tools/javac/file/Paths;

    if-nez v0, :cond_51

    .line 287
    invoke-static {p1}, Lcom/sun/tools/javac/file/Paths;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/file/Paths;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->paths:Lcom/sun/tools/javac/file/Paths;

    .line 294
    :goto_d
    invoke-static {p1}, Lcom/sun/tools/javac/file/FSInfo;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/file/FSInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->fsInfo:Lcom/sun/tools/javac/file/FSInfo;

    .line 296
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "useOptimizedZip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->contextUseOptimizedZip:Z

    .line 297
    if-eqz v0, :cond_26

    .line 298
    invoke-static {}, Lcom/sun/tools/javac/file/ZipFileIndexCache;->getSharedInstance()Lcom/sun/tools/javac/file/ZipFileIndexCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->zipFileIndexCache:Lcom/sun/tools/javac/file/ZipFileIndexCache;

    .line 300
    :cond_26
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "mmappedIO"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->mmappedIO:Z

    .line 301
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "ignore.symbol.file"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->ignoreSymbolFile:Z

    .line 303
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "sortFiles"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_50

    .line 305
    const-string v1, "reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;->REVERSE:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    :goto_4e
    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sortFiles:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    .line 307
    :cond_50
    return-void

    .line 291
    :cond_51
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/file/Paths;->setContext(Lcom/sun/tools/javac/util/Context;)V

    goto :goto_d

    .line 305
    :cond_55
    sget-object v0, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;->FORWARD:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    goto :goto_4e
.end method

.method public setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/JavaFileManager$Location;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    invoke-static {p1}, Lcom/sun/tools/javac/file/JavacFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->paths:Lcom/sun/tools/javac/file/Paths;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/Paths;->lazy()V

    .line 823
    invoke-interface {p1}, Ljavax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p2}, Lcom/sun/tools/javac/file/JavacFileManager;->getOutputDirectory(Ljava/lang/Iterable;)Ljava/io/File;

    move-result-object v0

    .line 825
    :goto_12
    sget-object v1, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    if-ne p1, v1, :cond_21

    .line 826
    sget-object v1, Lcom/sun/tools/javac/main/OptionName;->D:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->getOutputLocation(Ljava/io/File;Lcom/sun/tools/javac/main/OptionName;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->classOutDir:Ljava/io/File;

    .line 831
    :goto_1e
    return-void

    .line 823
    :cond_1f
    const/4 v0, 0x0

    goto :goto_12

    .line 827
    :cond_21
    sget-object v1, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    if-ne p1, v1, :cond_2e

    .line 828
    sget-object v1, Lcom/sun/tools/javac/main/OptionName;->S:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->getOutputLocation(Ljava/io/File;Lcom/sun/tools/javac/main/OptionName;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->sourceOutDir:Ljava/io/File;

    goto :goto_1e

    .line 830
    :cond_2e
    iget-object v0, p0, Lcom/sun/tools/javac/file/JavacFileManager;->paths:Lcom/sun/tools/javac/file/Paths;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/file/Paths;->setPathForLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    goto :goto_1e
.end method
