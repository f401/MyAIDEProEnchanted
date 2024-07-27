.class Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/common/Lexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LexThread"
.end annotation


# instance fields
.field private final _abort:Lcom/myopicmobile/textwarrior/common/Flag;

.field private final _lexManager:Lcom/myopicmobile/textwarrior/common/Lexer;

.field private _tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/myopicmobile/textwarrior/common/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private rescan:Z

.field private final this$0:Lcom/myopicmobile/textwarrior/common/Lexer;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/common/Lexer;Lcom/myopicmobile/textwarrior/common/Lexer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->this$0:Lcom/myopicmobile/textwarrior/common/Lexer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->rescan:Z

    iput-object p2, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_lexManager:Lcom/myopicmobile/textwarrior/common/Lexer;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/Flag;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;)Lcom/myopicmobile/textwarrior/common/Lexer;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->this$0:Lcom/myopicmobile/textwarrior/common/Lexer;

    return-object v0
.end method

.method private tokenize()V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->this$0:Lcom/myopicmobile/textwarrior/common/Lexer;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Lexer;->getDocument()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v0

    new-instance v10, Ljava/util/ArrayList;

    const/16 v1, 0x2004

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Lcom/myopicmobile/textwarrior/common/LuaLexer;

    invoke-direct {v11, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/Lexer;->getLanguage()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v12

    invoke-virtual {v12}, Lcom/myopicmobile/textwarrior/common/Language;->clearUserWord()V

    const/4 v0, 0x0

    :try_start_0
    check-cast v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    const/4 v1, 0x0

    check-cast v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    const/4 v2, 0x0

    :try_start_1
    check-cast v2, Lcom/myopicmobile/textwarrior/common/Pair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    move-object v7, v6

    move-object v8, v0

    :goto_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Flag;->isSet()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v12}, Lcom/myopicmobile/textwarrior/common/Language;->updateUserWord()V

    iput-object v10, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_tokens:Ljava/util/ArrayList;

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    check-cast v0, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-virtual {v11}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v11}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yylength()I

    move-result v13

    if-eqz v3, :cond_4

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v8, v1, :cond_4

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addUserWord(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move-object v4, v1

    :cond_4
    if-ne v5, v6, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v1

    add-int/2addr v1, v13

    invoke-virtual {v2, v1}, Lcom/myopicmobile/textwarrior/common/Pair;->setFirst(I)V

    :goto_2
    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_1a

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NL_BEFORE_LONGSTRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_1a

    move-object v1, v6

    :goto_3
    if-eqz v0, :cond_19

    :goto_4
    add-int/2addr v9, v13

    move-object v5, v6

    move-object v8, v1

    move-object v2, v0

    goto :goto_0

    :cond_5
    invoke-static {v6}, Lcom/myopicmobile/textwarrior/common/Lexer;->access$1000009(Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v5, 0x1

    invoke-direct {v1, v13, v5}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_6
    :try_start_3
    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LPAREN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_7

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RPAREN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_7

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LBRACK:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_7

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RBRACK:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_7

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LCURLY:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_7

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RCURLY:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_7

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->COMMA:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_7

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DOT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v6, v1, :cond_8

    :cond_7
    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v1, 0x2

    invoke-direct {v0, v13, v1}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_9

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGSTRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v6, v1, :cond_c

    :cond_9
    if-eq v8, v6, :cond_b

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    const/16 v1, 0x32

    invoke-direct {v0, v13, v1}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "require"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_a

    invoke-virtual {v11}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    move v3, v1

    goto :goto_2

    :cond_b
    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v1

    add-int/2addr v1, v13

    invoke-virtual {v2, v1}, Lcom/myopicmobile/textwarrior/common/Pair;->setFirst(I)V

    move v1, v3

    goto :goto_5

    :cond_c
    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NAME:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v6, v1, :cond_13

    invoke-virtual {v11}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FUNCTION:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v8, v1, :cond_e

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v14, 0x4

    invoke-direct {v1, v13, v14}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v5}, Lcom/myopicmobile/textwarrior/common/Language;->addUserWord(Ljava/lang/String;)V

    :goto_6
    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ASSIGN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v8, v1, :cond_d

    const-string v1, "require"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v12, v7}, Lcom/myopicmobile/textwarrior/common/Language;->addUserWord(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x3

    if-lt v1, v7, :cond_d

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/myopicmobile/textwarrior/common/Pair;->setSecond(I)V

    :cond_d
    move-object v7, v5

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v12, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isUserWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v14, 0x4

    invoke-direct {v1, v13, v14}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    invoke-virtual {v12, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isBasePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v14, 0x3

    invoke-direct {v1, v13, v14}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DOT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v8, v1, :cond_11

    invoke-virtual {v12, v7}, Lcom/myopicmobile/textwarrior/common/Language;->isBasePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v12, v7, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isBaseWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v14, 0x3

    invoke-direct {v1, v13, v14}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    invoke-virtual {v12, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v14, 0x3

    invoke-direct {v1, v13, v14}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->SHORTCOMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v1, :cond_14

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGCOMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v6, v1, :cond_16

    :cond_14
    if-eq v8, v6, :cond_15

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    const/16 v1, 0x1e

    invoke-direct {v0, v13, v1}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_15
    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v1

    add-int/2addr v1, v13

    invoke-virtual {v2, v1}, Lcom/myopicmobile/textwarrior/common/Pair;->setFirst(I)V

    goto/16 :goto_2

    :cond_16
    sget-object v1, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NUMBER:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v6, v1, :cond_17

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v5, 0x4

    invoke-direct {v1, v13, v5}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_17
    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v13, v1}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_18
    move v1, v3

    goto/16 :goto_5

    :cond_19
    move-object v0, v2

    goto/16 :goto_4

    :cond_1a
    move-object v1, v8

    goto/16 :goto_3
.end method


# virtual methods
.method public abort()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Flag;->set()V

    return-void
.end method

.method public restart()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->rescan:Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Flag;->set()V

    return-void
.end method

.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->rescan:Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Flag;->clear()V

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->tokenize()V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->rescan:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Flag;->isSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_lexManager:Lcom/myopicmobile/textwarrior/common/Lexer;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/Lexer;->tokenizeDone(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public tokenize2()V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->this$0:Lcom/myopicmobile/textwarrior/common/Lexer;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Lexer;->getDocument()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v7

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/Lexer;->getLanguage()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/myopicmobile/textwarrior/common/Language;->isProgLang()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v9, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_tokens:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x7f

    new-array v10, v0, [C

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    int-to-char v4, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->seekChar(I)I

    move v1, v0

    :goto_1
    invoke-virtual {v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Flag;->isSet()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object v9, p0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->_tokens:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->next()C

    move-result v5

    sparse-switch v3, :sswitch_data_0

    const-string v0, "Invalid state in TokenScanner"

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    move v4, v5

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v8, v4, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isLineStart(CC)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v4, 0x1e

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_e

    const/16 v0, 0x1e

    if-eq v4, v0, :cond_4

    const/16 v0, 0x28

    if-ne v4, v0, :cond_d

    :cond_4
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v0

    if-ne v0, v6, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    move v0, v6

    :goto_4
    if-lez v2, :cond_6

    if-eqz v3, :cond_6

    new-instance v3, Lcom/myopicmobile/textwarrior/common/Pair;

    sub-int v2, v1, v2

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v2, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v2, v0, v4}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v3, v4

    :cond_7
    :goto_5
    move v4, v5

    goto :goto_2

    :cond_8
    invoke-virtual {v8, v4, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isMultilineStartDelimiter(CC)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v4, 0x28

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isDelimiterA(C)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v4, 0x32

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isDelimiterB(C)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v4, 0x33

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isLineAStart(C)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v4, 0x14

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isLineBStart(C)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v4, 0x15

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    move v0, v1

    goto :goto_4

    :cond_e
    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isOperator(C)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_f
    if-lez v2, :cond_11

    const/4 v0, 0x0

    aget-char v0, v10, v0

    invoke-virtual {v8, v0}, Lcom/myopicmobile/textwarrior/common/Language;->isWordStart(C)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v3, 0xa

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    sub-int v2, v1, v2

    const/16 v4, 0xa

    invoke-direct {v0, v2, v4}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    const/4 v2, 0x0

    :cond_11
    if-eqz v3, :cond_7

    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isOperator(C)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v10, v4, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8, v0}, Lcom/myopicmobile/textwarrior/common/Language;->isKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v3, 0x1

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    sub-int v2, v1, v2

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v10, v4, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8, v0}, Lcom/myopicmobile/textwarrior/common/Language;->isName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v3, 0x3

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    sub-int v2, v1, v2

    const/4 v4, 0x3

    invoke-direct {v0, v2, v4}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    if-eqz v3, :cond_10

    const/4 v3, 0x0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Pair;

    sub-int v2, v1, v2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    const/16 v0, 0x7f

    if-ge v2, v0, :cond_7

    aput-char v5, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {v8, v4, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isMultilineStartDelimiter(CC)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v3, 0x28

    :cond_16
    :goto_7
    move v4, v5

    goto/16 :goto_2

    :cond_17
    const/16 v0, 0xa

    if-ne v5, v0, :cond_16

    const/4 v3, -0x1

    goto :goto_7

    :sswitch_2
    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isDelimiterA(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0xa

    if-ne v5, v0, :cond_19

    :cond_18
    invoke-virtual {v8, v4}, Lcom/myopicmobile/textwarrior/common/Language;->isEscapeChar(C)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v3, -0x1

    move v4, v5

    goto/16 :goto_2

    :cond_19
    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isEscapeChar(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v8, v4}, Lcom/myopicmobile/textwarrior/common/Language;->isEscapeChar(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v4, 0x20

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isDelimiterB(C)Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0xa

    if-ne v5, v0, :cond_1b

    :cond_1a
    invoke-virtual {v8, v4}, Lcom/myopicmobile/textwarrior/common/Language;->isEscapeChar(C)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v3, -0x1

    move v4, v5

    goto/16 :goto_2

    :cond_1b
    invoke-virtual {v8, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isEscapeChar(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v8, v4}, Lcom/myopicmobile/textwarrior/common/Language;->isEscapeChar(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v5, 0x20

    move v4, v5

    goto/16 :goto_2

    :sswitch_4
    invoke-virtual {v8, v4, v5}, Lcom/myopicmobile/textwarrior/common/Language;->isMultilineEndDelimiter(CC)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v3, -0x1

    :cond_1c
    move v4, v5

    goto/16 :goto_2

    :cond_1d
    move v4, v5

    goto/16 :goto_2

    :cond_1e
    const/4 v0, 0x0

    move v4, v3

    goto/16 :goto_3

    :cond_1f
    move v4, v5

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x1e -> :sswitch_1
        0x28 -> :sswitch_4
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
    .end sparse-switch
.end method
