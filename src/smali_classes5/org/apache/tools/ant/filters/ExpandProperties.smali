.class public final Lorg/apache/tools/ant/filters/ExpandProperties;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "ExpandProperties.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final EOF:I = -0x1


# instance fields
.field private buffer:[C

.field private index:I

.field private propertySet:Lorg/apache/tools/ant/types/PropertySet;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    .line 66
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 4

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->propertySet:Lorg/apache/tools/ant/types/PropertySet;

    if-nez v0, :cond_7

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->propertySet:Lorg/apache/tools/ant/types/PropertySet;

    .line 77
    return-void

    .line 74
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "expandproperties filter accepts only one propertyset"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 129
    new-instance v0, Lorg/apache/tools/ant/filters/ExpandProperties;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/ExpandProperties;-><init>(Ljava/io/Reader;)V

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ExpandProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/ExpandProperties;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 131
    iget-object v1, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->propertySet:Lorg/apache/tools/ant/types/PropertySet;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/ExpandProperties;->add(Lorg/apache/tools/ant/types/PropertySet;)V

    .line 132
    return-object v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    .line 92
    iget v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->index:I

    if-le v0, v1, :cond_57

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->buffer:[C

    if-nez v0, :cond_31

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ExpandProperties;->readFully()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ExpandProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->propertySet:Lorg/apache/tools/ant/types/PropertySet;

    if-nez v0, :cond_3f

    .line 98
    invoke-static {v3}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 102
    :goto_19
    invoke-static {v3}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v4

    .line 104
    new-instance v5, Lorg/apache/tools/ant/property/ParseProperties;

    invoke-virtual {v4}, Lorg/apache/tools/ant/PropertyHelper;->getExpanders()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v5, v3, v4, v0}, Lorg/apache/tools/ant/property/ParseProperties;-><init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V

    .line 106
    invoke-virtual {v5, v2}, Lorg/apache/tools/ant/property/ParseProperties;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    if-nez v0, :cond_4c

    const/4 v0, 0x0

    new-array v0, v0, [C

    .line 108
    :goto_2f
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->buffer:[C

    .line 110
    :cond_31
    iget v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->index:I

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->buffer:[C

    array-length v3, v2

    if-ge v0, v3, :cond_55

    .line 111
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->index:I

    aget-char v0, v2, v0

    .line 115
    :goto_3e
    return v0

    .line 100
    :cond_3f
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PropertySet;->getProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;

    invoke-direct {v0, v4}, Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;-><init>(Ljava/util/Properties;)V

    goto :goto_19

    .line 108
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_2f

    .line 113
    :cond_55
    iput v1, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->index:I

    :cond_57
    move v0, v1

    .line 115
    goto :goto_3e
.end method
