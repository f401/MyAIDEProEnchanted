.class public Lorg/apache/tools/ant/taskdefs/MacroDef;
.super Lorg/apache/tools/ant/taskdefs/AntlibDefinition;
.source "MacroDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;,
        Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;,
        Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;,
        Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;,
        Lorg/apache/tools/ant/taskdefs/MacroDef$Text;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private backTrace:Z

.field private elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;",
            ">;"
        }
    .end annotation
.end field

.field private hasImplicitElement:Z

.field private name:Ljava/lang/String;

.field private nestedSequential:Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;

.field private text:Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

.field private textName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->backTrace:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->attributes:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->elements:Ljava/util/Map;

    .line 50
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->textName:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->text:Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->hasImplicitElement:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .registers 2

    .line 43
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->isValidName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidName(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 243
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/MacroDef;->isValidNameCharacter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isValidNameCharacter(C)Z
    .registers 2

    .line 230
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sameOrSimilar(Ljava/lang/Object;Z)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 698
    if-ne p1, p0, :cond_1

    move v1, v0

    .line 737
    :cond_0
    :goto_0
    return v1

    .line 702
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef;

    .line 707
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 708
    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 710
    :cond_3
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 716
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Location;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p2, :cond_4

    move v1, v0

    .line 718
    goto :goto_0

    .line 720
    :cond_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->text:Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    if-nez v2, :cond_8

    .line 721
    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/MacroDef;->text:Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    if-nez v2, :cond_0

    .line 727
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 728
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "antlib:org.apache.tools.ant"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 729
    :cond_6
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 730
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "antlib:org.apache.tools.ant"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    :cond_7
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->nestedSequential:Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;

    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef;->nestedSequential:Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->similar(Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->attributes:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef;->attributes:Ljava/util/List;

    .line 738
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->elements:Ljava/util/Map;

    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef;->elements:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_2
    move v1, v0

    .line 737
    goto/16 :goto_0

    .line 724
    :cond_8
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/MacroDef;->text:Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 733
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 738
    goto :goto_2
.end method


# virtual methods
.method public addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->textName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;

    .line 267
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the name \"%s\" has already been used in another attribute element"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 273
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-void

    .line 262
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the name \"%s\" has already been used by the text element"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 258
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the attribute nested element needed a \"name\" attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConfiguredElement(Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;)V
    .registers 7

    .line 282
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->elements:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 290
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->hasImplicitElement:Z

    if-nez v0, :cond_1

    .line 291
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isImplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->isImplicit()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->hasImplicitElement:Z

    .line 296
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->elements:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void

    .line 292
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one element allowed when using implicit elements"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the element %s has already been specified"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 283
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the element nested element needed a \"name\" attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConfiguredText(Lorg/apache/tools/ant/taskdefs/MacroDef$Text;)V
    .registers 7

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->text:Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    if-nez v0, :cond_3

    .line 72
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;

    .line 78
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the name \"%s\" is already used as an attribute"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 84
    :cond_1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->text:Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    .line 85
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/MacroDef$Text;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->textName:Ljava/lang/String;

    .line 86
    return-void

    .line 73
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the text nested element needed a \"name\" attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one nested text element allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSequential()Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;
    .registers 3

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->nestedSequential:Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->nestedSequential:Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;

    .line 128
    return-object v0

    .line 125
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one sequential allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 3

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->nestedSequential:Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->name:Ljava/lang/String;

    .line 313
    new-instance v0, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;-><init>(Lorg/apache/tools/ant/taskdefs/MacroDef;)V

    .line 314
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 315
    const-class v1, Lorg/apache/tools/ant/taskdefs/MacroInstance;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->setClass(Ljava/lang/Class;)V

    .line 317
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v1

    .line 320
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "creating macro  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->log(Ljava/lang/String;I)V

    .line 322
    return-void

    .line 308
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Name not specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing sequential element"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getBackTrace()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->backTrace:Z

    return v0
.end method

.method public getElements()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/MacroDef$TemplateElement;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->elements:Ljava/util/Map;

    return-object v0
.end method

.method public getNestedTask()Lorg/apache/tools/ant/UnknownElement;
    .registers 6

    .line 184
    new-instance v2, Lorg/apache/tools/ant/UnknownElement;

    const-string v0, "sequential"

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    .line 185
    const-string v0, "sequential"

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setTaskName(Ljava/lang/String;)V

    .line 186
    const-string v0, ""

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setNamespace(Ljava/lang/String;)V

    .line 187
    const-string v0, "sequential"

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->setQName(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    const-string v1, "sequential"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->nestedSequential:Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->getNested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->nestedSequential:Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;

    .line 194
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/MacroDef$NestedSequential;->getNested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    .line 195
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    .line 196
    invoke-virtual {v2}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_0
    return-object v2
.end method

.method public getText()Lorg/apache/tools/ant/taskdefs/MacroDef$Text;
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->text:Lorg/apache/tools/ant/taskdefs/MacroDef$Text;

    return-object v0
.end method

.method public sameDefinition(Ljava/lang/Object;)Z
    .registers 3

    .line 758
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->sameOrSimilar(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public setBackTrace(Z)V
    .registers 2

    .line 107
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->backTrace:Z

    .line 108
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef;->name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public similar(Ljava/lang/Object;)Z
    .registers 3

    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/MacroDef;->sameOrSimilar(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method
