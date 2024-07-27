.class public Lorg/apache/tools/ant/types/resources/PropertyResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "PropertyResource.java"


# static fields
.field private static final PROPERTY_MAGIC:I

.field private static final UNSET:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-string v0, "PropertyResource"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/resources/PropertyResource;->PROPERTY_MAGIC:I

    .line 41
    new-instance v0, Lorg/apache/tools/ant/types/resources/PropertyResource$1;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/PropertyResource$1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/resources/PropertyResource;->UNSET:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .registers 3

    .line 60
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/PropertyResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 123
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReferenceOrProxy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getReferencedOrProxied()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReferenceOrProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getReferencedOrProxied()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    .line 163
    if-nez v1, :cond_1

    sget-object v0, Lorg/apache/tools/ant/types/resources/PropertyResource;->UNSET:Ljava/io/InputStream;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .registers 3

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getRef()Lorg/apache/tools/ant/types/resources/PropertyResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 86
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReferenceOrProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getReferencedOrProxied()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lorg/apache/tools/ant/util/PropertyOutputStream;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/util/PropertyOutputStream;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getRef()Lorg/apache/tools/ant/types/resources/PropertyResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/PropertyResource;
    .registers 2

    .line 214
    const-class v0, Lorg/apache/tools/ant/types/resources/PropertyResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/PropertyResource;

    return-object v0
.end method

.method protected getReferencedOrProxied()Lorg/apache/tools/ant/types/Resource;
    .registers 3

    .line 201
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 205
    instance-of v1, v0, Lorg/apache/tools/ant/types/Resource;

    if-eqz v1, :cond_1

    .line 206
    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This PropertyResource does not reference or proxy another Resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()J
    .registers 3

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReferenceOrProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getReferencedOrProxied()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    .line 112
    :goto_0
    return-wide v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .registers 3

    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getRef()Lorg/apache/tools/ant/types/resources/PropertyResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 73
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReferenceOrProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getReferencedOrProxied()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v0

    sget v1, Lorg/apache/tools/ant/types/resources/PropertyResource;->PROPERTY_MAGIC:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public isExists()Z
    .registers 2

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReferenceOrProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getReferencedOrProxied()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReferenceOrProxy()Z
    .registers 2

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->isReferenceOrProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getReferencedOrProxied()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
