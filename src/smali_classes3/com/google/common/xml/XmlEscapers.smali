.class public Lcom/google/common/xml/XmlEscapers;
.super Ljava/lang/Object;
.source "XmlEscapers.java"


# static fields
.field private static final MAX_ASCII_CONTROL_CHAR:C = '\u001f'

.field private static final MIN_ASCII_CONTROL_CHAR:C

.field private static final XML_ATTRIBUTE_ESCAPER:Lcom/google/common/escape/Escaper;

.field private static final XML_CONTENT_ESCAPER:Lcom/google/common/escape/Escaper;

.field private static final XML_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0xd

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/4 v0, 0x0

    .line 108
    invoke-static {}, Lcom/google/common/escape/Escapers;->builder()Lcom/google/common/escape/Escapers$Builder;

    move-result-object v1

    .line 112
    const v2, 0xfffd

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->setSafeRange(CC)Lcom/google/common/escape/Escapers$Builder;

    .line 114
    const-string/jumbo v2, "\ufffd"

    invoke-virtual {v1, v2}, Lcom/google/common/escape/Escapers$Builder;->setUnsafeReplacement(Ljava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 125
    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    .line 126
    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 127
    const-string/jumbo v2, "\ufffd"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    .line 133
    :cond_1
    const/16 v0, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 134
    const/16 v0, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 135
    const/16 v0, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 136
    invoke-virtual {v1}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->XML_CONTENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 137
    const/16 v0, 0x27

    const-string v2, "&apos;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 138
    const/16 v0, 0x22

    const-string v2, "&quot;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 139
    invoke-virtual {v1}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->XML_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 140
    const-string v0, "&#x9;"

    invoke-virtual {v1, v3, v0}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 141
    const-string v0, "&#xA;"

    invoke-virtual {v1, v4, v0}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 142
    const-string v0, "&#xD;"

    invoke-virtual {v1, v5, v0}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 143
    invoke-virtual {v1}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->XML_ATTRIBUTE_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 144
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xmlAttributeEscaper()Lcom/google/common/escape/Escaper;
    .registers 1

    .line 100
    sget-object v0, Lcom/google/common/xml/XmlEscapers;->XML_ATTRIBUTE_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method

.method public static xmlContentEscaper()Lcom/google/common/escape/Escaper;
    .registers 1

    .line 76
    sget-object v0, Lcom/google/common/xml/XmlEscapers;->XML_CONTENT_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method
