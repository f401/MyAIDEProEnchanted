.class public Lorg/apache/tools/ant/types/resources/MappedResource;
.super Lorg/apache/tools/ant/types/resources/ResourceDecorator;
.source "MappedResource.java"


# instance fields
.field private final mapper:Lorg/apache/tools/ant/util/FileNameMapper;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 43
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/MappedResource;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 44
    return-void
.end method


# virtual methods
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

    .line 77
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    check-cast p1, Lorg/apache/tools/ant/types/resources/MappedResource;

    .line 102
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->getName()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/MappedResource;->getName()Ljava/lang/String;

    move-result-object v2

    .line 104
    if-nez v1, :cond_2

    if-nez v2, :cond_0

    .line 105
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/MappedResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->isReference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResource;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-interface {v1, v0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    .line 87
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResource;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 110
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResource;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
