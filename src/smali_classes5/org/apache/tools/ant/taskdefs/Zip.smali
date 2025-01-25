.class public Lorg/apache/tools/ant/taskdefs/Zip;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Zip.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final CURRENT_ZIP_EXTRA:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Lorg/apache/tools/zip/ZipExtraField;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_CRC:J

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MISSING_DIR_PROVIDER:Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;

.field private static final MISSING_SELECTOR:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

.field private static final ROUNDUP_MILLIS:I = 0x7cf

.field private static final ZIP_FILE_TIMESTAMP_GRANULARITY:I = 0x7d0


# instance fields
.field protected addedDirs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final addedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private addingNewFiles:Z

.field protected archiveType:Ljava/lang/String;

.field private baseDir:Ljava/io/File;

.field private comment:Ljava/lang/String;

.field private createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

.field private doCompress:Z

.field private doFilesonly:Z

.field private doUpdate:Z

.field protected doubleFilePass:Z

.field protected duplicate:Ljava/lang/String;

.field protected emptyBehavior:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field protected entries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fallBackToUTF8:Z

.field private final filesetsFromGroupfilesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/ZipFileSet;",
            ">;"
        }
    .end annotation
.end field

.field private fixedModTime:Ljava/lang/String;

.field private final groupfilesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private keepCompression:Z

.field private level:I

.field private modTimeMillis:J

.field private preserve0Permissions:Z

.field private final resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field private roundUp:Z

.field private savedDoUpdate:Z

.field protected skipWriting:Z

.field private updatedFile:Z

.field private useLanguageEncodingFlag:Z

.field private zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

.field protected zipFile:Ljava/io/File;

.field private zs:Lorg/apache/tools/ant/types/ZipScanner;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 87
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 90
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/tools/ant/taskdefs/Zip;->EMPTY_CRC:J

    .line 92
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->MISSING_SELECTOR:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 96
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->MISSING_DIR_PROVIDER:Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;

    .line 1296
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda4;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;

    .line 1732
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->CURRENT_ZIP_EXTRA:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->entries:Ljava/util/Hashtable;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->filesetsFromGroupfilesets:Ljava/util/List;

    .line 105
    const-string v0, "add"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    .line 106
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 107
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 109
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->savedDoUpdate:Z

    .line 110
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    .line 111
    const-string v0, "zip"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    .line 113
    const-string v0, "skip"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    .line 116
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedFiles:Ljava/util/List;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J

    .line 130
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doubleFilePass:Z

    .line 138
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    .line 156
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->updatedFile:Z

    .line 162
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    .line 176
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->keepCompression:Z

    .line 184
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->comment:Ljava/lang/String;

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->level:I

    .line 198
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->preserve0Permissions:Z

    .line 205
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->useLanguageEncodingFlag:Z

    .line 212
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->NEVER:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    .line 221
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fallBackToUTF8:Z

    .line 228
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->AS_NEEDED:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    return-void
.end method

