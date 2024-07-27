.class public Lorg/apache/tools/ant/taskdefs/LoadProperties;
.super Lorg/apache/tools/ant/Task;
.source "LoadProperties.java"


# instance fields
.field private encoding:Ljava/lang/String;

.field private final filterChains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private prefixValues:Z

.field private src:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 55
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->filterChains:Ljava/util/List;

    .line 65
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->encoding:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefix:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefixValues:Z

    return-void
.end method

.method private getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;
    .registers 3

    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/JavaResource;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    check-cast v0, Lorg/apache/tools/ant/types/resources/JavaResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 234
    :cond_1
    :try_start_1
    instance-of v0, v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "expected a java resource as source"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    .line 223
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 227
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 224
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only single-element resource collections are supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_1
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only a single source is supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final addFilterChain(Lorg/apache/tools/ant/types/FilterChain;)V
    .registers 3

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->filterChains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 119
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/JavaResource;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public final execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_7

    .line 169
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    instance-of v0, v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->log(Ljava/lang/String;I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source resource does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->encoding:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 180
    :goto_1
    :try_start_0
    new-instance v1, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    .line 181
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->filterChains:Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/Reader;Ljava/lang/Iterable;)V

    .line 182
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->readFully()Ljava/lang/String;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 187
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 191
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 192
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 193
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 195
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Property;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Property;-><init>()V

    .line 196
    invoke-virtual {v2, p0}, Lorg/apache/tools/ant/taskdefs/Property;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    .line 197
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Property;->setPrefix(Ljava/lang/String;)V

    .line 198
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefixValues:Z

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Property;->setPrefixValues(Z)V

    .line 199
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/taskdefs/Property;->addProperties(Ljava/util/Properties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_4
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 178
    :cond_5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_1

    .line 180
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 167
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A source resource is required."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 136
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 111
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 112
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 128
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    .line 129
    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->encoding:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefix:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPrefixValues(Z)V
    .registers 2

    .line 155
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefixValues:Z

    .line 156
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->setName(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public final setSrcFile(Ljava/io/File;)V
    .registers 3

    .line 79
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 80
    return-void
.end method
