.class public Lorg/apache/tools/ant/property/ParseProperties;
.super Ljava/lang/Object;
.source "ParseProperties.java"

# interfaces
.implements Lorg/apache/tools/ant/property/ParseNextProperty;


# instance fields
.field private final expanders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/property/PropertyExpander;",
            ">;"
        }
    .end annotation
.end field

.field private final getProperty:Lorg/apache/tools/ant/property/GetProperty;

.field private final project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/property/PropertyExpander;",
            ">;",
            "Lorg/apache/tools/ant/property/GetProperty;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/tools/ant/property/ParseProperties;->project:Lorg/apache/tools/ant/Project;

    .line 45
    iput-object p2, p0, Lorg/apache/tools/ant/property/ParseProperties;->expanders:Ljava/util/Collection;

    .line 46
    iput-object p3, p0, Lorg/apache/tools/ant/property/ParseProperties;->getProperty:Lorg/apache/tools/ant/property/GetProperty;

    .line 47
    return-void
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/property/ParseProperties;->getProperty:Lorg/apache/tools/ant/property/GetProperty;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/property/GetProperty;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private parsePropertyName(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 5

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/property/ParseProperties;->expanders:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/property/ParseProperties;Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 190
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda1;

    .line 191
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    return-object v0
.end method


# virtual methods
.method public containsProperties(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 134
    if-nez p1, :cond_4

    .line 144
    :cond_3
    :goto_3
    return v0

    .line 137
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 138
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    :goto_d
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 139
    invoke-direct {p0, p1, v2}, Lorg/apache/tools/ant/property/ParseProperties;->parsePropertyName(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 140
    const/4 v0, 0x1

    goto :goto_3

    .line 142
    :cond_1b
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_d
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 55
    iget-object v0, p0, Lorg/apache/tools/ant/property/ParseProperties;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public synthetic lambda$parsePropertyName$0$ParseProperties(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/PropertyExpander;)Ljava/lang/String;
    .registers 5

    .line 190
    invoke-interface {p3, p1, p2, p0}, Lorg/apache/tools/ant/property/PropertyExpander;->parsePropertyName(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/ParseNextProperty;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseNextProperty(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_c

    .line 185
    :cond_b
    :goto_b
    return-object v0

    .line 172
    :cond_c
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/property/ParseProperties;->parsePropertyName(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_b

    .line 174
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/property/ParseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    if-nez v0, :cond_b

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/property/ParseProperties;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_36

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" has not been set"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 183
    :cond_36
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public parseProperties(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 95
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    :cond_8
    :goto_8
    return-object p1

    .line 98
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 99
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 100
    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/property/ParseProperties;->parseNextProperty(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_21

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-lt v3, v1, :cond_21

    move-object p1, v0

    .line 102
    goto :goto_8

    .line 104
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    if-nez v0, :cond_5f

    .line 106
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 111
    :goto_3e
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ge v0, v1, :cond_67

    .line 112
    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/property/ParseProperties;->parseNextProperty(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    if-nez v0, :cond_63

    .line 114
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_3e

    .line 109
    :cond_5f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 117
    :cond_63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 120
    :cond_67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method
