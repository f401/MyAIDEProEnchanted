.class public final Lorg/apache/tools/ant/filters/ReplaceTokens;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "ReplaceTokens.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/filters/ReplaceTokens$Token;
    }
.end annotation


# static fields
.field private static final DEFAULT_BEGIN_TOKEN:Ljava/lang/String; = "@"

.field private static final DEFAULT_END_TOKEN:Ljava/lang/String; = "@"


# instance fields
.field private beginToken:Ljava/lang/String;

.field private endToken:Ljava/lang/String;

.field private hash:Ljava/util/Hashtable;
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

.field private readBuffer:Ljava/lang/String;

.field private replaceData:Ljava/lang/String;

.field private replaceIndex:I

.field private final resolvedTokens:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedTokensBuilt:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    .line 79
    const-string v0, "@"

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    .line 82
    const-string v0, "@"

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    .line 79
    const-string v0, "@"

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    .line 82
    const-string v0, "@"

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private getBeginToken()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    return-object v0
.end method

.method private getEndToken()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    return-object v0
.end method

.method private getFirstCharacterFromReadBuffer()I
    .registers 4

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 172
    const/4 v0, -0x1

    .line 177
    :goto_9
    return v0

    .line 175
    :cond_a
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 176
    iget-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    goto :goto_9
.end method

.method private getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;
    .registers 8

    const/4 v2, 0x0

    .line 244
    .line 245
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 247
    :try_start_6
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_11
    .catchall {:try_start_6 .. :try_end_9} :catchall_43

    move-result-object v0

    .line 248
    :try_start_a
    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_41
    .catchall {:try_start_a .. :try_end_d} :catchall_37

    .line 256
    :goto_d
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 259
    return-object v3

    .line 249
    :catch_11
    move-exception v1

    move-object v0, v2

    .line 250
    :goto_13
    :try_start_13
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 251
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProperties failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_37

    goto :goto_d

    .line 256
    :catchall_37
    move-exception v1

    move-object v2, v0

    :goto_39
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 257
    throw v1

    .line 253
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_37

    goto :goto_d

    .line 249
    :catch_41
    move-exception v1

    goto :goto_13

    .line 256
    :catchall_43
    move-exception v0

    move-object v1, v0

    goto :goto_39
.end method

.method private getTokens()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    return-object v0
.end method

.method private initialize()V
    .registers 7

    .line 305
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_6e

    .line 307
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_6e

    aget-object v3, v1, v0

    .line 308
    if-eqz v3, :cond_2c

    .line 309
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v4

    .line 310
    const-string v5, "tokenchar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 311
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 312
    const-string v5, "begintoken"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 313
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    .line 307
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 314
    :cond_2f
    const-string v5, "endtoken"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 315
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    goto :goto_2c

    .line 317
    :cond_3e
    const-string v5, "token"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 318
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 320
    iget-object v5, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 321
    :cond_54
    const-string v5, "propertiesfile"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 322
    new-instance v4, Lorg/apache/tools/ant/types/resources/FileResource;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/filters/ReplaceTokens;->makeTokensFromProperties(Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_2c

    .line 328
    :cond_6e
    return-void
.end method

.method private makeTokensFromProperties(Lorg/apache/tools/ant/types/Resource;)V
    .registers 5

    .line 331
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/filters/ReplaceTokens$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/apache/tools/ant/filters/ReplaceTokens$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/filters/ReplaceTokens;Ljava/util/Properties;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 333
    return-void
.end method

.method private setTokens(Ljava/util/Hashtable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    .line 270
    return-void
.end method


# virtual methods
.method public addConfiguredToken(Lorg/apache/tools/ant/filters/ReplaceTokens$Token;)V
    .registers 5

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/ReplaceTokens$Token;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/ReplaceTokens$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    .line 236
    return-void
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 293
    new-instance v0, Lorg/apache/tools/ant/filters/ReplaceTokens;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;-><init>(Ljava/io/Reader;)V

    .line 294
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getBeginToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setBeginToken(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getEndToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setEndToken(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getTokens()Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setTokens(Ljava/util/Hashtable;)V

    .line 297
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setInitialized(Z)V

    .line 298
    return-object v0
.end method

.method public synthetic lambda$makeTokensFromProperties$0$ReplaceTokens(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5

    .line 332
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 114
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->initialize()V

    .line 115
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setInitialized(Z)V

    .line 118
    :cond_e
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    if-nez v0, :cond_52

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    iget-object v3, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 123
    :cond_50
    iput-boolean v6, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    .line 127
    :cond_52
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    if-eqz v0, :cond_6e

    .line 128
    iget v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_6b

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    iget v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 161
    :cond_6a
    :goto_6a
    return v0

    .line 131
    :cond_6b
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    .line 136
    :cond_6e
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 138
    if-eq v0, v5, :cond_6a

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    .line 146
    :cond_92
    :goto_92
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 148
    :cond_ae
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getFirstCharacterFromReadBuffer()I

    move-result v0

    goto :goto_6a

    .line 149
    :cond_b3
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->read()I

    move-result v0

    goto :goto_6a

    .line 157
    :cond_d7
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 158
    if-eq v0, v5, :cond_f4

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    goto :goto_92

    .line 161
    :cond_f4
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getFirstCharacterFromReadBuffer()I

    move-result v0

    goto/16 :goto_6a
.end method

.method public setBeginToken(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setEndToken(Ljava/lang/String;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setPropertiesResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 2

    .line 224
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->makeTokensFromProperties(Lorg/apache/tools/ant/types/Resource;)V

    .line 225
    return-void
.end method
