.class public Lorg/apache/tools/ant/util/DOMElementWriter;
.super Ljava/lang/Object;
.source "DOMElementWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;
    }
.end annotation


# static fields
.field private static final HEX:I = 0x10

.field private static final NS:Ljava/lang/String; = "ns"

.field private static final WS_ENTITIES:[Ljava/lang/String;


# instance fields
.field protected knownEntities:[Ljava/lang/String;

.field private namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

.field private nextPrefix:I

.field private nsPrefixMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nsURIByElement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private xmlDeclaration:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/util/DOMElementWriter;->WS_ENTITIES:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x9

    :goto_7
    const/16 v1, 0xe

    if-ge v0, v1, :cond_2e

    .line 55
    sget-object v1, Lorg/apache/tools/ant/util/DOMElementWriter;->WS_ENTITIES:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 57
    :cond_2e
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v3, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->xmlDeclaration:Z

    .line 68
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    .line 78
    iput v2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    .line 160
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gt"

    aput-object v1, v0, v2

    const-string v1, "amp"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "apos"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "quot"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->knownEntities:[Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 138
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>(ZLorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)V

    .line 139
    return-void
.end method

.method public constructor <init>(ZLorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v3, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->xmlDeclaration:Z

    .line 68
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    .line 78
    iput v2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    .line 160
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gt"

    aput-object v1, v0, v2

    const-string v1, "amp"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "apos"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "quot"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->knownEntities:[Ljava/lang/String;

    .line 151
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->xmlDeclaration:Z

    .line 152
    iput-object p2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    .line 153
    return-void
.end method

.method private addNSDefinition(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 5

    .line 631
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    sget-object v1, Lorg/apache/tools/ant/util/DOMElementWriter$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/util/DOMElementWriter$$ExternalSyntheticLambda1;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 632
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method

.method private encode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_10
    if-ge v0, v4, :cond_51

    aget-char v5, v3, v0

    .line 436
    sparse-switch v5, :sswitch_data_56

    .line 462
    invoke-virtual {p0, v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->isLegalCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 463
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 441
    :sswitch_23
    const-string v5, "&gt;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 438
    :sswitch_29
    const-string v5, "&lt;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 444
    :sswitch_2f
    const-string v5, "&apos;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 450
    :sswitch_35
    const-string v5, "&amp;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 447
    :sswitch_3b
    const-string v5, "&quot;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 455
    :sswitch_41
    if-eqz p2, :cond_4d

    .line 456
    sget-object v6, Lorg/apache/tools/ant/util/DOMElementWriter;->WS_ENTITIES:[Ljava/lang/String;

    add-int/lit8 v5, v5, -0x9

    aget-object v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 458
    :cond_4d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 468
    :cond_51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :sswitch_data_56
    .sparse-switch
        0x9 -> :sswitch_41
        0xa -> :sswitch_41
        0xd -> :sswitch_41
        0x22 -> :sswitch_3b
        0x26 -> :sswitch_35
        0x27 -> :sswitch_2f
        0x3c -> :sswitch_29
        0x3e -> :sswitch_23
    .end sparse-switch
.end method

.method private static getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    .line 636
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 637
    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    return-object v0
.end method

.method public static isLegalXmlCharacter(C)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 606
    const/16 v2, 0x9

    if-eq p0, v2, :cond_e

    const/16 v2, 0xa

    if-eq p0, v2, :cond_e

    const/16 v2, 0xd

    if-ne p0, v2, :cond_f

    .line 618
    :cond_e
    :goto_e
    return v0

    .line 609
    :cond_f
    const/16 v2, 0x20

    if-ge p0, v2, :cond_15

    move v0, v1

    .line 610
    goto :goto_e

    .line 612
    :cond_15
    const v2, 0xd7ff

    if-le p0, v2, :cond_e

    .line 615
    const v2, 0xe000

    if-ge p0, v2, :cond_21

    move v0, v1

    .line 616
    goto :goto_e

    .line 618
    :cond_21
    const v2, 0xfffd

    if-le p0, v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method static synthetic lambda$addNSDefinition$0(Lorg/w3c/dom/Element;)Ljava/util/List;
    .registers 2

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private removeNSDefinitions(Lorg/w3c/dom/Element;)V
    .registers 5

    .line 623
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 624
    if-eqz v0, :cond_1c

    .line 625
    iget-object v1, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/util/DOMElementWriter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/util/DOMElementWriter$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 626
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_1c
    return-void
.end method


# virtual methods
.method public closeElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 390
    if-eqz p5, :cond_c

    move v0, v1

    .line 391
    :goto_4
    if-ge v0, p3, :cond_c

    .line 392
    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 397
    :cond_c
    const-string v0, "</"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    invoke-static {v0}, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->access$000(Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 399
    invoke-static {p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 402
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 405
    :cond_35
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->removeNSDefinitions(Lorg/w3c/dom/Element;)V

    .line 407
    :cond_38
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 408
    const-string v0, ">%n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 410
    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 430
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodedata(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 487
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 489
    :try_start_5
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->encodedata(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 492
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 490
    :catch_d
    move-exception v0

    .line 491
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encodedata(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 515
    const/4 v3, 0x0

    .line 516
    const-string v0, "]]>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 517
    :goto_b
    if-ge v3, v4, :cond_3d

    .line 518
    if-gez v1, :cond_22

    move v0, v4

    .line 520
    :goto_10
    if-ge v3, v0, :cond_2c

    move v2, v3

    .line 523
    :goto_13
    if-ge v2, v0, :cond_24

    .line 524
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->isLegalCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_22
    move v0, v1

    .line 518
    goto :goto_10

    .line 527
    :cond_24
    sub-int v5, v2, v3

    invoke-virtual {p1, p2, v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 528
    add-int/lit8 v3, v2, 0x1

    .line 529
    goto :goto_10

    .line 531
    :cond_2c
    if-ltz v1, :cond_3b

    .line 532
    const-string v0, "]]]]><![CDATA[>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 533
    add-int/lit8 v0, v1, 0x3

    .line 534
    const-string v1, "]]>"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :cond_3b
    move v3, v0

    .line 538
    goto :goto_b

    .line 539
    :cond_3d
    return-void
.end method

.method public isLegalCharacter(C)Z
    .registers 3

    .line 591
    invoke-static {p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->isLegalXmlCharacter(C)Z

    move-result v0

    return v0
.end method

.method public isReference(Ljava/lang/String;)Z
    .registers 9

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 547
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_13

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    .line 577
    :cond_14
    :goto_14
    return v0

    .line 551
    :cond_15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_4b

    .line 552
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_39

    .line 555
    const/4 v2, 0x3

    :try_start_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_35} :catch_36

    goto :goto_14

    .line 558
    :catch_36
    move-exception v0

    move v0, v1

    .line 559
    goto :goto_14

    .line 563
    :cond_39
    const/4 v2, 0x2

    :try_start_3a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_47} :catch_48

    goto :goto_14

    .line 565
    :catch_48
    move-exception v0

    move v0, v1

    .line 566
    goto :goto_14

    .line 571
    :cond_4b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 572
    iget-object v4, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->knownEntities:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_59
    if-ge v2, v5, :cond_66

    aget-object v6, v4, v2

    .line 573
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_66
    move v0, v1

    .line 577
    goto :goto_14
.end method

.method public openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 281
    return-void
.end method

.method public openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 300
    move v0, v3

    :goto_2
    if-ge v0, p3, :cond_a

    .line 301
    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :cond_a
    const-string v0, "<"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    invoke-static {v0}, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->access$000(Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 307
    invoke-static {p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 308
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    if-nez v0, :cond_37

    .line 310
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 312
    const-string v0, ""

    .line 316
    :goto_2f
    iget-object v2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/util/DOMElementWriter;->addNSDefinition(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 319
    :cond_37
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 320
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 321
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 324
    :cond_45
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 327
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    move v2, v3

    .line 328
    :goto_51
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_d8

    .line 329
    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 330
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    invoke-static {v1}, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->access$100(Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 332
    invoke-static {v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 333
    iget-object v1, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    if-nez v1, :cond_97

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ns"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    iget-object v6, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-direct {p0, p1, v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->addNSDefinition(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 334
    :cond_97
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 340
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 331
    :cond_9f
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 343
    const-string v1, "=\""

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->encodeAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 345
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_51

    .line 314
    :cond_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ns"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f

    .line 349
    :cond_d8
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 350
    if-eqz v0, :cond_11c

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    const-string v4, " xmlns"

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10e

    .line 355
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    :cond_10e
    const-string v0, "=\""

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_e6

    .line 364
    :cond_11c
    if-eqz p5, :cond_124

    .line 365
    const-string v0, ">"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    :goto_123
    return-void

    .line 367
    :cond_124
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->removeNSDefinitions(Lorg/w3c/dom/Element;)V

    .line 368
    const-string v0, " />%n"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    goto :goto_123
.end method

.method public write(Lorg/w3c/dom/Element;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 175
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->writeXMLDeclaration(Ljava/io/Writer;)V

    .line 176
    const/4 v1, 0x0

    const-string v2, "  "

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 178
    return-void
.end method

.method public write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 207
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 208
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2e

    move v5, v6

    :goto_d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 209
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 212
    if-eqz v5, :cond_b9

    move v5, v7

    move v1, v7

    .line 213
    :goto_19
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_b1

    .line 214
    invoke-interface {v8, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_ba

    .line 224
    :goto_2a
    :pswitch_2a  #0x2, 0x6
    add-int/lit8 v7, v1, 0x1

    move v1, v7

    goto :goto_19

    :cond_2e
    move v5, v7

    .line 208
    goto :goto_d

    .line 231
    :pswitch_30  #0x8
    const-string v2, "<!--"

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 232
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 233
    const-string v0, "-->"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2a

    .line 249
    :pswitch_46  #0x7
    const-string v2, "<?"

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 250
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 251
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_66

    .line 253
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(I)V

    .line 254
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 256
    :cond_66
    const-string v0, "?>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2a

    .line 243
    :pswitch_6c  #0x5
    const/16 v2, 0x26

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(I)V

    .line 244
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 245
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2a

    .line 237
    :pswitch_7e  #0x4
    const-string v2, "<![CDATA["

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 238
    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->encodedata(Ljava/io/Writer;Ljava/lang/String;)V

    .line 239
    const-string v0, "]]>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2a

    .line 227
    :pswitch_92  #0x3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2a

    .line 220
    :pswitch_9e  #0x1
    if-nez v1, :cond_a7

    .line 221
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 223
    :cond_a7
    check-cast v0, Lorg/w3c/dom/Element;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, v0, p2, v2, p4}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    move v5, v6

    goto/16 :goto_2a

    :cond_b1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 262
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->closeElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 264
    :cond_b9
    return-void

    .line 216
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_9e  #00000001
        :pswitch_2a  #00000002
        :pswitch_92  #00000003
        :pswitch_7e  #00000004
        :pswitch_6c  #00000005
        :pswitch_2a  #00000006
        :pswitch_46  #00000007
        :pswitch_30  #00000008
    .end packed-switch
.end method

.method public writeXMLDeclaration(Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->xmlDeclaration:Z

    if-eqz v0, :cond_9

    .line 188
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 190
    :cond_9
    return-void
.end method
