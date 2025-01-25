.class public Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;
.super Ljava/lang/Object;
.source "ParseTreePattern.java"


# instance fields
.field private final matcher:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;

.field private final pattern:Ljava/lang/String;

.field private final patternRuleIndex:I

.field private final patternTree:Lorg/antlr/v4/runtime/tree/ParseTree;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;Ljava/lang/String;ILorg/antlr/v4/runtime/tree/ParseTree;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->matcher:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;

    .line 58
    iput p3, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->patternRuleIndex:I

    .line 59
    iput-object p2, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->pattern:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->patternTree:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-void
.end method


# virtual methods
.method public findAll(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->matcher:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->getParser()Lorg/antlr/v4/runtime/Parser;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/antlr/v4/runtime/tree/xpath/XPath;->findAll(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;Lorg/antlr/v4/runtime/Parser;)Ljava/util/Collection;

    move-result-object p1

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 103
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->match(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->succeeded()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 105
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2d
    return-object p2
.end method

.method public getMatcher()Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->matcher:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternRuleIndex()I
    .registers 2

    .line 140
    iget v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->patternRuleIndex:I

    return v0
.end method

.method public getPatternTree()Lorg/antlr/v4/runtime/tree/ParseTree;
    .registers 2

    .line 152
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->patternTree:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object v0
.end method

.method public match(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;
    .registers 3

    .line 73
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->matcher:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;

    invoke-virtual {v0, p1, p0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->match(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;

    move-result-object p1

    return-object p1
.end method

.method public matches(Lorg/antlr/v4/runtime/tree/ParseTree;)Z
    .registers 3

    .line 84
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;->matcher:Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;

    invoke-virtual {v0, p1, p0}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreePatternMatcher;->match(Lorg/antlr/v4/runtime/tree/ParseTree;Lorg/antlr/v4/runtime/tree/pattern/ParseTreePattern;)Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;

    move-result-object p1

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/tree/pattern/ParseTreeMatch;->succeeded()Z

    move-result p1

    return p1
.end method
