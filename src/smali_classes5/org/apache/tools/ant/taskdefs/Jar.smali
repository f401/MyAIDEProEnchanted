.class public Lorg/apache/tools/ant/taskdefs/Jar;
.super Lorg/apache/tools/ant/taskdefs/Zip;
.source "Jar.java"


# static fields
.field private static final INDEX_NAME:Ljava/lang/String; = "META-INF/INDEX.LIST"

.field private static final JAR_MARKER:[Lorg/apache/tools/zip/ZipExtraField;

.field private static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"


# instance fields
.field private configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private createEmpty:Z

.field private filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

.field private flattenClassPaths:Z

.field private index:Z

.field private indexJars:Lorg/apache/tools/ant/types/Path;

.field private indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

.field private indexMetaInf:Z

.field private manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private manifestEncoding:Ljava/lang/String;

.field private manifestFile:Ljava/io/File;

.field private mergeClassPaths:Z

.field private mergeManifestsMain:Z

.field private originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private rootEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private savedConfiguredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private serviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/spi/Service;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    const/4 v1, 0x0

    invoke-static {}, Lorg/apache/tools/zip/JarMarker;->getInstance()Lorg/apache/tools/zip/JarMarker;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Jar;->JAR_MARKER:[Lorg/apache/tools/zip/ZipExtraField;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->serviceList:Ljava/util/List;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    .line 127
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    .line 130
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexMetaInf:Z

    .line 136
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 169
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    const-string v1, "ignore"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    .line 176
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    .line 181
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->flattenClassPaths:Z

    .line 195
    const-string v0, "jar"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->archiveType:Ljava/lang/String;

    .line 196
    const-string v0, "create"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    .line 197
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->setEncoding(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->NEVER:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->setZip64Mode(Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;)V

    .line 199
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->rootEntries:Ljava/util/List;

    .line 200
    return-void
.end method

.method private checkJarSpec()V
    .registers 6

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v0, :cond_50

    .line 952
    const/4 v0, 0x0

    .line 955
    :goto_a
    if-nez v0, :cond_55

    .line 956
    const-string v0, "No Implementation-Title set."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    const-string v0, "No Implementation-Version set."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    const-string v0, "No Implementation-Vendor set."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    :cond_1b
    :goto_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4f

    .line 972
    const-string v0, "%nLocation: %s%n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const-string v0, "fail"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 976
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;->getLogLevel()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->logWhenWriting(Ljava/lang/String;I)V

    .line 978
    :cond_4f
    return-void

    .line 953
    :cond_50
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->getMainSection()Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    move-result-object v0

    goto :goto_a

    .line 960
    :cond_55
    const-string v2, "Implementation-Title"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v2

    if-nez v2, :cond_62

    .line 961
    const-string v2, "No Implementation-Title set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    :cond_62
    const-string v2, "Implementation-Version"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v2

    if-nez v2, :cond_6f

    .line 964
    const-string v2, "No Implementation-Version set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    :cond_6f
    const-string v2, "Implementation-Vendor"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 967
    const-string v0, "No Implementation-Vendor set."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 974
    :cond_7d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private createDefaultIndexJarsMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .registers 5

    .line 672
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->createManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->getMainSection()Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    move-result-object v0

    const-string v1, "Class-Path"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v1

    .line 675
    const/4 v0, 0x0

    .line 676
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 677
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 680
    const/4 v0, 0x0

    .line 681
    :goto_29
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 682
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_38
    move-object v0, v1

    .line 686
    :cond_39
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private createIndexList(Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 618
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 620
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 623
    const-string v0, "JarIndex-Version: 1.0"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 627
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->addedDirs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->rootEntries:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v4}, Lorg/apache/tools/ant/taskdefs/Jar;->writeIndexLikeList(Ljava/util/List;Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 631
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 633
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_7d

    .line 634
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 635
    if-nez v0, :cond_42

    .line 636
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->createDefaultIndexJarsMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    .line 638
    :cond_42
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_4a
    if-ge v1, v6, :cond_7d

    aget-object v7, v5, v1

    .line 639
    invoke-interface {v0, v7}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 640
    if-eqz v8, :cond_7a

    array-length v9, v8

    if-lez v9, :cond_7a

    .line 641
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 642
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 643
    invoke-static {v7, v9, v10}, Lorg/apache/tools/ant/taskdefs/Jar;->grabFilesAndDirs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 644
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v7, v11

    if-lez v7, :cond_7a

    .line 645
    aget-object v7, v8, v2

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0, v9, v10, v4}, Lorg/apache/tools/ant/taskdefs/Jar;->writeIndexLikeList(Ljava/util/List;Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 647
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 638
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 653
    :cond_7d
    invoke-virtual {v4}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 656
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 657
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 659
    :try_start_8f
    const-string v3, "META-INF/INDEX.LIST"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const v7, 0x81a4

    move-object v0, p0

    move-object v2, p1

    invoke-super/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_a2

    .line 661
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 662
    return-void

    .line 657
    :catchall_a2
    move-exception v0

    :try_start_a3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_af

    :goto_a6
    throw v0

    .line 654
    :cond_a7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered an error writing jar index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :catchall_af
    move-exception v1

    goto :goto_a6
.end method

.method private createManifest()Lorg/apache/tools/ant/taskdefs/Manifest;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 509
    :try_start_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    if-eqz v2, :cond_10

    .line 512
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 520
    :cond_10
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    if-nez v2, :cond_6b

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v2, :cond_6b

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v2, :cond_6b

    move v4, v0

    .line 525
    :goto_21
    if-eqz v4, :cond_6d

    .line 526
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>()V

    .line 527
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v2, v3, v5, v6}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 528
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->getDefaultManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v3

    const/4 v5, 0x1

    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v2, v3, v5, v6}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    move-object v3, v2

    .line 542
    :goto_3b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->isInUpdateMode()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 543
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v2, v5, v6}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 545
    :cond_49
    if-nez v4, :cond_53

    .line 546
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 548
    :cond_53
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    if-nez v2, :cond_73

    move v2, v0

    :goto_5a
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v4, v2, v5}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 550
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    if-nez v4, :cond_75

    :goto_65
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v2, v0, v4}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 553
    return-object v3

    :cond_6b
    move v4, v1

    .line 520
    goto :goto_21

    .line 531
    :cond_6d
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->getDefaultManifest()Lorg/apache/tools/ant/taskdefs/Manifest;
    :try_end_70
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_2 .. :try_end_70} :catch_77

    move-result-object v2

    move-object v3, v2

    goto :goto_3b

    :cond_73
    move v2, v1

    .line 548
    goto :goto_5a

    :cond_75
    move v0, v1

    .line 550
    goto :goto_65

    .line 555
    :catch_77
    move-exception v0

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manifest is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ManifestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 557
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Invalid Manifest"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method private filesetManifest(Ljava/io/File;Ljava/io/InputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 723
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    if-eqz v0, :cond_41

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found manifest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 727
    if-nez p2, :cond_29

    .line 728
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 781
    :cond_28
    :goto_28
    return-void

    .line 730
    :cond_29
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifestCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 732
    :try_start_32
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_3c

    .line 733
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    goto :goto_28

    .line 730
    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_d9

    :goto_40
    throw v0

    .line 735
    :cond_41
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

    if-eqz v0, :cond_28

    .line 736
    const-string v1, "skip"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found manifest to merge in file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Jar;->logWhenWriting(Ljava/lang/String;I)V

    .line 743
    if-nez p2, :cond_8e

    .line 744
    :try_start_67
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    .line 752
    :goto_6b
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v1, :cond_cc

    .line 753
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;
    :try_end_71
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_67 .. :try_end_71} :catch_72
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_67 .. :try_end_71} :catch_9f

    goto :goto_28

    .line 757
    :catch_72
    move-exception v0

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding while reading manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 746
    :cond_8e
    :try_start_8e
    new-instance v1, Ljava/io/InputStreamReader;

    .line 747
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifestCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_97
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8e .. :try_end_97} :catch_72
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_8e .. :try_end_97} :catch_9f

    .line 748
    :try_start_97
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_d4

    move-result-object v0

    .line 749
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9b .. :try_end_9e} :catch_72
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_6b

    .line 760
    :catch_9f
    move-exception v0

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest in file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ManifestException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 763
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Invalid Manifest"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 755
    :cond_cc
    const/4 v2, 0x0

    :try_start_cd
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V
    :try_end_d2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cd .. :try_end_d2} :catch_72
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_cd .. :try_end_d2} :catch_9f

    goto/16 :goto_28

    .line 746
    :catchall_d4
    move-exception v0

    :try_start_d5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_dc

    :goto_d8
    :try_start_d8
    throw v0
    :try_end_d9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d8 .. :try_end_d9} :catch_72
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_d8 .. :try_end_d9} :catch_9f

    .line 730
    :catchall_d9
    move-exception v1

    goto/16 :goto_40

    .line 746
    :catchall_dc
    move-exception v1

    goto :goto_d8
