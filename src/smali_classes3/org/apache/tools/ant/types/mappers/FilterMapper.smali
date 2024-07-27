.class public Lorg/apache/tools/ant/types/mappers/FilterMapper;
.super Lorg/apache/tools/ant/types/FilterChain;
.source "FilterMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v2, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 75
    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    .line 76
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/mappers/FilterMapper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 78
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 79
    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 81
    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    throw v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 5

    .line 46
    new-instance v0, Lorg/apache/tools/ant/UnsupportedAttributeException;

    const-string v1, "filtermapper doesn\'t support the \"from\" attribute."

    const-string v2, "from"

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 5

    .line 57
    new-instance v0, Lorg/apache/tools/ant/UnsupportedAttributeException;

    const-string v1, "filtermapper doesn\'t support the \"to\" attribute."

    const-string v2, "to"

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
