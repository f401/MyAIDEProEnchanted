.class public Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/ParseTreeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrimToSizeListener"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;->INSTANCE:Lorg/antlr/v4/runtime/Parser$TrimToSizeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .locals 0

    return-void
.end method

.method public exitEveryRule(Lorg/antlr/v4/runtime/ParserRuleContext;)V
    .locals 1

    .line 76
    iget-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p1, Lorg/antlr/v4/runtime/ParserRuleContext;->children:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    :cond_0
    return-void
.end method

.method public visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V
    .locals 0

    return-void
.end method

.method public visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V
    .locals 0

    return-void
.end method