.end method

.method protected static findJarName(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v7, 0x2f

    .line 1079
    if-nez p1, :cond_e

    .line 1080
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1100
    :goto_d
    return-object v0

    .line 1082
    :cond_e
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 1083
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda6;

    .line 1084
    new-instance v4, Ljava/util/TreeMap;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 1086
    array-length v5, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_26
    if-ge v2, v5, :cond_45

    aget-object v1, p1, v2

    move-object v0, v1

    .line 1089
    :goto_2b
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1090
    invoke-interface {v4, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    .line 1093
    :cond_38
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1094
    if-ltz v6, :cond_34

    .line 1097
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 1100
    :cond_45
    invoke-interface {v4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x0

    goto :goto_d

    :cond_4d
    invoke-interface {v4}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_d
.end method

.method private getManifest(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;
    .registers 5

    .line 320
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 321
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifestCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_21

    .line 322
    :try_start_14
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    move-result-object v1

    .line 323
    :try_start_18
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_21

    .line 322
    return-object v1

    .line 320
    :catchall_1c
    move-exception v1

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_4a

    :goto_20
    :try_start_20
    throw v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_21} :catch_21

    .line 323
    :catch_21
    move-exception v0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read manifest file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 320
    :catchall_4a
    move-exception v0

    goto :goto_20
.end method

.method private getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;
    .registers 6

    .line 353
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_0 .. :try_end_5} :catch_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 358
    :catch_6
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read manifest file ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 354
    :catch_27
    move-exception v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ManifestException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
.end method

.method private getManifestCharset()Ljava/nio/charset/Charset;
    .registers 4

    .line 1172
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestEncoding:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1173
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 1176
    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v0

    goto :goto_8

    .line 1177
    :catch_e
    move-exception v0

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding while reading manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getManifestFromJar(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 335
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 338
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda4;

    .line 339
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_41

    .line 341
    if-nez v0, :cond_26

    .line 342
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    .line 346
    :goto_25
    return-object v0

    .line 344
    :cond_26
    :try_start_26
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_41

    .line 346
    :try_start_31
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    move-result-object v0

    .line 347
    :try_start_35
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_41

    .line 348
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_25

    .line 344
    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_46

    :goto_40
    :try_start_40
    throw v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 335
    :catchall_41
    move-exception v0

    :try_start_42
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_48

    :goto_45
    throw v0

    .line 344
    :catchall_46
    move-exception v1

    goto :goto_40

    .line 335
    :catchall_48
    move-exception v1

    goto :goto_45
.end method

.method protected static grabFilesAndDirs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1115
    new-instance v1, Lorg/apache/tools/zip/ZipFile;

    const-string v0, "utf-8"

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :try_start_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1117
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, p2}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1131
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_23

    .line 1132
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipFile;->close()V

    .line 1133
    return-void

    .line 1115
    :catchall_23
    move-exception v0

    :try_start_24
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    :goto_27
    throw v0

    :catchall_28
    move-exception v1

    goto :goto_27
.end method

.method private grabManifests([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;
    .registers 11

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1136
    array-length v0, p1

    new-array v6, v0, [[Lorg/apache/tools/ant/types/Resource;

    move v1, v2

    .line 1137
    :goto_6
    array-length v0, p1

    if-ge v1, v0, :cond_c8

    .line 1139
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v0, :cond_70

    .line 1140
    new-array v3, v8, [Lorg/apache/tools/ant/types/FileSet;

    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    aput-object v0, v3, v2

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Jar;->grabResources([Lorg/apache/tools/ant/types/FileSet;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    move-object v3, v0

    :goto_1c
    move v4, v2

    .line 1145
    :goto_1d
    aget-object v0, v3, v2

    array-length v0, v0

    if-ge v4, v0, :cond_64

    .line 1146
    aget-object v0, v3, v2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x5c

    const/16 v7, 0x2f

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 1147
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    if-eqz v0, :cond_c9

    .line 1148
    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    .line 1149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7c

    .line 1150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    :goto_52
    const-string v5, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 1160
    new-array v0, v8, [Lorg/apache/tools/ant/types/Resource;

    aget-object v3, v3, v2

    aget-object v3, v3, v4

    aput-object v3, v0, v2

    aput-object v0, v6, v1

    .line 1164
    :cond_64
    aget-object v0, v6, v1

    if-nez v0, :cond_6c

    .line 1165
    new-array v0, v2, [Lorg/apache/tools/ant/types/Resource;

    aput-object v0, v6, v1

    .line 1137
    :cond_6c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1142
    :cond_70
    new-array v0, v8, [Lorg/apache/tools/ant/types/ResourceCollection;

    aget-object v3, p1, v1

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->grabNonFileSetResources([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    move-object v3, v0

    goto :goto_1c

    .line 1151
    :cond_7c
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c9

    .line 1152
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b3

    const-string v7, "\\"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b3

    .line 1154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1156
    :cond_b3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 1145
    :cond_c3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1d

    .line 1168
    :cond_c8
    return-object v6

    :cond_c9
    move-object v0, v5

    goto :goto_52
.end method

.method private jarHasIndex(Ljava/io/File;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 366
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda5;

    .line 367
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_17

    move-result v0

    .line 368
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 366
    return v0

    .line 365
    :catchall_17
    move-exception v0

    :try_start_18
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    :goto_1b
    throw v0

    :catchall_1c
    move-exception v1

    goto :goto_1b
.end method

.method static synthetic lambda$findJarName$3(Ljava/lang/String;)I
    .registers 2

    .line 1084
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3
.end method

.method static synthetic lambda$getManifestFromJar$0(Ljava/util/zip/ZipEntry;)Z
    .registers 3

    .line 339
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$grabFilesAndDirs$4(Ljava/util/Set;Ljava/util/List;Lorg/apache/tools/zip/ZipEntry;)V
    .registers 6

    .line 1118
    invoke-virtual {p2}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-virtual {p2}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1120
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1130
    :goto_d
    return-void

    .line 1121
    :cond_e
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1128
    :cond_1a
    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method static synthetic lambda$jarHasIndex$1(Ljava/util/zip/ZipEntry;)Z
    .registers 3

    .line 367
    const-string v0, "META-INF/INDEX.LIST"

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private writeManifest(Lorg/apache/tools/zip/ZipOutputStream;Lorg/apache/tools/ant/taskdefs/Manifest;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 563
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Manifest;->getWarnings()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/taskdefs/Jar;)V

    .line 564
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 566
    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    const-string v3, "META-INF/"

    const/16 v4, 0x41ed

    sget-object v5, Lorg/apache/tools/ant/taskdefs/Jar;->JAR_MARKER:[Lorg/apache/tools/zip/ZipExtraField;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Jar;->zipDir(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V

    .line 569
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 570
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Manifest;->JAR_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 571
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 572
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->flattenClassPaths:Z

    invoke-virtual {p2, v2, v1}, Lorg/apache/tools/ant/taskdefs/Manifest;->write(Ljava/io/PrintWriter;Z)V

    .line 573
    invoke-virtual {v2}, Ljava/io/PrintWriter;->checkError()Z

    move-result v1

    if-nez v1, :cond_61

    .line 576
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 578
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 581
    :try_start_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "META-INF/MANIFEST.MF"

    const/4 v6, 0x0

    const v7, 0x81a4

    move-object v0, p0

    move-object v2, p1

    invoke-super/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_5c

    .line 586
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 587
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 589
    return-void

    .line 586
    :catchall_5c
    move-exception v0

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 587
    throw v0

    .line 574
    :cond_61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered an error writing the manifest"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeServices(Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->serviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/spi/Service;

    .line 458
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/spi/Service;->getAsStream()Ljava/io/InputStream;

    move-result-object v1

    .line 460
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META-INF/services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/spi/Service;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 460
    const/4 v6, 0x0

    const v7, 0x81a4

    move-object v0, p0

    move-object v2, p1

    invoke-super/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_3e

    .line 464
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_6

    .line 458
    :catchall_3e
    move-exception v0

    if-eqz v1, :cond_44

    :try_start_41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    :cond_44
    :goto_44
    throw v0

    :catchall_45
    move-exception v1

    goto :goto_44

    .line 466
    :cond_47
    return-void
.end method


# virtual methods
.method public addConfiguredIndexJars(Lorg/apache/tools/ant/types/Path;)V
    .registers 4

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 413
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    .line 415
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 416
    return-void
.end method

.method public addConfiguredIndexJarsMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .registers 5

    .line 425
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_b

    .line 429
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 430
    return-void

    .line 426
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one indexjar-mapper"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public addConfiguredManifest(Lorg/apache/tools/ant/taskdefs/Manifest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v0, :cond_b

    .line 296
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 300
    :goto_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->savedConfiguredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 301
    return-void

    .line 298
    :cond_b
    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    goto :goto_6
.end method

.method public addConfiguredService(Lorg/apache/tools/ant/types/spi/Service;)V
    .registers 3

    .line 449
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/spi/Service;->check()V

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->serviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public addMetainf(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .registers 3

    .line 402
    const-string v0, "META-INF/"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 403
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 404
    return-void
.end method

.method protected cleanUp()V
    .registers 3

    const/4 v1, 0x0

    .line 930
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    .line 931
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->checkJarSpec()V

    .line 934
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->doubleFilePass:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    if-nez v0, :cond_19

    .line 935
    :cond_f
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 936
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->savedConfiguredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 937
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 938
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 940
    :cond_19
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->rootEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 941
    return-void
.end method

.method protected createEmptyZip(Ljava/io/File;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 878
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    if-nez v0, :cond_7

    .line 919
    :cond_6
    :goto_6
    return v2

    .line 882
    :cond_7
    const-string v0, "skip"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 883
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    if-nez v0, :cond_6

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " archive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because no files were included."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    goto :goto_6

    .line 890
    :cond_39
    const-string v0, "fail"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 897
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    if-nez v0, :cond_6

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Building MANIFEST-only jar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getDestFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;)V

    .line 901
    :try_start_63
    new-instance v1, Lorg/apache/tools/zip/ZipOutputStream;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getDestFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/zip/ZipOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6c} :catch_a0
    .catchall {:try_start_63 .. :try_end_6c} :catchall_c5

    .line 902
    :try_start_6c
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/zip/ZipOutputStream;->setEncoding(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getZip64Mode()Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->getMode()Lorg/apache/tools/zip/Zip64Mode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/zip/ZipOutputStream;->setUseZip64(Lorg/apache/tools/zip/Zip64Mode;)V

    .line 904
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->isCompress()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 905
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lorg/apache/tools/zip/ZipOutputStream;->setMethod(I)V

    .line 909
    :goto_89
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 910
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->finalizeZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    :try_end_8f
    .catchall {:try_start_6c .. :try_end_8f} :catchall_9b

    .line 911
    :try_start_8f
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_a0
    .catchall {:try_start_8f .. :try_end_92} :catchall_c5

    .line 916
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    goto/16 :goto_6

    .line 907
    :cond_96
    const/4 v0, 0x0

    :try_start_97
    invoke-virtual {v1, v0}, Lorg/apache/tools/zip/ZipOutputStream;->setMethod(I)V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_89

    .line 901
    :catchall_9b
    move-exception v0

    :try_start_9c
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipOutputStream;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_f3

    :goto_9f
    :try_start_9f
    throw v0
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a0} :catch_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_c5

    .line 911
    :catch_a0
    move-exception v0

    .line 912
    :try_start_a1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create almost empty JAR archive ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 914
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_c5
    .catchall {:try_start_a1 .. :try_end_c5} :catchall_c5

    .line 916
    :catchall_c5
    move-exception v0

    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    .line 917
    throw v0

    .line 891
    :cond_c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " archive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": no files were included."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 901
    :catchall_f3
    move-exception v1

    goto :goto_9f
.end method

.method protected finalizeZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 602
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    if-eqz v0, :cond_7

    .line 603
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->createIndexList(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 605
    :cond_7
    return-void
.end method

.method public getIndexJarsMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .registers 2

    .line 438
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-object v0
.end method

.method protected getResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v0, 0x1

    .line 811
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    if-eqz v1, :cond_41

    .line 816
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->grabManifests([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v4

    .line 818
    array-length v5, v4

    move v1, v2

    move v3, v2

    :goto_e
    if-ge v3, v5, :cond_18

    aget-object v2, v4, v3

    .line 819
    array-length v2, v2

    add-int/2addr v1, v2

    .line 818
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e

    .line 821
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found a total of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " manifests in "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resource collections"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 824
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v1, v0, v4}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    move-object v0, v1

    .line 867
    :goto_40
    return-object v0

    .line 828
    :cond_41
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 833
    :try_start_47
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifestFromJar(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 834
    if-nez v1, :cond_69

    .line 835
    const-string v1, "Updating jar since the current jar has no manifest"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_7d

    move p3, v0

    .line 858
    :cond_56
    :goto_56
    iput-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    .line 859
    if-nez p3, :cond_64

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    if-eqz v1, :cond_64

    .line 861
    :try_start_5e
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/Jar;->jarHasIndex(Ljava/io/File;)Z
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_a6

    move-result v0

    xor-int/lit8 p3, v0, 0x1

    .line 867
    :cond_64
    :goto_64
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Zip;->getResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object v0

    goto :goto_40

    .line 839
    :cond_69
    :try_start_69
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->createManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v1

    .line 840
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 841
    const-string v1, "Updating jar since jar manifest has changed"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V
    :try_end_7b
    .catchall {:try_start_69 .. :try_end_7b} :catchall_7d

    move p3, v0

    .line 843
    goto :goto_56

    .line 846
    :catchall_7d
    move-exception v1

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while reading original manifest in file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    move p3, v0

    .line 850
    goto :goto_56

    :cond_a4
    move p3, v0

    .line 855
    goto :goto_56

    .line 862
    :catch_a6
    move-exception v1

    move p3, v0

    .line 864
    goto :goto_64
.end method

.method protected initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 499
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    if-nez v0, :cond_e

    .line 500
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->createManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    .line 501
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->writeManifest(Lorg/apache/tools/zip/ZipOutputStream;Lorg/apache/tools/ant/taskdefs/Manifest;)V

    .line 502
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->writeServices(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 504
    :cond_e
    return-void
.end method

.method public synthetic lambda$writeManifest$2$Jar(Ljava/lang/String;)V
    .registers 4

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manifest warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public reset()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 989
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->reset()V

    .line 990
    const-string v0, "create"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    .line 991
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 992
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

    .line 993
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    .line 994
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    .line 995
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    .line 996
    return-void
.end method

.method public setFilesetmanifest(Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;)V
    .registers 5

    const/4 v1, 0x1

    .line 385
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

    .line 386
    if-eqz p1, :cond_27

    const-string v0, "merge"

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

    if-eqz v0, :cond_26

    .line 389
    const-string v2, "skip"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 391
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->doubleFilePass:Z

    .line 393
    :cond_26
    return-void

    .line 386
    :cond_27
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setFlattenAttributes(Z)V
    .registers 2

    .line 486
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->flattenClassPaths:Z

    .line 487
    return-void
.end method

.method public setIndex(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    .line 255
    return-void
.end method

.method public setIndexMetaInf(Z)V
    .registers 2

    .line 274
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexMetaInf:Z

    .line 275
    return-void
.end method

.method public setJarfile(Ljava/io/File;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->setDestFile(Ljava/io/File;)V

    .line 246
    return-void
.end method

.method public setManifest(Ljava/io/File;)V
    .registers 5

    .line 311
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 316
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    .line 317
    return-void

    .line 312
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manifest file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setManifestEncoding(Ljava/lang/String;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestEncoding:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setMergeClassPathAttributes(Z)V
    .registers 2

    .line 475
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    .line 476
    return-void
.end method

.method public setStrict(Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    .line 235
    return-void
.end method

.method public setWhenempty(Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;)V
    .registers 4

    .line 209
    const-string v0, "JARs are never empty, they contain at least a manifest file"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method public setWhenmanifestonly(Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;)V
    .registers 3

    .line 224
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    .line 225
    return-void
.end method

.method protected final writeIndexLikeList(Ljava/util/List;Ljava/util/List;Ljava/io/PrintWriter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    const/16 v4, 0x2f

    .line 1026
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1027
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1028
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1030
    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1031
    const-string v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1032
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1034
    :cond_2b
    :goto_2b
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1035
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 1037
    :cond_39
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1038
    const/4 v3, -0x1

    if-eq v2, v3, :cond_45

    .line 1039
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1047
    :cond_45
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexMetaInf:Z

    if-nez v2, :cond_51

    const-string v2, "META-INF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1051
    :cond_51
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 1054
    :cond_55
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1055
    return-void
.end method

.method protected zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 706
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->isFirstPass()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 707
    invoke-direct {p0, p6, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest(Ljava/io/File;Ljava/io/InputStream;)V

    .line 720
    :cond_11
    :goto_11
    return-void

    .line 709
    :cond_12
    const-string v0, "META-INF/INDEX.LIST"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    if-eqz v0, :cond_45

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: selected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " files include a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "META-INF/INDEX.LIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which will be replaced by a newly generated one."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->logWhenWriting(Ljava/lang/String;I)V

    goto :goto_11

    .line 715
    :cond_45
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    if-eqz v0, :cond_56

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 716
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->rootEntries:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_56
    invoke-super/range {p0 .. p7}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V

    goto :goto_11
.end method
