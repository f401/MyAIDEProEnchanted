.class public Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;
.super Ljava/lang/Object;
.source "GenerateKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/GenerateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistinguishedName"
.end annotation


# instance fields
.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;->params:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createParam()Ljava/lang/Object;
    .registers 3

    .line 96
    new-instance v0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;-><init>()V

    .line 97
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 130
    const-string v0, "\\,"

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;->params:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$toString$0$GenerateKey$DistinguishedName(Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;)Ljava/lang/String;
    .registers 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;->params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 119
    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    return-object v0
.end method
