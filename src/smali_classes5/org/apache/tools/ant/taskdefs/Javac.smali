.class public Lorg/apache/tools/ant/taskdefs/Javac;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Javac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Javac$ImplementationSpecificArgument;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final FAIL_MSG:Ljava/lang/String; = "Compile failed; see the compiler error output for details."

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final GROUP_END_MARK:C = '}'

.field private static final GROUP_SEP_MARK:C = ','

.field private static final GROUP_START_MARK:C = '{'

.field private static final MODULE_MARKER:Ljava/lang/String; = "*"

.field private static final PACKAGE_INFO_CLASS_FOOTER:[B

.field private static final PACKAGE_INFO_CLASS_HEADER:[B


# instance fields
.field private bootclasspath:Lorg/apache/tools/ant/types/Path;

.field private compileClasspath:Lorg/apache/tools/ant/types/Path;

.field protected compileList:[Ljava/io/File;

.field private compileSourcepath:Lorg/apache/tools/ant/types/Path;

.field private createMissingPackageInfoClass:Z

.field private debug:Z

.field private debugLevel:Ljava/lang/String;

.field private depend:Z

.field private deprecation:Z

.field private destDir:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private errorProperty:Ljava/lang/String;

.field private extdirs:Lorg/apache/tools/ant/types/Path;

.field private facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

.field protected failOnError:Z

.field private fork:Z

.field private forkedExecutable:Ljava/lang/String;

.field private includeAntRuntime:Ljava/lang/Boolean;

.field private includeDestClasses:Z

.field private includeJavaRuntime:Z

.field protected listFiles:Z

.field private memoryInitialSize:Ljava/lang/String;

.field private memoryMaximumSize:Ljava/lang/String;

.field private moduleSourcepath:Lorg/apache/tools/ant/types/Path;

.field private modulepath:Lorg/apache/tools/ant/types/Path;

.field private nativeHeaderDir:Ljava/io/File;

.field private nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

.field private nowarn:Z

.field private optimize:Z

.field private packageInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private release:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private src:Lorg/apache/tools/ant/types/Path;

.field private targetAttribute:Ljava/lang/String;

.field private taskSuccess:Z

.field private tmpDir:Ljava/io/File;

.field private updatedProperty:Ljava/lang/String;

.field private upgrademodulepath:Lorg/apache/tools/ant/types/Path;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javac;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 1648
    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javac;->PACKAGE_INFO_CLASS_HEADER:[B

    .line 1656
    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javac;->PACKAGE_INFO_CLASS_FOOTER:[B

    return-void

    .line 1648
    nop

    :array_1a
    .array-data 1
        -0x36t
        -0x2t
        -0x46t
        -0x42t
        0x0t
        0x0t
        0x0t
        0x31t
        0x0t
        0x7t
        0x7t
        0x0t
        0x5t
        0x7t
        0x0t
        0x6t
        0x1t
        0x0t
        0xat
        0x53t
        0x6ft
        0x75t
        0x72t
        0x63t
        0x65t
        0x46t
        0x69t
        0x6ct
        0x65t
        0x1t
        0x0t
        0x11t
        0x70t
        0x61t
        0x63t
        0x6bt
        0x61t
        0x67t
        0x65t
        0x2dt
        0x69t
        0x6et
        0x66t
        0x6ft
        0x2et
        0x6at
        0x61t
        0x76t
        0x61t
        0x1t
    .end array-data

    .line 1656
    nop

    :array_38
    .array-data 1
        0x2ft
        0x70t
        0x61t
        0x63t
        0x6bt
        0x61t
        0x67t
        0x65t
        0x2dt
        0x69t
        0x6et
        0x66t
        0x6ft
        0x1t
        0x0t
        0x10t
        0x6at
        0x61t
        0x76t
        0x61t
        0x2ft
        0x6ct
        0x61t
        0x6et
        0x67t
        0x2ft
        0x4ft
        0x62t
        0x6at
        0x65t
        0x63t
        0x74t
        0x2t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 104
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debug:Z

    .line 105
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->optimize:Z

    .line 106
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->deprecation:Z

    .line 107
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->depend:Z

    .line 108
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->verbose:Z

    .line 114
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeJavaRuntime:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->fork:Z

    .line 116
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    .line 117
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nowarn:Z

    .line 120
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    .line 123
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    .line 124
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->listFiles:Z

    .line 125
    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->packageInfos:Ljava/util/Map;

    .line 134
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->taskSuccess:Z

    .line 135
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeDestClasses:Z

    .line 136
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    .line 138
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->createMissingPackageInfoClass:Z

    .line 144
    new-instance v0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->assumedJavaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    .line 145
    return-void
.end method

.method private assumedJavaVersion()Ljava/lang/String;
    .registers 2

    .line 148
    const-string v0, "1.8"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 149
    const-string v0, "javac1.8"

    .line 158
    :goto_a
    return-object v0

    .line 151
    :cond_b
    const-string v0, "9"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 152
    const-string v0, "javac9"

    goto :goto_a

    .line 154
    :cond_16
    const-string v0, "10"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 155
    const-string v0, "javac10+"

    goto :goto_a

    .line 158
    :cond_21
    const-string v0, "modern"

    goto :goto_a
.end method

.method private collectFileListFromModulePath()V
    .registers 14

    const/4 v3, 0x0

    .line 1154
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v5

    .line 1155
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v3

    :goto_d
    if-ge v4, v7, :cond_8f

    aget-object v8, v6, v4

    .line 1157
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v8}, Lorg/apache/tools/ant/taskdefs/Javac;->resolveModuleSourcePathElement(Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1158
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1157
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    :cond_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_42
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_66

    .line 1162
    const/4 v2, 0x1

    .line 1163
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v11

    .line 1164
    invoke-virtual {v11}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v11

    .line 1165
    iget-object v12, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    invoke-virtual {v5, v12, v1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {p0, v0, v12, v11}, Lorg/apache/tools/ant/taskdefs/Javac;->scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V

    :cond_66
    move v0, v2

    move v2, v0

    .line 1167
    goto :goto_42

    .line 1169
    :cond_69
    if-eqz v2, :cond_6f

    .line 1155
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_d

    .line 1170
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modulesourcepath \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1175
    :cond_8f
    return-void
.end method

.method private collectFileListFromSourcePath()V
    .registers 7

    .line 1139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_9
    if-ge v2, v4, :cond_54

    aget-object v0, v3, v2

    .line 1140
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1141
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1147
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v5

    .line 1149
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-eqz v0, :cond_2e

    :goto_23
    invoke-virtual {v5}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/Javac;->scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V

    .line 1139
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_2e
    move-object v0, v1

    .line 1149
    goto :goto_23

    .line 1142
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srcdir \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1151
    :cond_54
    return-void
.end method

.method private static expandGroups(Ljava/lang/CharSequence;)Ljava/util/Collection;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    .line 1482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    move-object v3, v1

    move v4, v5

    .line 1485
    :goto_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v4, v0, :cond_b2

    .line 1486
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1487
    packed-switch v0, :pswitch_data_c8

    .line 1516
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v0, v2

    move-object v1, v3

    .line 1485
    :goto_28
    add-int/lit8 v4, v4, 0x1

    move-object v2, v0

    move-object v3, v1

    goto :goto_16

    .line 1489
    :pswitch_2d  #0x7b
    invoke-static {p0, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->getGroupEndIndex(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 1490
    if-ltz v6, :cond_9a

    .line 1496
    add-int/lit8 v0, v4, 0x1

    invoke-interface {p0, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->resolveGroup(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v0

    .line 1497
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_ce

    .line 1504
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v7

    mul-int/2addr v1, v7

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1506
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_56
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 1507
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_67
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1508
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 1501
    :pswitch_82  #0x1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_8f
    :pswitch_8f  #0x0
    move-object v0, v2

    move-object v1, v3

    move v4, v6

    .line 1514
    goto :goto_28

    .line 1511
    :cond_93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v4

    goto :goto_8f

    .line 1491
    :cond_9a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unclosed group %s, starting at: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :cond_b2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_b6

    .line 1522
    :cond_c6
    return-object v2

    .line 1487
    nop

    :pswitch_data_c8
    .packed-switch 0x7b
        :pswitch_2d  #0000007b
    .end packed-switch

    .line 1497
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_8f  #00000000
        :pswitch_82  #00000001
    .end packed-switch
.end method

.method private static findModules(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .line 1635
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1636
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1646
    :cond_e
    return-void

    .line 1639
    :cond_f
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_18
    if-ge v2, v4, :cond_e

    aget-object v0, v3, v2

    .line 1640
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1641
    if-nez p2, :cond_32

    move-object v1, v0

    .line 1643
    :goto_23
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Javac$$ExternalSyntheticLambda1;

    invoke-interface {p3, v5, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1644
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1639
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_18

    .line 1642
    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_23
.end method

.method private static findModules(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 1595
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 1596
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 1597
    const/16 v3, 0x5c

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 1598
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1599
    if-ne v2, v6, :cond_1e

    .line 1600
    invoke-static {p0, v1, v0, p2}, Lorg/apache/tools/ant/taskdefs/Javac;->findModules(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1620
    :goto_1d
    return-void

    .line 1603
    :cond_1e
    if-eqz v2, :cond_75

    .line 1606
    const-string v3, "*"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 1607
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_6d

    .line 1610
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3f

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_56

    .line 1613
    :cond_3f
    const-string v4, "*"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_65

    .line 1616
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1617
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_5e

    .line 1619
    :goto_52
    invoke-static {p0, v2, v0, p2}, Lorg/apache/tools/ant/taskdefs/Javac;->findModules(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1d

    .line 1611
    :cond_56
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The module mark must be followed by separator"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1618
    :cond_5e
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 1614
    :cond_65
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The modulesourcepath entry must contain at most one module mark"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1608
    :cond_6d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The module mark must be preceded by separator"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1604
    :cond_75
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The modulesourcepath entry must be a folder."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findSupportedFileExtensions()[Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    .line 1178
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompiler()Ljava/lang/String;

    move-result-object v2

    .line 1180
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    if-eqz v0, :cond_42

    .line 1183
    :goto_9
    const/4 v2, 0x0

    .line 1184
    instance-of v3, v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterExtension;

    if-eqz v3, :cond_4c

    .line 1185
    check-cast v0, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterExtension;

    .line 1186
    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterExtension;->getSupportedFileExtensions()[Ljava/lang/String;

    move-result-object v0

    .line 1189
    :goto_14
    if-nez v0, :cond_1d

    .line 1190
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "java"

    aput-object v2, v0, v1

    .line 1195
    :cond_1d
    :goto_1d
    array-length v2, v0

    if-ge v1, v2, :cond_4b

    .line 1196
    aget-object v2, v0, v1

    const-string v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1195
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1181
    :cond_42
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createCompilerClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    move-result-object v0

    goto :goto_9

    .line 1200
    :cond_4b
    return-object v0

    :cond_4c
    move-object v0, v2

    goto :goto_14
.end method

.method private generateMissingPackageInfoClasses(Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->packageInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1420
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1421
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1422
    new-instance v3, Ljava/io/File;

    const/16 v4, 0x2f

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1424
    new-instance v4, Ljava/io/File;

    const-string v5, "package-info.class"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_a

    .line 1428
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating empty "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    .line 1430
    :try_start_6a
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Javac;->PACKAGE_INFO_CLASS_HEADER:[B

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1431
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1432
    array-length v1, v0

    add-int/lit8 v1, v1, 0xd

    .line 1433
    int-to-byte v4, v1

    div-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 1434
    int-to-byte v1, v1

    rem-int/lit16 v1, v1, 0x100

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1435
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1436
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Javac;->PACKAGE_INFO_CLASS_FOOTER:[B

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_8c
    .catchall {:try_start_6a .. :try_end_8c} :catchall_93

    .line 1437
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_a

    .line 1429
    :catchall_93
    move-exception v0

    if-eqz v3, :cond_99

    :try_start_96
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    :cond_99
    :goto_99
    throw v0

    :catchall_9a
    move-exception v1

    goto :goto_99

    .line 1439
    :cond_9c
    return-void
.end method

.method private getAltCompilerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 946
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isModernJdkCompiler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 947
    const-string v0, "modern"

    .line 964
    :cond_8
    :goto_8
    return-object v0

    .line 949
    :cond_9
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isClassicJdkCompiler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 950
    const-string v0, "classic"

    goto :goto_8

    .line 952
    :cond_12
    const-string v0, "modern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 953
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->assumedJavaVersion()Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isModernJdkCompiler(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 958
    :cond_24
    const-string v0, "classic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 959
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->assumedJavaVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 961
    :cond_31
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isForkedJavac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 962
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->assumedJavaVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 964
    :cond_3c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static getGroupEndIndex(Ljava/lang/CharSequence;I)I
    .registers 4

    .line 1566
    const/4 v0, 0x0

    .line 1567
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 1568
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1569
    packed-switch v1, :pswitch_data_1c

    .line 1572
    :cond_e
    :goto_e
    :pswitch_e  #0x7c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1574
    :pswitch_11  #0x7d
    add-int/lit8 v0, v0, -0x1

    .line 1575
    if-nez v0, :cond_e

    .line 1581
    :goto_15
    return p1

    .line 1571
    :pswitch_16  #0x7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1581
    :cond_19
    const/4 p1, -0x1

    goto :goto_15

    .line 1569
    nop

    :pswitch_data_1c
    .packed-switch 0x7b
        :pswitch_16  #0000007b
        :pswitch_e  #0000007c
        :pswitch_11  #0000007d
    .end packed-switch
.end method

.method private static hasPath(Lorg/apache/tools/ant/types/Path;)Z
    .registers 2

    .line 1448
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic lambda$findModules$0(Ljava/lang/String;)Ljava/util/Collection;
    .registers 2

    .line 1643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private lookForPackageInfos(Ljava/io/File;[Ljava/io/File;)V
    .registers 11

    const/4 v1, 0x0

    .line 1397
    array-length v2, p2

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_5f

    aget-object v3, p2, v0

    .line 1398
    const-string v4, "package-info.java"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1397
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1401
    :cond_16
    sget-object v4, Lorg/apache/tools/ant/taskdefs/Javac;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4, p1, v3}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    .line 1402
    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 1403
    const-string v5, "/package-info.java"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 1405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anomalous package-info.java path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    goto :goto_13

    .line 1408
    :cond_42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "/package-info.java"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1409
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Javac;->packageInfos:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1411
    :cond_5f
    return-void
.end method

.method private static resolveGroup(Ljava/lang/CharSequence;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1532
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v1

    move v3, v1

    .line 1535
    :goto_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v3, v1, :cond_34

    .line 1536
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1537
    sparse-switch v1, :sswitch_data_46

    move v1, v2

    .line 1535
    :goto_17
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_9

    .line 1542
    :sswitch_1b
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    .line 1543
    goto :goto_17

    .line 1539
    :sswitch_1f
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 1540
    goto :goto_17

    .line 1545
    :sswitch_23
    if-nez v0, :cond_44

    .line 1546
    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->expandGroups(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1547
    add-int/lit8 v2, v3, 0x1

    move v1, v2

    goto :goto_17

    .line 1552
    :cond_34
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->expandGroups(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1553
    return-object v4

    :cond_44
    move v1, v2

    goto :goto_17

    .line 1537
    :sswitch_data_46
    .sparse-switch
        0x2c -> :sswitch_23
        0x7b -> :sswitch_1f
        0x7d -> :sswitch_1b
    .end sparse-switch
.end method

.method private static resolveModuleSourcePathElement(Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 1462
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 1463
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->expandGroups(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1464
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javac;->findModules(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_d

    .line 1466
    :cond_21
    return-object v1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;)V
    .registers 4

    .line 1055
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    if-nez v0, :cond_7

    .line 1059
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    .line 1060
    return-void

    .line 1056
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can\'t have more than one compiler adapter"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkParameters()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1294
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1312
    :cond_10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1317
    :cond_1a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeAntRuntime:Ljava/lang/Boolean;

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "build.sysclasspath"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4d

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "warning: \'includeantruntime\' was not set, defaulting to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "build.sysclasspath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=last; set to false for repeatable builds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 1322
    :cond_4d
    return-void

    .line 1295
    :cond_4e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "modulesourcepath cannot be combined with srcdir attribute!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1298
    :cond_5a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1299
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 1303
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-nez v0, :cond_10

    .line 1304
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "modulesourcepath requires destdir attribute to be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1313
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destination directory \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist or is not a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1300
    :cond_a4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "modulesourcepath cannot be combined with srcdir or sourcepath !"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1308
    :cond_b0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "either srcdir or modulesourcepath attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected compile()V
    .registers 7

    const/4 v2, 0x0

    .line 1330
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompiler()Ljava/lang/String;

    move-result-object v3

    .line 1332
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v0, v0

    if-lez v0, :cond_7e

    .line 1333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Compiling "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " source file"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v0, v0

    const-string v1, ""

    const/4 v5, 0x1

    if-ne v0, v5, :cond_63

    const-string v0, ""

    :goto_29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-eqz v0, :cond_cc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1333
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    .line 1337
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->listFiles:Z

    if-eqz v0, :cond_66

    .line 1338
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v4, v1

    move v0, v2

    :goto_55
    if-ge v0, v4, :cond_66

    aget-object v5, v1, v0

    .line 1339
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    .line 1338
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 1334
    :cond_63
    const-string v0, "s"

    goto :goto_29

    .line 1344
    :cond_66
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    if-eqz v0, :cond_7f

    .line 1349
    :goto_6a
    invoke-interface {v0, p0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;->setJavac(Lorg/apache/tools/ant/taskdefs/Javac;)V

    .line 1352
    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;->execute()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1354
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->createMissingPackageInfoClass:Z

    if-eqz v0, :cond_7e

    .line 1356
    :try_start_77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    if-eqz v0, :cond_88

    :goto_7b
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->generateMissingPackageInfoClasses(Ljava/io/File;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7e} :catch_9a

    .line 1378
    :cond_7e
    :goto_7e
    return-void

    .line 1345
    :cond_7f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createCompilerClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-static {v3, p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;

    move-result-object v0

    goto :goto_6a

    .line 1359
    :cond_88
    :try_start_88
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_98} :catch_9a

    move-result-object v0

    goto :goto_7b

    .line 1360
    :catch_9a
    move-exception v0

    .line 1362
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1367
    :cond_a5
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->taskSuccess:Z

    .line 1368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->errorProperty:Ljava/lang/String;

    if-eqz v0, :cond_b6

    .line 1369
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->errorProperty:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_b6
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    if-nez v0, :cond_c0

    .line 1375
    const-string v0, "Compile failed; see the compiler error output for details."

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    goto :goto_7e

    .line 1373
    :cond_c0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Compile failed; see the compiler error output for details."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_cc
    move-object v0, v1

    goto/16 :goto_43
.end method

.method public createBootclasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 528
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 529
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 531
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 401
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 403
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createCompilerArg()Lorg/apache/tools/ant/taskdefs/Javac$ImplementationSpecificArgument;
    .registers 3

    .line 912
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javac$ImplementationSpecificArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javac$ImplementationSpecificArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Javac;)V

    .line 914
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->addImplementationArgument(Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)V

    .line 915
    return-object v0
.end method

.method public createCompilerClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 1045
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementationClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createExtdirs()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 569
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 570
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    .line 572
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createModulepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 442
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 443
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 445
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createModulesourcepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 359
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 360
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 362
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createSourcepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 317
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 318
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 320
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createSrc()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 219
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    .line 221
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 485
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 486
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 488
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1080
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->checkParameters()V

    .line 1081
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->resetFileLists()V

    .line 1085
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->hasPath(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1086
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->collectFileListFromSourcePath()V

    .line 1092
    :goto_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->compile()V

    .line 1093
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->updatedProperty:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->taskSuccess:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v0, v0

    if-eqz v0, :cond_2c

    .line 1096
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->updatedProperty:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_2c
    return-void

    .line 1088
    :cond_2d
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->collectFileListFromModulePath()V

    goto :goto_11
.end method

.method public getBootclasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 520
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 392
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getCompiler()Ljava/lang/String;
    .registers 4

    .line 1254
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    .line 1255
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->fork:Z

    if-eqz v1, :cond_10

    .line 1256
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->isJdkCompiler(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1257
    const-string v0, "extJavac"

    .line 1263
    :cond_10
    :goto_10
    return-object v0

    .line 1259
    :cond_11
    const-string v1, "Since compiler setting isn\'t classic or modern, ignoring fork setting."

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    goto :goto_10
.end method

.method public getCompilerVersion()Ljava/lang/String;
    .registers 4

    .line 1281
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "build.compiler"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setMagicValue(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCompilerArgs()[Ljava/lang/String;
    .registers 5

    .line 923
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getExplicitChoice()Ljava/lang/String;

    move-result-object v1

    .line 926
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompiler()Ljava/lang/String;

    move-result-object v0

    .line 927
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;

    move-result-object v0

    .line 931
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v2}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getAltCompilerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 933
    array-length v3, v0

    if-nez v3, :cond_2f

    if-eqz v2, :cond_2f

    .line 934
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_35

    move-result-object v0

    .line 938
    :cond_2f
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    return-object v0

    .line 941
    :catchall_35
    move-exception v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 942
    throw v0
.end method

.method public getDebug()Z
    .registers 2

    .line 701
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debug:Z

    return v0
.end method

.method public getDebugLevel()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debugLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getDepend()Z
    .registers 2

    .line 734
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->depend:Z

    return v0
.end method

.method public getDeprecation()Z
    .registers 2

    .line 630
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->deprecation:Z

    return v0
.end method

.method public getDestdir()Ljava/io/File;
    .registers 2

    .line 269
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 684
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutable()Ljava/lang/String;
    .registers 2

    .line 859
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    return-object v0
.end method

.method public getExtdirs()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 561
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getFailonerror()Z
    .registers 2

    .line 613
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    return v0
.end method

.method public getFileList()[Ljava/io/File;
    .registers 2

    .line 1208
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    return-object v0
.end method

.method public getIncludeantruntime()Z
    .registers 2

    .line 812
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeAntRuntime:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getIncludejavaruntime()Z
    .registers 2

    .line 829
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeJavaRuntime:Z

    return v0
.end method

.method public getJavacExecutable()Ljava/lang/String;
    .registers 2

    .line 883
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->isForkedJavac()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 884
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getSystemJavac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    .line 888
    :cond_10
    :goto_10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    return-object v0

    .line 885
    :cond_13
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->isForkedJavac()Z

    move-result v0

    if-nez v0, :cond_10

    .line 886
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    goto :goto_10
.end method

.method public getListfiles()Z
    .registers 2

    .line 588
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->listFiles:Z

    return v0
.end method

.method public getMemoryInitialSize()Ljava/lang/String;
    .registers 2

    .line 649
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->memoryInitialSize:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryMaximumSize()Ljava/lang/String;
    .registers 2

    .line 668
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->memoryMaximumSize:Ljava/lang/String;

    return-object v0
.end method

.method public getModulepath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 433
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getModulesourcepath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 350
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getNativeHeaderDir()Ljava/io/File;
    .registers 2

    .line 289
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nativeHeaderDir:Ljava/io/File;

    return-object v0
.end method

.method public getNowarn()Z
    .registers 2

    .line 904
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nowarn:Z

    return v0
.end method

.method public getOptimize()Z
    .registers 2

    .line 717
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->optimize:Z

    return v0
.end method

.method public getRelease()Ljava/lang/String;
    .registers 2

    .line 796
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 3

    .line 190
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->source:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    .line 191
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.build.javac.source"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getSourcepath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 309
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getSrcdir()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method protected getSystemJavac()Ljava/lang/String;
    .registers 2

    .line 1227
    const-string v0, "javac"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 3

    .line 768
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->targetAttribute:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    .line 770
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.build.javac.target"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getTaskSuccess()Z
    .registers 2

    .line 1034
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->taskSuccess:Z

    return v0
.end method

.method public getTempdir()Ljava/io/File;
    .registers 2

    .line 984
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->tmpDir:Ljava/io/File;

    return-object v0
.end method

.method public getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 476
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getVerbose()Z
    .registers 2

    .line 750
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->verbose:Z

    return v0
.end method

.method public isForkedJavac()Z
    .registers 2

    .line 867
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->fork:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompiler()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isForkedJavac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isIncludeDestClasses()Z
    .registers 2

    .line 1025
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeDestClasses:Z

    return v0
.end method

.method protected isJdkCompiler(Ljava/lang/String;)Z
    .registers 3

    .line 1220
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isJdkCompiler(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected recreateSrc()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    .line 231
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createSrc()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected resetFileLists()V
    .registers 2

    .line 1104
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    .line 1105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->packageInfos:Ljava/util/Map;

    .line 1106
    return-void
.end method

.method protected scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    .line 1117
    new-instance v2, Lorg/apache/tools/ant/util/GlobPatternMapper;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/GlobPatternMapper;-><init>()V

    .line 1119
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->findSupportedFileExtensions()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_c
    if-ge v0, v4, :cond_3e

    aget-object v5, v3, v0

    .line 1120
    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/util/GlobPatternMapper;->setFrom(Ljava/lang/String;)V

    .line 1121
    const-string v5, "*.class"

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/util/GlobPatternMapper;->setTo(Ljava/lang/String;)V

    .line 1122
    new-instance v5, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v5, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 1123
    invoke-virtual {v5, p3, p1, p2, v2}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrictAsFiles([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/io/File;

    move-result-object v5

    .line 1125
    array-length v6, v5

    if-lez v6, :cond_3b

    .line 1126
    invoke-direct {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/Javac;->lookForPackageInfos(Ljava/io/File;[Ljava/io/File;)V

    .line 1127
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v7, v6

    array-length v8, v5

    add-int/2addr v7, v8

    new-array v7, v7, [Ljava/io/File;

    .line 1129
    array-length v8, v6

    invoke-static {v6, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    array-length v6, v6

    array-length v8, v5

    invoke-static {v5, v1, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileList:[Ljava/io/File;

    .line 1119
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1136
    :cond_3e
    return-void
.end method

.method public setBootClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 539
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 540
    return-void
.end method

.method public setBootclasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 507
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 508
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 512
    :goto_6
    return-void

    .line 510
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 381
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 385
    :goto_6
    return-void

    .line 383
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 411
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 412
    return-void
.end method

.method public setCompiler(Ljava/lang/String;)V
    .registers 3

    .line 1236
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public setCreateMissingPackageInfoClass(Z)V
    .registers 2

    .line 1071
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->createMissingPackageInfoClass:Z

    .line 1072
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .line 693
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debug:Z

    .line 694
    return-void
.end method

.method public setDebugLevel(Ljava/lang/String;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->debugLevel:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setDepend(Z)V
    .registers 2

    .line 726
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->depend:Z

    .line 727
    return-void
.end method

.method public setDeprecation(Z)V
    .registers 2

    .line 622
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->deprecation:Z

    .line 623
    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->destDir:Ljava/io/File;

    .line 261
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 676
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->encoding:Ljava/lang/String;

    .line 677
    return-void
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .registers 2

    .line 1006
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->errorProperty:Ljava/lang/String;

    .line 1007
    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .registers 2

    .line 849
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->forkedExecutable:Ljava/lang/String;

    .line 850
    return-void
.end method

.method public setExtdirs(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 548
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 549
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->extdirs:Lorg/apache/tools/ant/types/Path;

    .line 553
    :goto_6
    return-void

    .line 551
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setFailonerror(Z)V
    .registers 2

    .line 597
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    .line 598
    return-void
.end method

.method public setFork(Z)V
    .registers 2

    .line 838
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->fork:Z

    .line 839
    return-void
.end method

.method public setIncludeDestClasses(Z)V
    .registers 2

    .line 1017
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeDestClasses:Z

    .line 1018
    return-void
.end method

.method public setIncludeantruntime(Z)V
    .registers 3

    .line 804
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeAntRuntime:Ljava/lang/Boolean;

    .line 805
    return-void
.end method

.method public setIncludejavaruntime(Z)V
    .registers 2

    .line 820
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->includeJavaRuntime:Z

    .line 821
    return-void
.end method

.method public setListfiles(Z)V
    .registers 2

    .line 580
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->listFiles:Z

    .line 581
    return-void
.end method

.method public setMemoryInitialSize(Ljava/lang/String;)V
    .registers 2

    .line 641
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->memoryInitialSize:Ljava/lang/String;

    .line 642
    return-void
.end method

.method public setMemoryMaximumSize(Ljava/lang/String;)V
    .registers 2

    .line 660
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->memoryMaximumSize:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public setModulepath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 420
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 421
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 425
    :goto_6
    return-void

    .line 423
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setModulepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 454
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 455
    return-void
.end method

.method public setModulesourcepath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 338
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 342
    :goto_6
    return-void

    .line 340
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setModulesourcepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 371
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createModulesourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 372
    return-void
.end method

.method public setNativeHeaderDir(Ljava/io/File;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nativeHeaderDir:Ljava/io/File;

    .line 280
    return-void
.end method

.method public setNowarn(Z)V
    .registers 2

    .line 896
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->nowarn:Z

    .line 897
    return-void
.end method

.method public setOptimize(Z)V
    .registers 2

    .line 709
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->optimize:Z

    .line 710
    return-void
.end method

.method public setProceed(Z)V
    .registers 3

    .line 605
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->failOnError:Z

    .line 606
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .registers 2

    .line 784
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->release:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->source:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSourcepath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 297
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 298
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 302
    :goto_6
    return-void

    .line 300
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setSourcepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 328
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createSourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 329
    return-void
.end method

.method public setSrcdir(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 239
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 240
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->src:Lorg/apache/tools/ant/types/Path;

    .line 244
    :goto_6
    return-void

    .line 242
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2

    .line 760
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->targetAttribute:Ljava/lang/String;

    .line 761
    return-void
.end method

.method public setTempdir(Ljava/io/File;)V
    .registers 2

    .line 974
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->tmpDir:Ljava/io/File;

    .line 975
    return-void
.end method

.method public setUpdatedProperty(Ljava/lang/String;)V
    .registers 2

    .line 995
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->updatedProperty:Ljava/lang/String;

    .line 996
    return-void
.end method

.method public setUpgrademodulepath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 464
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 468
    :goto_6
    return-void

    .line 466
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setUpgrademodulepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 497
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javac;->createUpgrademodulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 498
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 742
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javac;->verbose:Z

    .line 743
    return-void
.end method
