.class public Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "ParserSupports.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field public static final ERROR_BOTH_ATTRIBUTES:Ljava/lang/String; = "Property and feature attributes are exclusive"

.field public static final ERROR_NO_ATTRIBUTES:Ljava/lang/String; = "Neither feature or property are set"

.field public static final ERROR_NO_VALUE:Ljava/lang/String; = "A value is needed when testing for property support"

.field public static final FEATURE:Ljava/lang/String; = "feature"

.field public static final NOT_RECOGNIZED:Ljava/lang/String; = " not recognized: "

.field public static final NOT_SUPPORTED:Ljava/lang/String; = " not supported: "

.field public static final PROPERTY:Ljava/lang/String; = "property"


# instance fields
.field private feature:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method

.method private getReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .line 109
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParser()Lorg/xml/sax/Parser;

    .line 110
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eval()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 91
    :cond_8
    if-nez v0, :cond_e

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 95
    :cond_e
    if-eqz v0, :cond_25

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->evalFeature()Z

    move-result v0

    .line 101
    :goto_14
    return v0

    .line 89
    :cond_15
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property and feature attributes are exclusive"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Neither feature or property are set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_25
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->evalProperty()Z

    move-result v0

    goto :goto_14

    .line 99
    :cond_2e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A value is needed when testing for property support"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evalFeature()Z
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->getReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 120
    const-string v2, "true"

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    .line 122
    :cond_e
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 124
    :try_start_14
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_19
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_14 .. :try_end_19} :catch_33
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 131
    const/4 v0, 0x1

    :goto_1a
    return v0

    .line 128
    :catch_1b
    move-exception v1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->log(Ljava/lang/String;I)V

    goto :goto_1a

    .line 125
    :catch_33
    move-exception v1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->log(Ljava/lang/String;I)V

    goto :goto_1a
.end method

.method public evalProperty()Z
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->getReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 142
    :try_start_6
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_6 .. :try_end_d} :catch_27
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_6 .. :try_end_d} :catch_f

    .line 149
    const/4 v0, 0x1

    :goto_e
    return v0

    .line 146
    :catch_f
    move-exception v1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "property not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->log(Ljava/lang/String;I)V

    goto :goto_e

    .line 143
    :catch_27
    move-exception v1

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "property not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->log(Ljava/lang/String;I)V

    goto :goto_e
.end method

.method public setFeature(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    .line 83
    return-void
.end method
