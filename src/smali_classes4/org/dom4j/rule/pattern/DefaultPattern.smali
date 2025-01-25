.class public Lorg/dom4j/rule/pattern/DefaultPattern;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/rule/Pattern;


# instance fields
.field private filter:Lorg/dom4j/NodeFilter;


# direct methods
.method public constructor <init>(Lorg/dom4j/NodeFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/rule/pattern/DefaultPattern;->filter:Lorg/dom4j/NodeFilter;

    return-void
.end method


# virtual methods
.method public getMatchType()S
    .registers 2

    const/4 v0, 0x0

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
    .registers 3

    iget-object v0, p0, Lorg/dom4j/rule/pattern/DefaultPattern;->filter:Lorg/dom4j/NodeFilter;

    invoke-interface {v0, p1}, Lorg/dom4j/NodeFilter;->matches(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method
