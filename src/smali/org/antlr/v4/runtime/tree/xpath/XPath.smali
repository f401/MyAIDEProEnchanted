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
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->parser:Lorg/antlr/v4/runtime/Parser;

    .line 78
    iput-object p2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->path:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/tree/xpath/XPath;->split(Ljava/lang/String;)[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->elements:[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    return-void
.end method

.method public static findAll(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;Lorg/antlr/v4/runtime/Parser;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Parser;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/XPath;

    invoke-direct {v0, p2, p1}, Lorg/antlr/v4/runtime/tree/xpath/XPath;-><init>(Lorg/antlr/v4/runtime/Parser;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/tree/xpath/XPath;->evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Lorg/antlr/v4/runtime/ParserRuleContext;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/ParserRuleContext;-><init>()V

    .line 206
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    .line 208
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    .line 211
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->elements:[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 212
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 213
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 214
    invoke-interface {v0}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 218
    iget-object v4, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->elements:[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;->evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;

    move-result-object v0

    .line 219
    invoke-interface {v3, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v2, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method protected getXPathElement(Lorg/antlr/v4/runtime/Token;Z)Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
    .locals 6

    const/4 v5, -0x1

    .line 158
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    if-eq v0, v5, :cond_7

    .line 161
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/Parser;->getTokenType(Ljava/lang/String;)I

    move-result v2

    .line 163
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath;->parser:Lorg/antlr/v4/runtime/Parser;

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/Parser;->getRuleIndex(Ljava/lang/String;)I

    move-result v3

    .line 164
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    if-eq v3, v5, :cond_1

    if-eqz p2, :cond_0

    .line 187
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleAnywhereElement;

    invoke-direct {v0, v1, v3}, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleAnywhereElement;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;

    invoke-direct {v0, v1, v3}, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleElement;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isn\'t a valid rule name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p2, :cond_3

    .line 166
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardAnywhereElement;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardAnywhereElement;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardElement;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardElement;-><init>()V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    if-eqz p2, :cond_5

    .line 177
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenAnywhereElement;

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenAnywhereElement;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenElement;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 172
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isn\'t a valid token name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing path element at end of path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public split(Ljava/lang/String;)[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
    .locals 12

    const/4 v11, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/antlr/v4/runtime/ANTLRInputStream;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

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
    :try_start_1
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CommonTokenStream;->fill()V
    :try_end_1
    .catch Lorg/antlr/v4/runtime/LexerNoViableAltException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CommonTokenStream;->getTokens()Ljava/util/List;

    move-result-object v7

    .line 111
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    move v5, v3

    :goto_0
    if-ge v5, v9, :cond_6

    .line 116
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 118
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6

    if-eq v1, v2, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    if-eq v1, v11, :cond_2

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 138
    :cond_0
    invoke-virtual {p0, v0, v3}, Lorg/antlr/v4/runtime/tree/xpath/XPath;->getXPathElement(Lorg/antlr/v4/runtime/Token;Z)Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknowth path element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_2
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    if-ne v0, v11, :cond_4

    move v1, v2

    :goto_1
    add-int/lit8 v4, v5, 0x1

    .line 123
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 124
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v6

    const/4 v10, 0x6

    if-ne v6, v10, :cond_5

    move v6, v2

    :goto_2
    if-eqz v6, :cond_3

    add-int/lit8 v4, v5, 0x2

    .line 127
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 129
    :cond_3
    invoke-virtual {p0, v0, v1}, Lorg/antlr/v4/runtime/tree/xpath/XPath;->getXPathElement(Lorg/antlr/v4/runtime/Token;Z)Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    move-result-object v0

    .line 130
    iput-boolean v6, v0, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;->invert:Z

    .line 131
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move v5, v0

    goto :goto_0

    :cond_4
    move v1, v3

    .line 121
    goto :goto_1

    :cond_5
    move v6, v3

    .line 124
    goto :goto_2

    .line 149
    :cond_6
    new-array v0, v3, [Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/tree/xpath/XPathElement;

    return-object v0

    :catch_0
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

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not read path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
