.class public Lorg/apache/tools/ant/types/resources/ResourceList;
.super Lorg/apache/tools/ant/types/DataType;
.source "ResourceList.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# instance fields
.field private baseDir:Ljava/io/File;

.field private cachedResources:Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;

.field private encoding:Ljava/lang/String;

.field private final filterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private preserveDuplicates:Z

.field private final textDocuments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Juk_xI3OaaJYfxLYmT8RHmhvGlc(Lorg/apache/tools/ant/types/resources/ResourceList;Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceList;->parse(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Xr0kFv5mAU_npKC-a8Y9Iw00qMc(Lorg/apache/tools/ant/types/resources/ResourceList;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceList;->read(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->filterChains:Ljava/util/Vector;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->textDocuments:Ljava/util/ArrayList;

    .line 50
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->cachedResources:Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;

    .line 51
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->encoding:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->preserveDuplicates:Z

    return-void
.end method

.method private cache()Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 4

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->cachedResources:Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->dieOnCircularReference()V

    .line 237
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->newResourceCollection()Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->cachedResources:Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->textDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/types/resources/ResourceList;)V

    .line 239
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->cachedResources:Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->cachedResources:Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/ResourceList;
    .registers 2

    .line 219
    const-class v0, Lorg/apache/tools/ant/types/resources/ResourceList;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceList;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/ResourceList;

    return-object v0
.end method

.method private newResourceCollection()Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;
    .registers 3

    const/4 v1, 0x1

    .line 223
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->preserveDuplicates:Z

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    .line 225
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 230
    :goto_0
    return-object v0

    .line 228
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 229
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Union;->setCache(Z)V

    goto :goto_0
.end method

.method private open(Lorg/apache/tools/ant/types/Resource;)Ljava/io/Reader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v1, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 257
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 259
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 257
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 260
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->filterChains:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 261
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 262
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .registers 5

    .line 266
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/PropertyHelper;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    instance-of v1, v0, Lorg/apache/tools/ant/types/Resource;

    if-eqz v1, :cond_0

    .line 270
    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 289
    :goto_0
    return-object v0

    .line 272
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/URLResource;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/URLResource;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 284
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->baseDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 285
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->baseDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;->setProject(Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 289
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private read(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 6

    .line 245
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceList;->open(Lorg/apache/tools/ant/types/Resource;)Ljava/io/Reader;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->newResourceCollection()Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;

    move-result-object v0

    .line 247
    invoke-virtual {v1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/resources/ResourceList;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 245
    :catchall_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 61
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->textDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceList;->setChecked(Z)V

    .line 66
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public final addFilterChain(Lorg/apache/tools/ant/types/FilterChain;)V
    .registers 3

    .line 74
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->filterChains:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceList;->setChecked(Z)V

    .line 79
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isChecked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    monitor-exit p0

    .line 216
    :goto_0
    return-void

    .line 203
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 206
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->textDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 207
    instance-of v2, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_2

    .line 208
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/ResourceList;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->filterChains:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FilterChain;

    .line 212
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/ResourceList;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_3

    .line 214
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceList;->setChecked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    monitor-enter p0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->getRef()Lorg/apache/tools/ant/types/resources/ResourceList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isFilesystemOnly()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 186
    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->cache()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->getRef()Lorg/apache/tools/ant/types/resources/ResourceList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ResourceList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->cache()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setBasedir(Ljava/io/File;)V
    .registers 3

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->baseDir:Ljava/io/File;

    .line 113
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->encoding:Ljava/lang/String;

    .line 98
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public final setPreserveDuplicates(Z)V
    .registers 3

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->preserveDuplicates:Z

    .line 129
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->encoding:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->filterChains:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList;->textDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 146
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .registers 2

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->getRef()Lorg/apache/tools/ant/types/resources/ResourceList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ResourceList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 173
    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceList;->cache()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
