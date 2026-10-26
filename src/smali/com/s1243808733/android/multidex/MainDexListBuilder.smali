.class public Lcom/s1243808733/android/multidex/MainDexListBuilder;
.super Ljava/lang/Object;
.source "MainDexListBuilder.java"


# static fields
.field private static final CLASS_EXTENSION:Ljava/lang/String; = ".class"

.field private static final DISABLE_ANNOTATION_RESOLUTION_WORKAROUND:Ljava/lang/String; = "--disable-annotation-resolution-workaround"

.field private static final EOL:Ljava/lang/String;

.field private static final STATUS_ERROR:I = 0x1

.field private static final USAGE_MESSAGE:Ljava/lang/String;


# instance fields
.field private filesToKeep:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/multidex/MainDexListBuilder;->EOL:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Usage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Short version: Don\'t use this."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Slightly longer version: This tool is used by mainDexClasses script to build"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "the main dex list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/multidex/MainDexListBuilder;->USAGE_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    .line 107
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 112
    :try_start_1
    new-instance v1, Lcom/s1243808733/android/multidex/Path;

    invoke-direct {v1, p3}, Lcom/s1243808733/android/multidex/Path;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    new-instance v0, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;-><init>(Lcom/s1243808733/android/multidex/Path;)V

    .line 115
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->addRoots(Ljava/util/zip/ZipFile;)V

    .line 116
    invoke-virtual {v0}, Lcom/s1243808733/android/multidex/ClassReferenceListBuilder;->getClassNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/s1243808733/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v2

    move-object v0, v1

    :goto_1
    move-object v4, v0

    .line 124
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    if-eqz v4, :cond_2

    .line 129
    iget-object v0, v4, Lcom/s1243808733/android/multidex/Path;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/multidex/ClassPathElement;

    .line 131
    :try_start_4
    invoke-interface {v0}, Lcom/s1243808733/android/multidex/ClassPathElement;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    .line 117
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    :try_start_5
    invoke-direct {p0, v1}, Lcom/s1243808733/android/multidex/MainDexListBuilder;->keepAnnotated(Lcom/s1243808733/android/multidex/Path;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 129
    :goto_5
    iget-object v0, v1, Lcom/s1243808733/android/multidex/Path;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/multidex/ClassPathElement;

    .line 131
    :try_start_7
    invoke-interface {v0}, Lcom/s1243808733/android/multidex/ClassPathElement;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 109
    :try_start_8
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" can not be read as a zip archive. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 131
    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v2, v1

    goto :goto_2

    .line 137
    :cond_2
    throw v2

    :catch_3
    move-exception v0

    goto :goto_5

    .line 124
    :catch_4
    move-exception v0

    goto :goto_3

    .line 131
    :cond_3
    return-void
.end method

.method private hasRuntimeVisibleAnnotation(Lcom/s1243808733/android/dx/cf/iface/HasAttribute;)Z
    .locals 2

    .line 190
    invoke-interface {p1}, Lcom/s1243808733/android/dx/cf/iface/HasAttribute;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepAnnotated(Lcom/s1243808733/android/multidex/Path;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 161
    invoke-virtual {p1}, Lcom/s1243808733/android/multidex/Path;->getElements()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/multidex/ClassPathElement;

    .line 163
    invoke-interface {v0}, Lcom/s1243808733/android/multidex/ClassPathElement;->list()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/multidex/Path;->getClass(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    move-result-object v5

    .line 166
    invoke-direct {p0, v5}, Lcom/s1243808733/android/multidex/MainDexListBuilder;->hasRuntimeVisibleAnnotation(Lcom/s1243808733/android/dx/cf/iface/HasAttribute;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/s1243808733/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v6

    move v1, v2

    .line 170
    :goto_1
    invoke-interface {v6}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 171
    invoke-interface {v6, v1}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Method;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/s1243808733/android/multidex/MainDexListBuilder;->hasRuntimeVisibleAnnotation(Lcom/s1243808733/android/dx/cf/iface/HasAttribute;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 172
    iget-object v1, p0, Lcom/s1243808733/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;

    move-result-object v5

    move v1, v2

    .line 177
    :goto_2
    invoke-interface {v5}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 178
    invoke-interface {v5, v1}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Field;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/s1243808733/android/multidex/MainDexListBuilder;->hasRuntimeVisibleAnnotation(Lcom/s1243808733/android/dx/cf/iface/HasAttribute;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 179
    iget-object v1, p0, Lcom/s1243808733/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    move v0, v1

    move v2, v3

    .line 74
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v2, v4, :cond_1

    .line 75
    aget-object v4, p0, v2

    const-string v5, "--disable-annotation-resolution-workaround"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 80
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid option "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/s1243808733/android/multidex/MainDexListBuilder;->printUsage()V

    .line 80
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 84
    :cond_1
    array-length v3, p0

    sub-int/2addr v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 85
    invoke-static {}, Lcom/s1243808733/android/multidex/MainDexListBuilder;->printUsage()V

    .line 86
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 90
    :cond_2
    :try_start_0
    new-instance v3, Lcom/s1243808733/android/multidex/MainDexListBuilder;

    aget-object v4, p0, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v3, v0, v4, v2}, Lcom/s1243808733/android/multidex/MainDexListBuilder;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Lcom/s1243808733/android/multidex/MainDexListBuilder;->getMainDexList()Ljava/util/Set;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/s1243808733/android/multidex/MainDexListBuilder;->printList(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_2
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A fatal error occured: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_2
.end method

.method private static printList(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static printUsage()V
    .locals 2

    .line 148
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/s1243808733/android/multidex/MainDexListBuilder;->USAGE_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMainDexList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/multidex/MainDexListBuilder;->filesToKeep:Ljava/util/Set;

    return-object v0
.end method
