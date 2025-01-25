.class public Lorg/dom4j/rule/Rule;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private action:Lorg/dom4j/rule/Action;

.field private appearenceCount:I

.field private importPrecedence:I

.field private mode:Ljava/lang/String;

.field private pattern:Lorg/dom4j/rule/Pattern;

.field private priority:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Pattern;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {p1}, Lorg/dom4j/rule/Pattern;->getPriority()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Pattern;Lorg/dom4j/rule/Action;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Pattern;)V

    iput-object p2, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Rule;Lorg/dom4j/rule/Pattern;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    iput-object v0, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    iget v0, p1, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iput v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iget-wide v0, p1, Lorg/dom4j/rule/Rule;->priority:D

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    iget v0, p1, Lorg/dom4j/rule/Rule;->appearenceCount:I

    iput v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    iget-object v0, p1, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    iput-object v0, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    iput-object p2, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p1, Lorg/dom4j/rule/Rule;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/dom4j/rule/Rule;

    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Rule;->compareTo(Lorg/dom4j/rule/Rule;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public compareTo(Lorg/dom4j/rule/Rule;)I
    .registers 6

    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iget v1, p1, Lorg/dom4j/rule/Rule;->importPrecedence:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_18

    iget-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    iget-wide v2, p1, Lorg/dom4j/rule/Rule;->priority:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-nez v0, :cond_18

    iget v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    iget v1, p1, Lorg/dom4j/rule/Rule;->appearenceCount:I

    sub-int/2addr v0, v1

    :cond_18
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/dom4j/rule/Rule;

    if-eqz v1, :cond_e

    check-cast p1, Lorg/dom4j/rule/Rule;

    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Rule;->compareTo(Lorg/dom4j/rule/Rule;)I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public getAction()Lorg/dom4j/rule/Action;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    return-object v0
.end method

.method public getAppearenceCount()I
    .registers 2

    iget v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    return v0
.end method

.method public getImportPrecedence()I
    .registers 2

    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    return v0
.end method

.method public final getMatchType()S
    .registers 2

    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getMatchType()S

    move-result v0

    return v0
.end method

.method public final getMatchesNodeName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Lorg/dom4j/rule/Pattern;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    return-object v0
.end method

.method public getPriority()D
    .registers 3

    iget-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-wide v0
.end method

.method public getUnionRules()[Lorg/dom4j/rule/Rule;
    .registers 7

    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getUnionPatterns()[Lorg/dom4j/rule/Pattern;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v0, 0x0

    :cond_9
    return-object v0

    :cond_a
    array-length v3, v2

    new-array v0, v3, [Lorg/dom4j/rule/Rule;

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_9

    new-instance v4, Lorg/dom4j/rule/Rule;

    aget-object v5, v2, v1

    invoke-direct {v4, p0, v5}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Rule;Lorg/dom4j/rule/Pattern;)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iget v1, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final matches(Lorg/dom4j/Node;)Z
    .registers 3

    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0, p1}, Lorg/dom4j/rule/Pattern;->matches(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public setAction(Lorg/dom4j/rule/Action;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    return-void
.end method

.method public setAppearenceCount(I)V
    .registers 2

    iput p1, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    return-void
.end method

.method public setImportPrecedence(I)V
    .registers 2

    iput p1, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    return-void
.end method

.method public setPattern(Lorg/dom4j/rule/Pattern;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    return-void
.end method

.method public setPriority(D)V
    .registers 4

    iput-wide p1, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[ pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/rule/Rule;->getPattern()Lorg/dom4j/rule/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/rule/Rule;->getAction()Lorg/dom4j/rule/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
