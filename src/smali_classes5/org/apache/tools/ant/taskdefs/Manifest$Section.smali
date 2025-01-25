.class public Lorg/apache/tools/ant/taskdefs/Manifest$Section;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private warnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GbpjhDUhR839wQFaA90wIo4vFzA(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    .line 398
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .registers 2

    .line 387
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    return-void
.end method

.method private storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .registers 4

    .line 693
    if-nez p1, :cond_3

    .line 697
    :goto_2
    return-void

    .line 696
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public addAttributeAndCheck(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 633
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 636
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 638
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"Name\" attributes should not occur in the main section and must be the first element in all other sections: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 668
    :goto_49
    return-object v0

    .line 644
    :cond_4a
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 645
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest attributes should not start with \"From\" in \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    :goto_7f
    const/4 v0, 0x0

    goto :goto_49

    .line 649
    :cond_81
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 650
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    .line 651
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    .line 653
    if-nez v0, :cond_99

    .line 654
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    goto :goto_7f

    .line 656
    :cond_99
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    const-string v2, "Multiple Class-Path attributes are supported but violate the Jar specification and may not be correctly processed in all environments"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValues()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_7f

    .line 660
    :cond_b4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 665
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    goto :goto_7f

    .line 661
    :cond_c0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The attribute \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" may not occur more than once in the same section"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/ManifestException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_e0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Attributes must have name and value"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 613
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->addAttributeAndCheck(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)Ljava/lang/String;

    move-result-object v0

    .line 614
    if-nez v0, :cond_7

    .line 618
    return-void

    .line 615
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify the section name using the \"name\" attribute of the <section> element rather than using a \"Name\" manifest attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .line 679
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;-><init>()V

    .line 680
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->setName(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeKeys()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    .line 682
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 683
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 684
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 724
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_e

    .line 725
    :cond_c
    const/4 v0, 0x0

    .line 734
    :goto_d
    return v0

    .line 728
    :cond_e
    if-ne p1, p0, :cond_12

    .line 729
    const/4 v0, 0x1

    goto :goto_d

    .line 732
    :cond_12
    check-cast p1, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    .line 734
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;
    .registers 4

    .line 568
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    return-object v0
.end method

.method public getAttributeKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 590
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v0

    .line 591
    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 414
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnings()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 714
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$clone$0$Manifest$Section(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;
    .registers 5

    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 683
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-object v1
.end method

.method public merge(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->merge(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Z)V

    .line 473
    return-void
.end method

.method public merge(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_72

    :cond_a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 487
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 495
    :cond_2c
    const/4 v1, 0x0

    .line 496
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v3

    .line 498
    const-string v4, "Class-Path"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 499
    if-nez v1, :cond_a9

    .line 500
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>()V

    .line 501
    const-string v1, "Class-Path"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->setName(Ljava/lang/String;)V

    .line 503
    :goto_5d
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValues()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_70
    move-object v1, v0

    .line 508
    goto :goto_39

    .line 491
    :cond_72
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ManifestException;

    const-string v1, "Unable to merge sections with different names"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_7a
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    move-object v0, v1

    goto :goto_70

    .line 510
    :cond_7f
    if-eqz v1, :cond_a1

    .line 511
    if-eqz p2, :cond_9e

    .line 512
    const-string v0, "Class-Path"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_9e

    .line 514
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValues()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 517
    :cond_9e
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    .line 521
    :cond_a1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 522
    return-void

    :cond_a9
    move-object v0, v1

    goto :goto_5d
.end method

.method public read(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 432
    move-object v0, v1

    .line 434
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 435
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 458
    :cond_e
    :goto_e
    return-object v1

    .line 438
    :cond_f
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_52

    .line 440
    if-nez v0, :cond_4e

    .line 441
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    goto :goto_2

    .line 442
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t start an attribute with a continuation line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/ManifestException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_4e
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->addContinuation(Ljava/lang/String;)V

    goto :goto_2

    .line 453
    :cond_52
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->addAttributeAndCheck(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v0

    .line 457
    if-eqz v2, :cond_2

    move-object v1, v2

    .line 458
    goto :goto_e
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 4

    .line 600
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->write(Ljava/io/PrintWriter;Z)V

    .line 534
    return-void
.end method

.method public write(Ljava/io/PrintWriter;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 550
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    const-string v2, "Name"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->write(Ljava/io/PrintWriter;)V

    .line 553
    :cond_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->write(Ljava/io/PrintWriter;Z)V

    goto :goto_1a

    .line 556
    :cond_2e
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 557
    return-void
.end method