.method private addDirectoryResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1026
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1026
    :cond_19
    const/16 v0, 0x2f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 1031
    const/4 v1, -0x1

    if-eq v0, v1, :cond_37

    .line 1032
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p4

    move-object v3, p5

    move-object v4, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Zip;->addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    .line 1035
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1036
    instance-of v0, p1, Lorg/apache/tools/ant/types/resources/ZipResource;

    if-eqz v0, :cond_59

    move-object v0, p1

    .line 1037
    check-cast v0, Lorg/apache/tools/ant/types/resources/ZipResource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v5

    :goto_51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v4, p7

    .line 1035
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Zip;->zipDir(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1038
    return-void

    .line 1037
    :cond_59
    const/4 v5, 0x0

    goto :goto_51
.end method

.method private addResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;ILorg/apache/tools/zip/ZipFile;Ljava/io/File;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    if-eqz p6, :cond_5d

    .line 1069
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v4

    .line 1071
    if-eqz v4, :cond_51

    .line 1072
    iget-boolean v11, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 1073
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->keepCompression:Z

    if-eqz v2, :cond_1f

    .line 1074
    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_52

    const/4 v2, 0x1

    :goto_1d
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 1076
    :cond_1f
    :try_start_1f
    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lorg/apache/tools/zip/ZipFile;->getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_9c

    .line 1077
    :try_start_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v6

    .line 1078
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_9e

    move-result-object v10

    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v8, p7

    move/from16 v9, p5

    .line 1077
    :try_start_49
    invoke-virtual/range {v2 .. v10}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I[Lorg/apache/tools/zip/ZipExtraField;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_54

    .line 1079
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_59

    .line 1080
    iput-boolean v11, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 1090
    :cond_51
    :goto_51
    return-void

    .line 1074
    :cond_52
    const/4 v2, 0x0

    goto :goto_1d

    .line 1076
    :catchall_54
    move-exception v2

    :goto_55
    :try_start_55
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_98

    :goto_58
    :try_start_58
    throw v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    .line 1080
    :catchall_59
    move-exception v2

    :goto_5a
    iput-boolean v11, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 1081
    throw v2

    .line 1084
    :cond_5d
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1085
    :try_start_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v6

    .line 1086
    instance-of v2, p1, Lorg/apache/tools/ant/types/resources/ZipResource;

    if-eqz v2, :cond_91

    .line 1087
    check-cast p1, Lorg/apache/tools/ant/types/resources/ZipResource;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/ZipResource;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v10

    :goto_83
    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v8, p7

    move/from16 v9, p5

    .line 1085
    invoke-virtual/range {v2 .. v10}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I[Lorg/apache/tools/zip/ZipExtraField;)V
    :try_end_8d
    .catchall {:try_start_66 .. :try_end_8d} :catchall_93

    .line 1088
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_51

    .line 1087
    :cond_91
    const/4 v10, 0x0

    goto :goto_83

    .line 1084
    :catchall_93
    move-exception v2

    :try_start_94
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_9a

    :goto_97
    throw v2

    .line 1076
    :catchall_98
    move-exception v3

    goto :goto_58

    .line 1084
    :catchall_9a
    move-exception v3

    goto :goto_97

    .line 1080
    :catchall_9c
    move-exception v2

    goto :goto_5a

    .line 1076
    :catchall_9e
    move-exception v2

    goto :goto_55
.end method

.method private checkAttributesAndElements()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 838
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    .line 839
    const-string v1, "zip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 844
    :cond_20
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    if-eqz v0, :cond_8f

    .line 849
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 851
    :try_start_28
    invoke-static {v0}, Lorg/apache/tools/ant/util/DateUtils;->parseLenientDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_28 .. :try_end_32} :catch_64

    .line 854
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    if-eqz v2, :cond_3b

    .line 856
    const-wide/16 v2, 0x7cf

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J

    .line 860
    :cond_3b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 864
    :cond_4b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 867
    :cond_5b
    return-void

    .line 840
    :cond_5c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "basedir attribute must be set, or at least one resource collection must be given!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :catch_64
    move-exception v0

    .line 853
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Failed to parse date string %s."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 861
    :cond_73
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s is not a file."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 865
    :cond_81
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s is read-only."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 845
    :cond_8f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify the %s file to create!"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private closeZout(Lorg/apache/tools/zip/ZipOutputStream;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    if-nez p1, :cond_3

    .line 834
    :cond_2
    :goto_2
    return-void

    .line 819
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 820
    :catch_7
    move-exception v0

    .line 830
    if-eqz p2, :cond_2

    .line 831
    throw v0
.end method

.method private getUnixMode(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipFile;I)I
    .registers 6

    .line 1046
    .line 1047
    if-eqz p2, :cond_19

    .line 1048
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    .line 1049
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getUnixMode()I

    move-result v0

    .line 1050
    if-eqz v0, :cond_14

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_24

    :cond_14
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->preserve0Permissions:Z

    if-nez v1, :cond_24

    .line 1054
    :cond_18
    :goto_18
    return p3

    :cond_19
    instance-of v0, p1, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    if-eqz v0, :cond_18

    .line 1055
    check-cast p1, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getMode()I

    move-result p3

    goto :goto_18

    :cond_24
    move p3, v0

    goto :goto_18
.end method

.method private getZipScanner()Lorg/apache/tools/ant/types/ZipScanner;
    .registers 3

    monitor-enter p0

    .line 1208
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zs:Lorg/apache/tools/ant/types/ZipScanner;

    if-nez v0, :cond_18

    .line 1209
    new-instance v0, Lorg/apache/tools/ant/types/ZipScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/ZipScanner;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zs:Lorg/apache/tools/ant/types/ZipScanner;

    .line 1210
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipScanner;->setEncoding(Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zs:Lorg/apache/tools/ant/types/ZipScanner;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipScanner;->setSrc(Ljava/io/File;)V

    .line 1213
    :cond_18
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zs:Lorg/apache/tools/ant/types/ZipScanner;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 1207
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static final isEmpty([[Lorg/apache/tools/ant/types/Resource;)Z
    .registers 5

    const/4 v0, 0x0

    .line 2000
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p0, v1

    .line 2001
    array-length v3, v3

    if-lez v3, :cond_b

    .line 2005
    :goto_a
    return v0

    .line 2000
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2005
    :cond_e
    const/4 v0, 0x1

    goto :goto_a
.end method

.method static synthetic lambda$executeMain$2(I)[Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 751
    new-array v0, p0, [Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method static synthetic lambda$selectResources$5(I)[Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 2054
    new-array v0, p0, [Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method static synthetic lambda$static$0(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 2

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$static$1(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;
    .registers 2

    .line 96
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->MISSING_SELECTOR:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    return-object v0
.end method

.method static synthetic lambda$static$3()Ljava/lang/Boolean;
    .registers 1

    .line 1296
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private processDoUpdate()V
    .registers 3

    .line 873
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring update attribute as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 878
    :cond_2b
    return-void
.end method

.method private processGroupFilesets()V
    .registers 10

    const/4 v8, 0x3

    .line 883
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 884
    const-string v2, "Processing groupfileset "

    invoke-virtual {p0, v2, v8}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 885
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 886
    invoke-interface {v0}, Lorg/apache/tools/ant/FileScanner;->getBasedir()Ljava/io/File;

    move-result-object v2

    .line 887
    invoke-interface {v0}, Lorg/apache/tools/ant/FileScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v4, :cond_7

    aget-object v5, v3, v0

    .line 888
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to fileset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 890
    new-instance v6, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {v6}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    .line 891
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/tools/ant/types/ZipFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 892
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/apache/tools/ant/types/ZipFileSet;->setSrc(Ljava/io/File;)V

    .line 893
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/taskdefs/Zip;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 894
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Zip;->filesetsFromGroupfilesets:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 897
    :cond_66
    return-void
.end method

.method private renameFile()Ljava/io/File;
    .registers 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 800
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 801
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 800
    const-string v2, "zip"

    const-string v3, ".tmp"

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v1

    .line 803
    :try_start_16
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_2f

    .line 808
    return-object v1

    .line 804
    :catch_1c
    move-exception v0

    .line 805
    :goto_1d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    .line 807
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to rename old file (%s) to temporary file"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 804
    :catch_2f
    move-exception v0

    goto :goto_1d
.end method

.method private selectOutOfDateResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)[Lorg/apache/tools/ant/types/Resource;
    .registers 9

    .line 1548
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->selectFileResources([Lorg/apache/tools/ant/types/Resource;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    .line 1549
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getZipScanner()Lorg/apache/tools/ant/types/ZipScanner;

    move-result-object v3

    .line 1550
    const-wide/16 v4, 0x7d0

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    .line 1553
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-nez v0, :cond_54

    .line 1554
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 1555
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->selectDirectoryResources([Lorg/apache/tools/ant/types/Resource;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/resources/Union;->addAll(Ljava/util/Collection;)V

    .line 1556
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getZipScanner()Lorg/apache/tools/ant/types/ZipScanner;

    move-result-object v2

    sget-object v3, Lorg/apache/tools/ant/taskdefs/Zip;->MISSING_DIR_PROVIDER:Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;

    .line 1557
    invoke-static {p0, v0, p2, v2, v3}, Lorg/apache/tools/ant/util/ResourceUtils;->selectSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    .line 1560
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    .line 1561
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    check-cast v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->listResources()[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1563
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1564
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Resource;

    .line 1567
    :goto_53
    return-object v0

    :cond_54
    move-object v0, v1

    goto :goto_53
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 353
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 336
    return-void
.end method

.method protected final addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1920
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-nez v0, :cond_66

    .line 1921
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 1922
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1924
    :goto_d
    const/16 v1, 0x2f

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    .line 1925
    const/4 v1, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1926
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 1932
    :cond_36
    :goto_36
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 1933
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1935
    if-eqz p1, :cond_60

    .line 1936
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1940
    :goto_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, p3, v0, p5}, Lorg/apache/tools/ant/taskdefs/Zip;->zipDir(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    goto :goto_36

    .line 1929
    :cond_5c
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 1938
    :cond_60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_49

    .line 1943
    :cond_66
    return-void
.end method

.method protected final addResources(Lorg/apache/tools/ant/types/FileSet;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    const-string v5, ""

    .line 924
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    if-eqz v3, :cond_c8

    move-object/from16 v3, p1

    .line 930
    check-cast v3, Lorg/apache/tools/ant/types/ArchiveFileSet;

    .line 931
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v5

    .line 932
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v4

    .line 933
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getDirMode(Lorg/apache/tools/ant/Project;)I

    move-result v8

    .line 934
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFileMode(Lorg/apache/tools/ant/Project;)I

    move-result v6

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move/from16 v24, v6

    .line 937
    :goto_32
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 942
    :cond_3e
    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4a

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 947
    :cond_4a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c1

    .line 948
    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "\\"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 951
    :cond_71
    const/4 v4, 0x0

    const-string v7, ""

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/tools/ant/taskdefs/Zip;->addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    move-object v12, v5

    .line 947
    :goto_7c
    const/4 v4, 0x0

    .line 956
    const/4 v3, 0x0

    .line 957
    if-eqz v22, :cond_8c

    :try_start_80
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_10d

    move-result-object v5

    if-nez v5, :cond_e8

    .line 960
    :cond_8c
    const/4 v3, 0x1

    .line 961
    :try_start_8d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_1ad

    move-result-object v13

    const/16 v20, 0x0

    move/from16 v25, v3

    .line 966
    :goto_9b
    :try_start_9b
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_1b2

    const/4 v3, 0x0

    move/from16 v26, v3

    :goto_a3
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a7

    aget-object v10, p2, v26

    .line 968
    :try_start_ab
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_1b2

    move-result v3

    if-eqz v3, :cond_116

    .line 969
    :try_start_b1
    invoke-virtual {v10}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_1be

    move-result-object v3

    .line 973
    :goto_b5
    :try_start_b5
    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 975
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z
    :try_end_c0
    .catchall {:try_start_b5 .. :try_end_c0} :catchall_1b2

    move-result v3

    if-eqz v3, :cond_119

    .line 966
    :cond_c3
    :goto_c3
    add-int/lit8 v3, v26, 0x1

    move/from16 v26, v3

    goto :goto_a3

    .line 929
    :cond_c8
    const-string v4, ""

    const/16 v8, 0x41ed

    const v6, 0x81a4

    const/4 v3, 0x0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move/from16 v24, v6

    goto/16 :goto_32

    .line 938
    :cond_d8
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v4, "Both prefix and fullpath attributes must not be set on the same fileset."

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 943
    :cond_e0
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v4, "fullpath attribute may only be specified for filesets that specify a single file."

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 962
    :cond_e8
    :try_start_e8
    move-object/from16 v0, v22

    instance-of v5, v0, Lorg/apache/tools/ant/types/ZipFileSet;

    if-eqz v5, :cond_107

    .line 963
    new-instance v20, Lorg/apache/tools/zip/ZipFile;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_e8 .. :try_end_103} :catchall_10d

    const/4 v13, 0x0

    move/from16 v25, v3

    goto :goto_9b

    .line 962
    :cond_107
    const/16 v20, 0x0

    const/4 v13, 0x0

    move/from16 v25, v3

    goto :goto_9b

    .line 1010
    :catchall_10d
    move-exception v3

    move-object/from16 v20, v4

    :goto_110
    if-eqz v20, :cond_115

    .line 1011
    invoke-virtual/range {v20 .. v20}, Lorg/apache/tools/zip/ZipFile;->close()V

    .line 1013
    :cond_115
    throw v3

    :cond_116
    move-object/from16 v3, v23

    .line 971
    goto :goto_b5

    .line 979
    :cond_119
    :try_start_119
    invoke-virtual {v10}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_143

    .line 980
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z
    :try_end_123
    .catchall {:try_start_119 .. :try_end_123} :catchall_1b2

    if-nez v3, :cond_c3

    .line 983
    if-eqz v22, :cond_13a

    :try_start_127
    invoke-virtual/range {v22 .. v22}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDirModeBeenSet()Z
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_1be

    move-result v3

    if-eqz v3, :cond_13a

    move/from16 v16, v8

    :goto_12f
    move-object/from16 v9, p0

    move-object/from16 v14, p3

    move v15, v8

    .line 985
    :try_start_134
    invoke-direct/range {v9 .. v16}, Lorg/apache/tools/ant/taskdefs/Zip;->addDirectoryResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;II)V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_138

    goto :goto_c3

    .line 1010
    :catchall_138
    move-exception v3

    goto :goto_110

    .line 984
    :cond_13a
    :try_start_13a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1, v8}, Lorg/apache/tools/ant/taskdefs/Zip;->getUnixMode(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipFile;I)I
    :try_end_141
    .catchall {:try_start_13a .. :try_end_141} :catchall_1b2

    move-result v16

    goto :goto_12f

    :cond_143
    move-object/from16 v3, p0

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v6, p3

    move-object v7, v12

    .line 991
    :try_start_14a
    invoke-virtual/range {v3 .. v8}, Lorg/apache/tools/ant/taskdefs/Zip;->addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_138

    .line 993
    if-eqz v25, :cond_175

    .line 994
    :try_start_14f
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 995
    invoke-virtual {v10}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    .line 994
    invoke-virtual {v3, v13, v4}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 996
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_15e
    .catchall {:try_start_14f .. :try_end_15e} :catchall_1b8

    :try_start_15e
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_167
    .catchall {:try_start_15e .. :try_end_167} :catchall_1bb

    move-result-object v4

    :try_start_168
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v24

    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    goto/16 :goto_c3

    .line 1010
    :catchall_173
    move-exception v3

    goto :goto_110

    .line 999
    :cond_175
    if-eqz v22, :cond_191

    invoke-virtual/range {v22 .. v22}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasFileModeBeenSet()Z
    :try_end_17a
    .catchall {:try_start_168 .. :try_end_17a} :catchall_173

    move-result v3

    if-eqz v3, :cond_191

    move/from16 v19, v24

    .line 1002
    :goto_17f
    if-nez v22, :cond_19c

    .line 1005
    const/16 v21, 0x0

    :goto_183
    move-object/from16 v14, p0

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v18, p3

    .line 1002
    :try_start_18c
    invoke-direct/range {v14 .. v21}, Lorg/apache/tools/ant/taskdefs/Zip;->addResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;ILorg/apache/tools/zip/ZipFile;Ljava/io/File;)V
    :try_end_18f
    .catchall {:try_start_18c .. :try_end_18f} :catchall_138

    goto/16 :goto_c3

    .line 1000
    :cond_191
    :try_start_191
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v10, v1, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->getUnixMode(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipFile;I)I

    move-result v19

    goto :goto_17f

    .line 1005
    :cond_19c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;
    :try_end_1a5
    .catchall {:try_start_191 .. :try_end_1a5} :catchall_1b5

    move-result-object v21

    goto :goto_183

    .line 966
    :cond_1a7
    if-eqz v20, :cond_1ac

    .line 1011
    invoke-virtual/range {v20 .. v20}, Lorg/apache/tools/zip/ZipFile;->close()V

    .line 1014
    :cond_1ac
    return-void

    .line 1010
    :catchall_1ad
    move-exception v3

    move-object/from16 v20, v4

    goto/16 :goto_110

    :catchall_1b2
    move-exception v3

    goto/16 :goto_110

    :catchall_1b5
    move-exception v3

    goto/16 :goto_110

    :catchall_1b8
    move-exception v3

    goto/16 :goto_110

    :catchall_1bb
    move-exception v3

    goto/16 :goto_110

    :catchall_1be
    move-exception v3

    goto/16 :goto_110

    :cond_1c1
    move-object v12, v5

    goto/16 :goto_7c
.end method

.method protected final addResources(Lorg/apache/tools/ant/types/ResourceCollection;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    instance-of v0, p1, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v0, :cond_a

    .line 1108
    check-cast p1, Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Zip;->addResources(Lorg/apache/tools/ant/types/FileSet;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 1149
    :cond_9
    return-void

    .line 1111
    :cond_a
    array-length v10, p2

    const/4 v0, 0x0

    move v9, v0

    :goto_d
    if-ge v9, v10, :cond_9

    aget-object v1, p2, v9

    .line 1112
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1113
    if-nez v0, :cond_1b

    .line 1111
    :cond_17
    :goto_17
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_d

    .line 1116
    :cond_1b
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1118
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1121
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-nez v0, :cond_17

    .line 1124
    :cond_33
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 1126
    if-eqz v0, :cond_57

    .line 1127
    invoke-static {v0}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v4

    .line 1130
    :goto_45
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1131
    const-string v3, ""

    const/16 v6, 0x41ed

    const/16 v7, 0x41ed

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/Zip;->addDirectoryResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;II)V

    goto :goto_17

    .line 1126
    :cond_57
    const/4 v4, 0x0

    goto :goto_45

    .line 1136
    :cond_59
    const-string v7, ""

    const/16 v8, 0x41ed

    move-object v3, p0

    move-object v5, v2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/tools/ant/taskdefs/Zip;->addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    .line 1139
    if-eqz v0, :cond_70

    .line 1140
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    .line 1141
    const v1, 0x81a4

    invoke-virtual {p0, v0, p3, v2, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    goto :goto_17

    .line 1143
    :cond_70
    const-string v3, ""

    const v5, 0x81a4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/Zip;->addResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;ILorg/apache/tools/zip/ZipFile;Ljava/io/File;)V

    goto :goto_17
.end method

.method public addZipGroupFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public addZipfileset(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .registers 2

    .line 344
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 345
    return-void
.end method

.method protected cleanUp()V
    .registers 3

    .line 1960
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1961
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1962
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    .line 1964
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->savedDoUpdate:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 1965
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->filesetsFromGroupfilesets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1966
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->filesetsFromGroupfilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1967
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1968
    return-void
.end method

.method protected createEmptyZip(Ljava/io/File;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1181
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v0, :cond_25

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Note: creating empty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " archive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/Zip;->log(Ljava/lang/String;I)V

    .line 1185
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_53

    move-result-object v1

    .line 1188
    const/16 v0, 0x16

    :try_start_32
    new-array v0, v0, [B
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_4c

    .line 1189
    const/16 v2, 0x50

    aput-byte v2, v0, v3

    .line 1190
    const/16 v2, 0x4b

    aput-byte v2, v0, v4

    .line 1191
    const/4 v2, 0x5

    aput-byte v2, v0, v5

    .line 1192
    const/4 v2, 0x3

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    .line 1195
    :try_start_43
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4c

    .line 1196
    if-eqz v1, :cond_4b

    :try_start_48
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_53

    .line 1200
    :cond_4b
    return v4

    .line 1185
    :catchall_4c
    move-exception v0

    if-eqz v1, :cond_52

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_78

    :cond_52
    :goto_52
    :try_start_52
    throw v0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_53} :catch_53

    .line 1196
    :catch_53
    move-exception v0

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create empty ZIP archive ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 1185
    :catchall_78
    move-exception v1

    goto :goto_52
.end method

.method public execute()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 622
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doubleFilePass:Z

    if-eqz v0, :cond_d

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    .line 624
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->executeMain()V

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    .line 627
    :cond_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->executeMain()V

    .line 628
    return-void
.end method

.method public executeMain()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 647
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->checkAttributesAndElements()V

    .line 651
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    .line 653
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->processDoUpdate()V

    .line 654
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->processGroupFilesets()V

    .line 657
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 658
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    if-eqz v1, :cond_29

    .line 659
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getImplicitFileSet()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/FileSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FileSet;

    .line 660
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 661
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_29
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 665
    new-array v1, v5, [Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/tools/ant/types/ResourceCollection;

    .line 668
    :try_start_36
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Zip;->getResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object v2

    .line 674
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_40} :catch_8b
    .catchall {:try_start_36 .. :try_end_40} :catchall_e1

    move-result v3

    if-nez v3, :cond_47

    .line 794
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    .line 795
    :goto_46
    return-void

    .line 678
    :cond_47
    :try_start_47
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 679
    if-eqz v3, :cond_61

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_61

    .line 680
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_61

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 686
    :cond_61
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->updatedFile:Z

    .line 687
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e6

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isWithoutAnyResources()Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 688
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->createEmptyZip(Ljava/io/File;)Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_77} :catch_8b
    .catchall {:try_start_47 .. :try_end_77} :catchall_e1

    .line 794
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    goto :goto_46

    .line 681
    :cond_7b
    :try_start_7b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Failed to create missing parent directory for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_8b} :catch_8b
    .catchall {:try_start_7b .. :try_end_8b} :catchall_e1

    .line 773
    :catch_8b
    move-exception v1

    .line 774
    :goto_8c
    :try_start_8c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem creating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 778
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v3, :cond_b1

    if-eqz v4, :cond_ca

    :cond_b1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_ca

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (and the archive is probably corrupt but I could not delete it)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 783
    :cond_ca
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z
    :try_end_cc
    .catchall {:try_start_8c .. :try_end_cc} :catchall_e1

    if-eqz v3, :cond_d7

    if-eqz v4, :cond_d7

    .line 785
    :try_start_d0
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v3, v4, v5}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d7} :catch_228
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_e1

    .line 792
    :cond_d7
    :goto_d7
    :try_start_d7
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_e1
    .catchall {:try_start_d7 .. :try_end_e1} :catchall_e1

    .line 794
    :catchall_e1
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    .line 795
    throw v1

    .line 691
    :cond_e6
    :try_start_e6
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->getResourcesToAdd()[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v7

    .line 693
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v2, :cond_24c

    .line 694
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->renameFile()Ljava/io/File;
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_f1} :catch_8b
    .catchall {:try_start_e6 .. :try_end_f1} :catchall_e1

    move-result-object v2

    move-object v3, v2

    .line 697
    :goto_f3
    :try_start_f3
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f5} :catch_1ae
    .catchall {:try_start_f3 .. :try_end_f5} :catchall_e1

    if-eqz v2, :cond_16f

    const-string v2, "Updating "

    .line 699
    :goto_f9
    :try_start_f9
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v6, :cond_11f

    .line 700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->log(Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_11f} :catch_1ae
    .catchall {:try_start_f9 .. :try_end_11f} :catchall_e1

    .line 705
    :cond_11f
    :try_start_11f
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v2, :cond_15a

    .line 706
    new-instance v6, Lorg/apache/tools/zip/ZipOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-direct {v6, v2}, Lorg/apache/tools/zip/ZipOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12a
    .catchall {:try_start_11f .. :try_end_12a} :catchall_1a8

    .line 708
    :try_start_12a
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/apache/tools/zip/ZipOutputStream;->setEncoding(Ljava/lang/String;)V

    .line 709
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->useLanguageEncodingFlag:Z

    invoke-virtual {v6, v2}, Lorg/apache/tools/zip/ZipOutputStream;->setUseLanguageEncodingFlag(Z)V

    .line 710
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    .line 711
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->getPolicy()Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    move-result-object v2

    .line 710
    invoke-virtual {v6, v2}, Lorg/apache/tools/zip/ZipOutputStream;->setCreateUnicodeExtraFields(Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;)V

    .line 712
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fallBackToUTF8:Z

    invoke-virtual {v6, v2}, Lorg/apache/tools/zip/ZipOutputStream;->setFallbackToUTF8(Z)V

    .line 713
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    if-eqz v2, :cond_172

    .line 714
    const/16 v2, 0x8

    .line 713
    :goto_148
    invoke-virtual {v6, v2}, Lorg/apache/tools/zip/ZipOutputStream;->setMethod(I)V

    .line 715
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->level:I

    invoke-virtual {v6, v2}, Lorg/apache/tools/zip/ZipOutputStream;->setLevel(I)V

    .line 716
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->getMode()Lorg/apache/tools/zip/Zip64Mode;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/apache/tools/zip/ZipOutputStream;->setUseZip64(Lorg/apache/tools/zip/Zip64Mode;)V
    :try_end_159
    .catchall {:try_start_12a .. :try_end_159} :catchall_248

    move-object v4, v6

    .line 718
    :cond_15a
    :try_start_15a
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 721
    :goto_15d
    array-length v2, v1

    if-ge v5, v2, :cond_174

    .line 722
    aget-object v2, v7, v5

    array-length v2, v2

    if-eqz v2, :cond_16c

    .line 723
    aget-object v2, v1, v5

    aget-object v6, v7, v5

    invoke-virtual {p0, v2, v6, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->addResources(Lorg/apache/tools/ant/types/ResourceCollection;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V
    :try_end_16c
    .catchall {:try_start_15a .. :try_end_16c} :catchall_1a8

    .line 721
    :cond_16c
    add-int/lit8 v5, v5, 0x1

    goto :goto_15d

    .line 697
    :cond_16f
    const-string v2, "Building "

    goto :goto_f9

    :cond_172
    move v2, v5

    .line 714
    goto :goto_148

    .line 727
    :cond_174
    :try_start_174
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v1, :cond_1f2

    .line 728
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    .line 729
    new-instance v5, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {v5}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    .line 730
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 731
    invoke-virtual {v5, v3}, Lorg/apache/tools/ant/types/ZipFileSet;->setSrc(Ljava/io/File;)V

    .line 732
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->setDefaultexcludes(Z)V

    .line 734
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_194
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 735
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/ZipFileSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V
    :try_end_1a7
    .catchall {:try_start_174 .. :try_end_1a7} :catchall_1a8

    goto :goto_194

    .line 771
    :catchall_1a8
    move-exception v1

    :goto_1a9
    const/4 v2, 0x0

    :try_start_1aa
    invoke-direct {p0, v4, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->closeZout(Lorg/apache/tools/zip/ZipOutputStream;Z)V

    .line 772
    throw v1
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1ae} :catch_1ae
    .catchall {:try_start_1aa .. :try_end_1ae} :catchall_e1

    .line 773
    :catch_1ae
    move-exception v1

    move-object v4, v3

    goto/16 :goto_8c

    .line 737
    :cond_1b2
    :try_start_1b2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 739
    move-object v0, v2

    check-cast v0, Lorg/apache/tools/ant/types/ZipScanner;

    move-object v1, v0

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/apache/tools/ant/types/ZipScanner;->setEncoding(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 744
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-nez v6, :cond_1db

    .line 745
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 746
    invoke-static {v1, v6}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 750
    :cond_1db
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/DirectoryScanner;)V

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda1;

    .line 751
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/tools/ant/types/Resource;

    .line 753
    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->addResources(Lorg/apache/tools/ant/types/FileSet;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 755
    :cond_1f2
    if-eqz v4, :cond_1f9

    .line 756
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->comment:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/apache/tools/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    .line 758
    :cond_1f9
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->finalizeZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 762
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v1, :cond_21f

    .line 763
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_21f

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: unable to delete temporary file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->log(Ljava/lang/String;I)V
    :try_end_21f
    .catchall {:try_start_1b2 .. :try_end_21f} :catchall_1a8

    .line 768
    :cond_21f
    const/4 v1, 0x1

    :try_start_220
    invoke-direct {p0, v4, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->closeZout(Lorg/apache/tools/zip/ZipOutputStream;Z)V
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_223} :catch_1ae
    .catchall {:try_start_220 .. :try_end_223} :catchall_e1

    .line 772
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    goto/16 :goto_46

    .line 786
    :catch_228
    move-exception v3

    .line 787
    :try_start_229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (and I couldn\'t rename the temporary file "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " back)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_245
    .catchall {:try_start_229 .. :try_end_245} :catchall_e1

    move-result-object v2

    goto/16 :goto_d7

    .line 771
    :catchall_248
    move-exception v1

    move-object v4, v6

    goto/16 :goto_1a9

    :cond_24c
    move-object v3, v4

    goto/16 :goto_f3
.end method

.method protected finalizeZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1169
    return-void
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 455
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUnicodeExtraFields()Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;
    .registers 2

    .line 546
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    return-object v0
.end method

.method protected final getCurrentExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .registers 2

    .line 1741
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->CURRENT_ZIP_EXTRA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/zip/ZipExtraField;

    return-object v0
.end method

.method public getDestFile()Ljava/io/File;
    .registers 2

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 424
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFallBackToUTF8()Z
    .registers 2

    .line 570
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fallBackToUTF8:Z

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 474
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->level:I

    return v0
.end method

.method public getModificationtime()Ljava/lang/String;
    .registers 2

    .line 612
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    return-object v0
.end method

.method protected getNonFileSetResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1490
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->grabNonFileSetResources([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v5

    .line 1491
    invoke-static {v5}, Lorg/apache/tools/ant/taskdefs/Zip;->isEmpty([[Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    .line 1492
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Zip;->HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1493
    if-eqz v0, :cond_1d

    .line 1496
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, p3, v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    .line 1543
    :goto_1c
    return-object v0

    .line 1501
    :cond_1d
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1502
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_1c

    .line 1505
    :cond_29
    if-eqz p3, :cond_35

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v0, :cond_35

    .line 1507
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_1c

    .line 1510
    :cond_35
    array-length v0, p1

    new-array v6, v0, [[Lorg/apache/tools/ant/types/Resource;

    move v1, v2

    .line 1512
    :goto_39
    array-length v0, p1

    if-ge v1, v0, :cond_92

    .line 1513
    aget-object v0, v5, v1

    array-length v0, v0

    if-nez v0, :cond_49

    .line 1514
    new-array v0, v2, [Lorg/apache/tools/ant/types/Resource;

    aput-object v0, v6, v1

    .line 1512
    :cond_45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_39

    :cond_49
    move v3, v2

    .line 1518
    :goto_4a
    aget-object v0, v5, v1

    array-length v0, v0

    if-ge v3, v0, :cond_77

    .line 1519
    aget-object v0, v5, v1

    aget-object v0, v0, v3

    .line 1520
    const-class v7, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 1521
    if-eqz v0, :cond_67

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1518
    :cond_67
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4a

    .line 1522
    :cond_6b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A zip file cannot include itself"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1527
    :cond_77
    aget-object v0, v5, v1

    new-instance v3, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v3}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    invoke-direct {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Zip;->selectOutOfDateResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    aput-object v0, v6, v1

    .line 1529
    if-nez p3, :cond_8b

    aget-object v0, v6, v1

    array-length v0, v0

    if-lez v0, :cond_a6

    :cond_8b
    move p3, v4

    .line 1531
    :goto_8c
    if-eqz p3, :cond_45

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v0, :cond_45

    .line 1538
    :cond_92
    if-eqz p3, :cond_9f

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v0, :cond_9f

    .line 1540
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    goto/16 :goto_1c

    .line 1543
    :cond_9f
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, p3, v6}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    goto/16 :goto_1c

    :cond_a6
    move p3, v2

    goto :goto_8c
.end method

.method public getPreserve0Permissions()Z
    .registers 2

    .line 510
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->preserve0Permissions:Z

    return v0
.end method

.method protected getResourcesToAdd([Lorg/apache/tools/ant/types/FileSet;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1325
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->grabResources([Lorg/apache/tools/ant/types/FileSet;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v6

    .line 1326
    invoke-static {v6}, Lorg/apache/tools/ant/taskdefs/Zip;->isEmpty([[Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1327
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Zip;->HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1328
    if-eqz p3, :cond_26

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v0, :cond_26

    .line 1347
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    .line 1456
    :goto_25
    return-object v0

    .line 1350
    :cond_26
    const-string v0, "skip"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1351
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v0, :cond_59

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " archive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated because no new files were included."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 1376
    :cond_53
    :goto_53
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, p3, v6}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_25

    .line 1356
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: skipping "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " archive "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because no files were included."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    goto :goto_53

    .line 1361
    :cond_7d
    const-string v0, "fail"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 1368
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_53

    move p3, v1

    .line 1369
    goto :goto_53

    .line 1362
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " archive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": no files were included."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1365
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1381
    :cond_b9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 1382
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    goto/16 :goto_25

    .line 1385
    :cond_c6
    if-eqz p3, :cond_d3

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v0, :cond_d3

    .line 1387
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    goto/16 :goto_25

    .line 1390
    :cond_d3
    array-length v0, p1

    new-array v7, v0, [[Lorg/apache/tools/ant/types/Resource;

    move v2, v3

    .line 1392
    :goto_d7
    array-length v0, p1

    if-ge v2, v0, :cond_125

    .line 1393
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fileset:Lorg/apache/tools/ant/types/FileSet;

    instance-of v0, v0, Lorg/apache/tools/ant/types/ZipFileSet;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fileset:Lorg/apache/tools/ant/types/FileSet;

    check-cast v0, Lorg/apache/tools/ant/types/ZipFileSet;

    .line 1394
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/ZipFileSet;->getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_121

    .line 1395
    :cond_ee
    aget-object v0, p1, v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v4

    move v0, v3

    .line 1397
    :goto_f9
    aget-object v5, v6, v2

    array-length v5, v5

    if-ge v0, v5, :cond_121

    .line 1398
    sget-object v5, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    aget-object v8, v6, v2

    aget-object v8, v8, v0

    .line 1400
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1399
    invoke-virtual {v5, v4, v8}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1401
    invoke-virtual {v5, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_115

    .line 1397
    add-int/lit8 v0, v0, 0x1

    goto :goto_f9

    .line 1402
    :cond_115
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A zip file cannot include itself"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1392
    :cond_121
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d7

    :cond_125
    move v5, v3

    move v4, p3

    .line 1409
    :goto_127
    array-length v0, p1

    if-ge v5, v0, :cond_189

    .line 1410
    aget-object v0, v6, v5

    array-length v0, v0

    if-nez v0, :cond_139

    .line 1411
    new-array v0, v3, [Lorg/apache/tools/ant/types/Resource;

    aput-object v0, v7, v5

    move v0, v4

    .line 1409
    :cond_134
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v4, v0

    goto :goto_127

    .line 1415
    :cond_139
    new-instance v2, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    .line 1416
    aget-object v0, p1, v5

    instance-of v0, v0, Lorg/apache/tools/ant/types/ZipFileSet;

    if-eqz v0, :cond_172

    .line 1417
    aget-object v0, p1, v5

    check-cast v0, Lorg/apache/tools/ant/types/ZipFileSet;

    .line 1418
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/types/ZipFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_196

    .line 1419
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/types/ZipFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_196

    .line 1423
    new-instance v2, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/MergingMapper;-><init>()V

    .line 1424
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/types/ZipFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/util/MergingMapper;->setTo(Ljava/lang/String;)V

    move-object v0, v2

    :goto_171
    move-object v2, v0

    .line 1440
    :cond_172
    :goto_172
    aget-object v0, v6, v5

    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->selectOutOfDateResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    aput-object v0, v7, v5

    .line 1442
    if-nez v4, :cond_181

    aget-object v0, v7, v5

    array-length v0, v0

    if-lez v0, :cond_1fe

    :cond_181
    move v0, v1

    .line 1444
    :goto_182
    if-eqz v0, :cond_134

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v2, :cond_134

    move v4, v0

    .line 1451
    :cond_189
    if-eqz v4, :cond_1f7

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v0, :cond_1f7

    .line 1453
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    goto/16 :goto_25

    .line 1425
    :cond_196
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/types/ZipFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_200

    .line 1428
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/types/ZipFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_172

    .line 1429
    new-instance v2, Lorg/apache/tools/ant/util/GlobPatternMapper;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/GlobPatternMapper;-><init>()V

    .line 1430
    const-string v8, "*"

    invoke-virtual {v2, v8}, Lorg/apache/tools/ant/util/GlobPatternMapper;->setFrom(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/types/ZipFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1e1

    const-string v8, "\\"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1e1

    .line 1433
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1435
    :cond_1e1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/util/GlobPatternMapper;->setTo(Ljava/lang/String;)V

    goto/16 :goto_172

    .line 1456
    :cond_1f7
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {v0, v4, v7}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    goto/16 :goto_25

    :cond_1fe
    move v0, v3

    goto :goto_182

    :cond_200
    move-object v0, v2

    goto/16 :goto_171
.end method

.method protected getResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 1248
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    array-length v5, p1

    move v1, v3

    :goto_d
    if-ge v1, v5, :cond_22

    aget-object v0, p1, v1

    .line 1251
    instance-of v6, v0, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v6, :cond_1e

    .line 1252
    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :goto_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 1254
    :cond_1e
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1257
    :cond_22
    new-array v0, v3, [Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/ResourceCollection;

    .line 1259
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/tools/ant/taskdefs/Zip;->getNonFileSetResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object v2

    .line 1262
    new-array v1, v3, [Lorg/apache/tools/ant/types/FileSet;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/tools/ant/types/FileSet;

    .line 1263
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z

    move-result v4

    invoke-virtual {p0, v1, p2, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->getResourcesToAdd([Lorg/apache/tools/ant/types/FileSet;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object v5

    .line 1264
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z

    move-result v1

    if-nez v1, :cond_82

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1273
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->getNonFileSetResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object v0

    .line 1276
    :goto_4f
    array-length v1, p1

    new-array v6, v1, [[Lorg/apache/tools/ant/types/Resource;

    move v1, v3

    move v2, v3

    move v4, v3

    .line 1279
    :goto_55
    array-length v3, p1

    if-ge v4, v3, :cond_78

    .line 1280
    aget-object v3, p1, v4

    instance-of v3, v3, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v3, :cond_6d

    .line 1281
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->getResourcesToAdd()[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v3

    aget-object v3, v3, v1

    aput-object v3, v6, v4

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .line 1279
    :goto_69
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_55

    .line 1283
    :cond_6d
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->getResourcesToAdd()[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v3

    aget-object v3, v3, v2

    aput-object v3, v6, v4

    add-int/lit8 v3, v2, 0x1

    goto :goto_69

    .line 1286
    :cond_78
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z

    move-result v1

    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object v0

    :cond_82
    move-object v0, v2

    goto :goto_4f
.end method

.method public getUseLanguageEnodingFlag()Z
    .registers 2

    .line 528
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->useLanguageEncodingFlag:Z

    return v0
.end method

.method public getZip64Mode()Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;
    .registers 2

    .line 588
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    return-object v0
.end method

.method protected grabNonFileSetResources([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;
    .registers 10

    const/4 v2, 0x0

    .line 1619
    array-length v0, p1

    new-array v3, v0, [[Lorg/apache/tools/ant/types/Resource;

    move v1, v2

    .line 1620
    :goto_5
    array-length v0, p1

    if-ge v1, v0, :cond_57

    .line 1621
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1623
    aget-object v0, p1, v1

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 1624
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1625
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1626
    :cond_2e
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1627
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1632
    :cond_38
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda1;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1634
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1635
    new-array v4, v2, [Lorg/apache/tools/ant/types/Resource;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Resource;

    aput-object v0, v3, v1

    .line 1620
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1637
    :cond_57
    return-object v3
.end method

.method protected grabResources([Lorg/apache/tools/ant/types/FileSet;)[[Lorg/apache/tools/ant/types/Resource;
    .registers 14

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1579
    array-length v0, p1

    new-array v6, v0, [[Lorg/apache/tools/ant/types/Resource;

    move v2, v3

    .line 1580
    :goto_6
    array-length v0, p1

    if-ge v2, v0, :cond_98

    .line 1582
    aget-object v0, p1, v2

    instance-of v0, v0, Lorg/apache/tools/ant/types/ZipFileSet;

    if-eqz v0, :cond_99

    .line 1583
    aget-object v0, p1, v2

    check-cast v0, Lorg/apache/tools/ant/types/ZipFileSet;

    .line 1584
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1585
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    move v4, v5

    .line 1587
    :goto_30
    aget-object v0, p1, v2

    .line 1588
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 1589
    instance-of v0, v1, Lorg/apache/tools/ant/types/ZipScanner;

    if-eqz v0, :cond_46

    move-object v0, v1

    .line 1590
    check-cast v0, Lorg/apache/tools/ant/types/ZipScanner;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/ZipScanner;->setEncoding(Ljava/lang/String;)V

    .line 1592
    :cond_46
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1593
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-nez v0, :cond_6d

    .line 1594
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v0, v3

    :goto_55
    if-ge v0, v9, :cond_6d

    aget-object v10, v8, v0

    .line 1595
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_61

    if-nez v4, :cond_68

    .line 1596
    :cond_61
    invoke-virtual {v1, v10}, Lorg/apache/tools/ant/DirectoryScanner;->getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_6b
    move v4, v3

    .line 1585
    goto :goto_30

    .line 1600
    :cond_6d
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v0, v3

    :goto_73
    if-ge v0, v9, :cond_89

    aget-object v10, v8, v0

    .line 1601
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7f

    if-nez v4, :cond_86

    .line 1602
    :cond_7f
    invoke-virtual {v1, v10}, Lorg/apache/tools/ant/DirectoryScanner;->getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 1605
    :cond_89
    new-array v0, v3, [Lorg/apache/tools/ant/types/Resource;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Resource;

    aput-object v0, v6, v2

    .line 1580
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_6

    .line 1607
    :cond_98
    return-object v6

    :cond_99
    move v4, v5

    goto :goto_30
.end method

.method protected hasUpdatedFile()Z
    .registers 2

    .line 637
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->updatedFile:Z

    return v0
.end method

.method protected initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1159
    return-void
.end method

.method protected final isAddingNewFiles()Z
    .registers 2

    .line 905
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    return v0
.end method

.method public isCompress()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    return v0
.end method

.method protected final isFirstPass()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doubleFilePass:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isInUpdateMode()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    return v0
.end method

.method public synthetic lambda$selectFileResources$4$Zip(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 4

    .line 2017
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2018
    const/4 v0, 0x1

    .line 2027
    :goto_7
    return v0

    .line 2020
    :cond_8
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-eqz v0, :cond_2a

    .line 2021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as only files will be added."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2021
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 2027
    :cond_2a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected logWhenWriting(Ljava/lang/String;I)V
    .registers 4

    .line 2067
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v0, :cond_7

    .line 2068
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Zip;->log(Ljava/lang/String;I)V

    .line 2070
    :cond_7
    return-void
.end method

.method public reset()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1979
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1980
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    .line 1981
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    .line 1982
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1983
    const-string v0, "add"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    .line 1984
    const-string v0, "zip"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    .line 1985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 1986
    const-string v0, "skip"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    .line 1987
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 1988
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    .line 1989
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    .line 1990
    return-void
.end method

.method protected selectDirectoryResources([Lorg/apache/tools/ant/types/Resource;)[Lorg/apache/tools/ant/types/Resource;
    .registers 3

    .line 2038
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda6;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Zip;->selectResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method protected selectFileResources([Lorg/apache/tools/ant/types/Resource;)[Lorg/apache/tools/ant/types/Resource;
    .registers 3

    .line 2015
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/taskdefs/Zip;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Zip;->selectResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method protected selectResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)[Lorg/apache/tools/ant/types/Resource;
    .registers 6

    .line 2050
    array-length v0, p1

    if-nez v0, :cond_4

    .line 2055
    :cond_3
    :goto_3
    return-object p1

    .line 2053
    :cond_4
    invoke-static {p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda2;

    .line 2054
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Resource;

    .line 2055
    array-length v1, v0

    array-length v2, p1

    if-eq v1, v2, :cond_3

    move-object p1, v0

    goto :goto_3
.end method

.method public setBasedir(Ljava/io/File;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    .line 283
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->comment:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setCompress(Z)V
    .registers 2

    .line 291
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 292
    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;)V
    .registers 2

    .line 537
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    .line 538
    return-void
.end method

.method protected final setCurrentExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V
    .registers 3

    .line 1751
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->CURRENT_ZIP_EXTRA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1752
    return-void
.end method

.method public setDestFile(Ljava/io/File;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    .line 265
    return-void
.end method

.method public setDuplicate(Lorg/apache/tools/ant/taskdefs/Zip$Duplicate;)V
    .registers 3

    .line 374
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Zip$Duplicate;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 415
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setFallBackToUTF8(Z)V
    .registers 2

    .line 559
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fallBackToUTF8:Z

    .line 560
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->setDestFile(Ljava/io/File;)V

    .line 255
    return-void
.end method

.method public setFilesonly(Z)V
    .registers 2

    .line 309
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    .line 310
    return-void
.end method

.method public setKeepCompression(Z)V
    .registers 2

    .line 435
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->keepCompression:Z

    .line 436
    return-void
.end method

.method public setLevel(I)V
    .registers 2

    .line 465
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->level:I

    .line 466
    return-void
.end method

.method public setModificationtime(Ljava/lang/String;)V
    .registers 2

    .line 602
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public setPreserve0Permissions(Z)V
    .registers 2

    .line 501
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->preserve0Permissions:Z

    .line 502
    return-void
.end method

.method public setRoundUp(Z)V
    .registers 2

    .line 492
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    .line 493
    return-void
.end method

.method public setUpdate(Z)V
    .registers 2

    .line 318
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 319
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->savedDoUpdate:Z

    .line 320
    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .registers 2

    .line 519
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->useLanguageEncodingFlag:Z

    .line 520
    return-void
.end method

.method public setWhenempty(Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;)V
    .registers 3

    .line 403
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setZip64Mode(Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;)V
    .registers 2

    .line 579
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    .line 580
    return-void
.end method

.method public setZipfile(Ljava/io/File;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->setDestFile(Ljava/io/File;)V

    .line 241
    return-void
.end method

.method protected zipDir(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1652
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Zip;->zipDir(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1653
    return-void
.end method

.method protected zipDir(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1668
    if-nez p1, :cond_c

    const/4 v1, 0x0

    :goto_3
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Zip;->zipDir(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1670
    return-void

    .line 1668
    :cond_c
    new-instance v1, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    goto :goto_3
.end method

.method protected zipDir(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 1685
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-eqz v0, :cond_20

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skipping directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for file-only archive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 1725
    :cond_1f
    :goto_1f
    return-void

    .line 1691
    :cond_20
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 1698
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    invoke-virtual {v0, p3, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v0, :cond_1f

    .line 1701
    new-instance v2, Lorg/apache/tools/zip/ZipEntry;

    invoke-direct {v2, p3}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1704
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    if-eqz v0, :cond_72

    const/16 v0, 0x7cf

    .line 1706
    :goto_50
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    if-eqz v3, :cond_74

    .line 1707
    iget-wide v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J

    invoke-virtual {v2, v4, v5}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    .line 1713
    :goto_59
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 1714
    invoke-virtual {v2, v1}, Lorg/apache/tools/zip/ZipEntry;->setMethod(I)V

    .line 1716
    sget-wide v0, Lorg/apache/tools/ant/taskdefs/Zip;->EMPTY_CRC:J

    invoke-virtual {v2, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setCrc(J)V

    .line 1717
    invoke-virtual {v2, p4}, Lorg/apache/tools/zip/ZipEntry;->setUnixMode(I)V

    .line 1719
    if-eqz p5, :cond_6e

    .line 1720
    invoke-virtual {v2, p5}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1723
    :cond_6e
    invoke-virtual {p2, v2}, Lorg/apache/tools/zip/ZipOutputStream;->putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V

    goto :goto_1f

    :cond_72
    move v0, v1

    .line 1704
    goto :goto_50

    .line 1708
    :cond_74
    if-eqz p1, :cond_86

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1709
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    goto :goto_59

    .line 1711
    :cond_86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    goto :goto_59
.end method

.method protected zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1893
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1898
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-instance v1, Ljava/io/BufferedInputStream;

    new-array v3, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1900
    :try_start_18
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    if-eqz v4, :cond_22

    const/16 v0, 0x7cf

    :cond_22
    int-to-long v4, v0

    add-long/2addr v4, v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_30

    .line 1903
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1904
    return-void

    .line 1898
    :catchall_30
    move-exception v0

    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_41

    :goto_34
    throw v0

    .line 1894
    :cond_35
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A zip file cannot include itself"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1898
    :catchall_41
    move-exception v1

    goto :goto_34
.end method

.method protected zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1774
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1776
    const-string v0, "preserve"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already added, skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 1846
    :goto_27
    return-void

    .line 1781
    :cond_28
    const-string v0, "fail"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " found, adding."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 1793
    :goto_4c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0, p3, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v0, :cond_cd

    .line 1796
    new-instance v1, Lorg/apache/tools/zip/ZipEntry;

    invoke-direct {v1, p3}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-wide p4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J

    :cond_60
    invoke-virtual {v1, p4, p5}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    .line 1798
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    if-eqz v0, :cond_f9

    const/16 v0, 0x8

    :goto_69
    invoke-virtual {v1, v0}, Lorg/apache/tools/zip/ZipEntry;->setMethod(I)V

    .line 1804
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1812
    :goto_72
    invoke-virtual {p2}, Lorg/apache/tools/zip/ZipOutputStream;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_aa

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    if-nez v0, :cond_aa

    .line 1813
    const-wide/16 v2, 0x0

    .line 1814
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 1815
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 1816
    const/16 v0, 0x2000

    new-array v5, v0, [B

    .line 1817
    const/4 v0, 0x0

    .line 1819
    :cond_8e
    int-to-long v6, v0

    add-long/2addr v2, v6

    .line 1820
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1821
    const/4 v0, 0x0

    array-length v6, v5

    invoke-virtual {p1, v5, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1822
    const/4 v6, -0x1

    if-ne v0, v6, :cond_8e

    .line 1823
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 1824
    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 1825
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setCrc(J)V

    .line 1828
    :cond_aa
    invoke-virtual {v1, p7}, Lorg/apache/tools/zip/ZipEntry;->setUnixMode(I)V

    .line 1829
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getCurrentExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 1830
    if-eqz v0, :cond_b6

    .line 1831
    invoke-virtual {v1, v0}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1834
    :cond_b6
    invoke-virtual {p2, v1}, Lorg/apache/tools/zip/ZipOutputStream;->putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V

    .line 1836
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 1837
    const/4 v0, 0x0

    .line 1839
    :cond_be
    if-eqz v0, :cond_c4

    .line 1840
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Lorg/apache/tools/zip/ZipOutputStream;->write([BII)V

    .line 1842
    :cond_c4
    const/4 v0, 0x0

    array-length v2, v1

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1843
    const/4 v2, -0x1

    if-ne v0, v2, :cond_be

    .line 1795
    :cond_cd
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedFiles:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1782
    :cond_d4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Duplicate file %s was found and the duplicate attribute is \'fail\'."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1790
    :cond_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    goto/16 :goto_4c

    .line 1798
    :cond_f9
    const/4 v0, 0x0

    goto/16 :goto_69

    .line 1804
    :cond_fc
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto/16 :goto_72
.end method

.method protected final zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I[Lorg/apache/tools/zip/ZipExtraField;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 1870
    :try_start_1
    invoke-virtual {p0, p8}, Lorg/apache/tools/ant/taskdefs/Zip;->setCurrentExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1871
    invoke-virtual/range {p0 .. p7}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    .line 1873
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->setCurrentExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1874
    return-void

    .line 1873
    :catchall_b
    move-exception v0

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->setCurrentExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1874
    throw v0
.end method
