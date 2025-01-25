.class public Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "EchoXML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/EchoXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamespacePolicy"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "all"

.field public static final DEFAULT:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

.field private static final ELEMENTS:Ljava/lang/String; = "elementsOnly"

.field private static final IGNORE:Ljava/lang/String; = "ignore"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 100
    new-instance v0, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    const-string v1, "ignore"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->DEFAULT:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 106
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->setValue(Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method public getPolicy()Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;
    .registers 4

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "ignore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 119
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    .line 126
    :goto_e
    return-object v0

    .line 121
    :cond_f
    const-string v1, "elementsOnly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 122
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->ONLY_QUALIFY_ELEMENTS:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    goto :goto_e

    .line 125
    :cond_1a
    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 126
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->QUALIFY_ALL:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    goto :goto_e

    .line 128
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid namespace policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ignore"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "elementsOnly"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "all"

    aput-object v2, v0, v1

    return-object v0
.end method
