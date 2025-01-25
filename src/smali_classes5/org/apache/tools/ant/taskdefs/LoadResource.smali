.class public Lorg/apache/tools/ant/taskdefs/LoadResource;
.super Lorg/apache/tools/ant/Task;
.source "LoadResource.java"


# instance fields
.field private encoding:Ljava/lang/String;

.field private failOnError:Z

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

.field private property:Ljava/lang/String;

.field private quiet:Z

.field private src:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    .line 62
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->encoding:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->filterChains:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 214
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 218
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    .line 219
    return-void

    .line 215
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only single argument resource collections are supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addFilterChain(Lorg/apache/tools/ant/types/FilterChain;)V
    .registers 3

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->filterChains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public final execute()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 130
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    if-eqz v2, :cond_18f

    .line 133
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    if-eqz v3, :cond_187

    .line 136
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz v3, :cond_12

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    if-nez v3, :cond_35

    .line 139
    :cond_12
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-nez v2, :cond_43

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    if-nez v1, :cond_3d

    .line 144
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    .line 198
    :cond_34
    :goto_34
    return-void

    .line 137
    :cond_35
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "quiet and failonerror cannot both be set to true"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_3d
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    .line 151
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->encoding:Ljava/lang/String;

    if-nez v2, :cond_12f

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    move-object v3, v2

    .line 154
    :goto_6c
    :try_start_6c
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v4

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resource size = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-eqz v2, :cond_136

    .line 156
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_86
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    const/4 v6, 0x4

    invoke-virtual {p0, v2, v6}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    .line 158
    long-to-int v2, v4

    .line 162
    if-eqz v2, :cond_153

    .line 163
    new-instance v4, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    .line 166
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->filterChains:Ljava/util/List;

    invoke-direct {v4, v5, v6, v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/Reader;Ljava/lang/Iterable;)V

    new-instance v3, Lorg/apache/tools/ant/taskdefs/LoadResource$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lorg/apache/tools/ant/taskdefs/LoadResource$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/LoadResource;I)V

    .line 167
    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->with(Ljava/util/function/Consumer;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_bb} :catch_110
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_6c .. :try_end_bb} :catch_141

    move-result-object v3

    .line 173
    :try_start_bc
    invoke-virtual {v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->readFully()Ljava/lang/String;
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_13a

    move-result-object v2

    .line 174
    if-eqz v3, :cond_c5

    :try_start_c2
    invoke-virtual {v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->close()V

    .line 181
    :cond_c5
    :goto_c5
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_10e} :catch_110
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_c2 .. :try_end_10e} :catch_141

    goto/16 :goto_34

    .line 187
    :catch_110
    move-exception v2

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    if-nez v4, :cond_17d

    .line 192
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz v2, :cond_17b

    :goto_12a
    invoke-virtual {p0, v3, v0}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    goto/16 :goto_34

    .line 152
    :cond_12f
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_6c

    .line 156
    :cond_136
    const-string v2, "unknown"

    goto/16 :goto_86

    .line 163
    :catchall_13a
    move-exception v2

    if-eqz v3, :cond_140

    :try_start_13d
    invoke-virtual {v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->close()V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_197

    :cond_140
    :goto_140
    :try_start_140
    throw v2
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_141} :catch_110
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_140 .. :try_end_141} :catch_141

    .line 193
    :catch_141
    move-exception v2

    .line 194
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    if-nez v3, :cond_17a

    .line 197
    invoke-virtual {v2}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz v3, :cond_178

    :goto_14e
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    goto/16 :goto_34

    .line 176
    :cond_153
    :try_start_153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not set property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as its length is 0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz v2, :cond_176

    move v2, v0

    .line 176
    :goto_170
    invoke-virtual {p0, v3, v2}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_173} :catch_110
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_153 .. :try_end_173} :catch_141

    .line 178
    const/4 v2, 0x0

    goto/16 :goto_c5

    .line 177
    :cond_176
    const/4 v2, 0x2

    goto :goto_170

    :cond_178
    move v0, v1

    .line 197
    goto :goto_14e

    .line 195
    :cond_17a
    throw v2

    :cond_17b
    move v0, v1

    .line 192
    goto :goto_12a

    .line 190
    :cond_17d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadResource;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 134
    :cond_187
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "output property not defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_18f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "source resource not defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :catchall_197
    move-exception v3

    goto :goto_140
.end method

.method public synthetic lambda$execute$0$LoadResource(ILorg/apache/tools/ant/filters/util/ChainReaderHelper;)V
    .registers 7

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 169
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    .line 171
    :cond_f
    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->encoding:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final setFailonerror(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    .line 107
    return-void
.end method

.method public final setProperty(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setQuiet(Z)V
    .registers 3

    .line 115
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    .line 116
    if-eqz p1, :cond_7

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    .line 119
    :cond_7
    return-void
.end method
