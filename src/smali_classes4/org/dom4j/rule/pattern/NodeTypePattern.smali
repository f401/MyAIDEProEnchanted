.class public Lorg/dom4j/rule/pattern/NodeTypePattern;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/rule/Pattern;


# static fields
.field public static final ANY_ATTRIBUTE:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_COMMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_DOCUMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_ELEMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_PROCESSING_INSTRUCTION:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_TEXT:Lorg/dom4j/rule/pattern/NodeTypePattern;


# instance fields
.field private nodeType:S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_ATTRIBUTE:Lorg/dom4j/rule/pattern/NodeTypePattern;

    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_COMMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_DOCUMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_ELEMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_PROCESSING_INSTRUCTION:Lorg/dom4j/rule/pattern/NodeTypePattern;

    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(S)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_TEXT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/dom4j/rule/pattern/NodeTypePattern;->nodeType:S

    return-void
.end method


# virtual methods
.method public getMatchType()S
    .registers 2

    iget-short v0, p0, Lorg/dom4j/rule/pattern/NodeTypePattern;->nodeType:S

    return v0
.end method

.method public getMatchesNodeName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()D
    .registers 3

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    return-wide v0
.end method

.method public getUnionPatterns()[Lorg/dom4j/rule/Pattern;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .registers 4

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    iget-short v1, p0, Lorg/dom4j/rule/pattern/NodeTypePattern;->nodeType:S

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
