.class public final Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;
.super Ljava/lang/Object;
.source "ExtensionUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static addExtension(Ljava/util/List;Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;ZZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            "ZZ)V"
        }
    .end annotation

    const/4 v7, 0x0

    .line 143
    .line 144
    if-nez p3, :cond_2f

    .line 145
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 146
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtensionName()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendor()Ljava/lang/String;

    move-result-object v5

    .line 152
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendorID()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 156
    :cond_2f
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    .line 158
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    if-nez v0, :cond_47

    .line 159
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendorID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    .line 160
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    :cond_47
    const/4 v0, 0x1

    .line 162
    :goto_48
    if-nez p2, :cond_68

    if-eqz v0, :cond_68

    .line 163
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtensionName()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v6

    .line 170
    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationURL()Ljava/lang/String;

    move-result-object v10

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v3 .. v10}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    .line 173
    :cond_68
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void

    .line 160
    :cond_6c
    const/4 v0, 0x0

    goto :goto_48
.end method

.method static extractExtensions(Lorg/apache/tools/ant/Project;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 69
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 70
    invoke-static {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->getExtensions(Lorg/apache/tools/ant/Project;Ljava/util/List;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 72
    :cond_d
    return-void
.end method

.method private static getExtensions(Lorg/apache/tools/ant/Project;Ljava/util/List;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;)[",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 84
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 90
    instance-of v1, v0, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;

    if-eqz v1, :cond_4c

    move-object v1, v0

    .line 91
    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;

    .line 92
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->isIncludeImpl()Z

    move-result v3

    .line 93
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->isIncludeURL()Z

    move-result v1

    .line 96
    :goto_26
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getBasedir()Ljava/io/File;

    move-result-object v7

    .line 98
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v0, v4

    :goto_34
    if-ge v0, v9, :cond_b

    aget-object v10, v8, v0

    .line 99
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-static {v11, v5, v3, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->loadExtensions(Ljava/io/File;Ljava/util/List;ZZ)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 103
    :cond_43
    new-array v0, v4, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    return-object v0

    :cond_4c
    move v1, v2

    move v3, v2

    goto :goto_26
.end method

.method static getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 186
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_22

    .line 187
    :try_start_5
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1d

    move-result-object v0

    .line 188
    if-eqz v0, :cond_f

    .line 191
    :try_start_b
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_22

    return-object v0

    .line 189
    :cond_f
    :try_start_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "%s doesn\'t have a MANIFEST"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1d

    .line 186
    :catchall_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2d

    :goto_21
    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_22} :catch_22

    .line 192
    :catch_22
    move-exception v0

    .line 193
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :catchall_2d
    move-exception v1

    goto :goto_21
.end method

.method private static loadExtensions(Ljava/io/File;Ljava/util/List;ZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 118
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_22

    .line 119
    :try_start_5
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getAvailable(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v2

    array-length v3, v2
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1d

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 121
    :try_start_13
    invoke-static {p1, v4, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->addExtension(Ljava/util/List;Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;ZZ)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 123
    :cond_19
    :try_start_19
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_22

    .line 125
    return-void

    .line 118
    :catchall_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2d

    :goto_21
    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_22} :catch_22

    .line 123
    :catch_22
    move-exception v0

    .line 124
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 118
    :catchall_2d
    move-exception v1

    goto :goto_21
.end method

.method static toExtensions(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 54
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil$$ExternalSyntheticLambda1;

    .line 55
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 54
    return-object v0
.end method
