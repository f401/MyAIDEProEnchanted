.class public abstract Lorg/apache/tools/ant/types/resources/ResourceDecorator;
.super Lorg/apache/tools/ant/types/Resource;
.source "ResourceDecorator.java"


# instance fields
.field private resource:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 60
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->checkChildrenAllowed()V

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_27

    .line 65
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->setChecked(Z)V

    .line 70
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    .line 71
    return-void

    .line 66
    :cond_1f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only single argument resource collections are supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_27
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "you must not specify more than one resource"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 39
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tools/ant/types/Resource;)I
    .registers 4

    .line 181
    if-ne p1, p0, :cond_4

    .line 182
    const/4 v0, 0x0

    .line 188
    :goto_3
    return v0

    .line 184
    :cond_4
    instance-of v0, p1, Lorg/apache/tools/ant/types/resources/ResourceDecorator;

    if-eqz v0, :cond_17

    .line 185
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    check-cast p1, Lorg/apache/tools/ant/types/resources/ResourceDecorator;

    .line 186
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    goto :goto_3

    .line 188
    :cond_17
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    goto :goto_3
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 4
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

    .line 223
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    :goto_6
    return-void

    .line 226
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 227
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/Resource;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_6

    .line 229
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->setChecked(Z)V

    goto :goto_6
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .line 99
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected final getResource()Lorg/apache/tools/ant/types/Resource;
    .registers 3

    .line 207
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 208
    const-class v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 214
    :goto_e
    return-object v0

    .line 210
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_19

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->dieOnCircularReference()V

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    goto :goto_e

    .line 211
    :cond_19
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "no resource specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()J
    .registers 3

    .line 118
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public isDirectory()Z
    .registers 2

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isExists()Z
    .registers 2

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 153
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setDirectory(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "you can\'t change the directory state of a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setExists(Z)V
    .registers 4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "you can\'t change the exists state of a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setLastModified(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "you can\'t change the timestamp of a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "you can\'t change the name of a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_8

    .line 165
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 166
    return-void

    .line 163
    :cond_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setSize(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "you can\'t change the size of a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
