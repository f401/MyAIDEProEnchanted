.class public Lorg/antlr/v4/runtime/tree/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"


# static fields
.field public static final NOT:Ljava/lang/String; = "!"

.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field protected elements:[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

.field protected parser:Lorg/antlr/v4/runtime/Parser;

.field protected path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->parser:Lorg/antlr/v4/runtime/Parser;

    .line 78
    iput-object p2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->path:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/tree/xpath/XPath;->split(Ljava/lang/String;)[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    move-result-object p1

    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->elements:[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    return-void
.end method

.method public static findAll(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;Lorg/antlr/v4/runtime/Parser;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Parser;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/XPath;

    invoke-direct {v0, p2, p1}, Lorg/antlr/v4/runtime/tree/xpath/XPath;-><init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/tree/xpath/XPath;->evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;-><init>()V

    .line 206
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    .line 208
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    .line 211
    :goto_10
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->elements:[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    array-length v1, v1

    if-ge v0, v1, :cond_40

    .line 212
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 213
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 214
    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1e

    .line 218
    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->elements:[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;->evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;

    move-result-object v2

    .line 219
    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1e

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_10

    :cond_40
    return-object p1
.end method

.method protected getXPathElement(Lorg/antlr/v4/runtime/Token;Z)Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
    .registers 10

    .line 158
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_97

    .line 161
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/Parser;->getTokenType(Ljava/lang/String;)I

    move-result v2

    .line 163
    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/Parser;->getRuleIndex(Ljava/lang/String;)I

    move-result v3

    .line 164
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v4

    const/4 v5, 0x1

    const-string v6, " at index "

    if-eq v4, v5, :cond_66

    const/4 v5, 0x5

    if-eq v4, v5, :cond_58

    const/16 v5, 0x8

    if-eq v4, v5, :cond_66

    if-eq v3, v1, :cond_37

    if-eqz p2, :cond_31

    .line 187
    new-instance p1, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleAnywhereElement;

    invoke-direct {p1, v0, v3}, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleAnywhereElement;-><init>(Ljava/lang/String;I)V

    goto :goto_36

    :cond_31
    new-instance p1, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;

    invoke-direct {p1, v0, v3}, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;-><init>(Ljava/lang/String;I)V

    :goto_36
    return-object p1

    .line 182
    :cond_37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a valid rule name"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    if-eqz p2, :cond_60

    .line 166
    new-instance p1, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardAnywhereElement;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardAnywhereElement;-><init>()V

    goto :goto_65

    :cond_60
    new-instance p1, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardElement;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardElement;-><init>()V

    :goto_65
    return-object p1

    :cond_66
    if-eqz v2, :cond_76

    if-eqz p2, :cond_70

    .line 177
    new-instance p1, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenAnywhereElement;

    invoke-direct {p1, v0, v2}, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenAnywhereElement;-><init>(Ljava/lang/String;I)V

    goto :goto_75

    :cond_70
    new-instance p1, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;

    invoke-direct {p1, v0, v2}, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;-><init>(Ljava/lang/String;I)V

    :goto_75
    return-object p1

    .line 172
    :cond_76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a valid token name"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing path element at end of path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public split(Ljava/lang/String;)[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
    .registers 12

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/antlr/v4/runtime/ANTLRInputStream;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_cf

    .line 93
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/XPath$1;

    invoke-direct {v0, p0, v1}, Lorg/antlr/v4/runtime/tree/xpath/XPath$1;-><init>(Lorg/antlr/v4/runtime/tree/xpath/XPath;Lorg/antlr/v4/runtime/CharStream;)V

    .line 97
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->removeErrorListeners()V

    .line 98
    new-instance v1, Lorg/antlr/v4/runtime/tree/xpath/XPathLexerErrorListener;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexerErrorListener;-><init>()V

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->addErrorListener(Lorg/antlr/v4/runtime/ANTLRErrorListener;)V

    .line 99
    new-instance v1, Lorg/antlr/v4/runtime/CommonTokenStream;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/CommonTokenStream;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 101
    :try_start_1f
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CommonTokenStream;->fill()V
    :try_end_22
    .catch Lorg/antlr/v4/runtime/LexerNoViableAltException; {:try_start_1f .. :try_end_22} :catch_a9

    .line 109
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CommonTokenStream;->getTokens()Ljava/util/List;

    move-result-object p1

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v1, :cond_a0

    .line 116
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/Token;

    .line 118
    invoke-interface {v4}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_96

    const/4 v7, 0x2

    if-eq v5, v7, :cond_96

    const/4 v7, 0x3

    if-eq v5, v7, :cond_64

    const/4 v8, 0x4

    if-eq v5, v8, :cond_64

    const/4 v6, 0x5

    if-ne v5, v6, :cond_50

    goto :goto_96

    .line 146
    :cond_50
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknowth path element "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_64
    invoke-interface {v4}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v4

    if-ne v4, v7, :cond_6c

    const/4 v4, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v4, 0x0

    :goto_6d
    add-int/lit8 v5, v3, 0x1

    .line 123
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/Token;

    .line 124
    invoke-interface {v7}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_7e

    const/4 v8, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v8, 0x0

    :goto_7f
    if-eqz v8, :cond_8a

    add-int/lit8 v5, v3, 0x2

    .line 127
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lorg/antlr/v4/runtime/Token;

    .line 129
    :cond_8a
    invoke-virtual {p0, v7, v4}, Lorg/antlr/v4/runtime/tree/xpath/XPath;->getXPathElement(Lorg/antlr/v4/runtime/Token;Z)Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    move-result-object v3

    .line 130
    iput-boolean v8, v3, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;->invert:Z

    .line 131
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v5, 0x1

    goto :goto_31

    .line 138
    :cond_96
    :goto_96
    invoke-virtual {p0, v4, v2}, Lorg/antlr/v4/runtime/tree/xpath/XPath;->getXPathElement(Lorg/antlr/v4/runtime/Token;Z)Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 149
    :cond_a0
    new-array p1, v2, [Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    return-object p1

    :catch_a9
    move-exception v1

    .line 104
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;->getCharPositionInLine()I

    move-result v0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid tokens or characters at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in path \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_cf
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not read path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e5

    :goto_e4
    throw p1

    :goto_e5
    goto :goto_e4
.end method
