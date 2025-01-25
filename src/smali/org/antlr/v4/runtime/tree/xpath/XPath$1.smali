.class Lorg/antlr/v4/runtime/tree/xpath/XPath$1;
.super Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/antlr/v4/runtime/tree/xpath/XPath;->split(Ljava/lang/String;)[Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/antlr/v4/runtime/tree/xpath/XPath;


# direct methods
.method constructor <init>(Lorg/antlr/v4/runtime/tree/xpath/XPath;Lorg/antlr/v4/runtime/CharStream;)V
    .registers 3

    .line 93
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/xpath/XPath$1;->this$0:Lorg/antlr/v4/runtime/tree/xpath/XPath;

    invoke-direct {p0, p2}, Lorg/antlr/v4/runtime/tree/xpath/XPathLexer;-><init>(Lorg/antlr/v4/runtime/CharStream;)V

    return-void
.end method


# virtual methods
.method public recover(Lorg/antlr/v4/runtime/LexerNoViableAltException;)V
    .registers 2

    .line 95
    throw p1
.end method
