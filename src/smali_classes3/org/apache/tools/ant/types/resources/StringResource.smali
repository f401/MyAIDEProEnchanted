.class public Lorg/apache/tools/ant/types/resources/StringResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "StringResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final STRING_MAGIC:I


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-string v0, "StringResource"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/resources/StringResource;->STRING_MAGIC:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 43
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/resources/StringResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 43
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/StringResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 67
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/resources/StringResource;->setValue(Ljava/lang/String;)V

    .line 68
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/resources/StringResource;)Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->checkChildrenAllowed()V

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/StringResource;->setValue(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method protected getContent()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 197
    :goto_0
    return-object v0

    .line 193
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_2

    .line 197
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object v1, v0

    :goto_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    monitor-exit p0

    goto :goto_0

    .line 198
    :cond_1
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unset string value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;-><init>(Lorg/apache/tools/ant/types/resources/StringResource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    .line 215
    :cond_1
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/StringResource;
    .registers 2

    .line 242
    const-class v0, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/StringResource;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    .line 153
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .registers 3

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 166
    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v0

    sget v1, Lorg/apache/tools/ant/types/resources/StringResource;->STRING_MAGIC:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    mul-int/2addr v0, v1

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isExists()Z
    .registers 2

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->checkAttributesAllowed()V

    .line 134
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 4

    .line 226
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    const-string v1, "UTF-8"

    if-ne v0, v1, :cond_0

    .line 229
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 230
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/StringResource;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 177
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
