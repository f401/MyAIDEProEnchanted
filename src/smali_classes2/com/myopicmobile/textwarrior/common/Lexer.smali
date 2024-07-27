.class public Lcom/myopicmobile/textwarrior/common/Lexer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;,
        Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;
    }
.end annotation


# static fields
.field public static final DOUBLE_SYMBOL_DELIMITED_MULTILINE:I = 0x28

.field public static final DOUBLE_SYMBOL_LINE:I = 0x1e

.field public static final KEYWORD:I = 0x1

.field public static final LITERAL:I = 0x4

.field private static final MAX_KEYWORD_LENGTH:I = 0x7f

.field public static final NAME:I = 0x3

.field public static final NORMAL:I = 0x0

.field public static final OPERATOR:I = 0x2

.field public static final SINGLE_SYMBOL_DELIMITED_A:I = 0x32

.field public static final SINGLE_SYMBOL_DELIMITED_B:I = 0x33

.field public static final SINGLE_SYMBOL_LINE_A:I = 0x14

.field public static final SINGLE_SYMBOL_LINE_B:I = 0x15

.field public static final SINGLE_SYMBOL_WORD:I = 0xa

.field public static final UNKNOWN:I = -0x1

.field private static _globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;


# instance fields
.field _callback:Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;

.field private _hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;

.field private _workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->getInstance()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/Lexer;->_globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;

    return-void
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    check-cast v1, Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;

    iput-object v1, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_callback:Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_callback:Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;

    return-void
.end method

.method static synthetic access$1000009(Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;)Z
    .registers 2

    invoke-static {p0}, Lcom/myopicmobile/textwarrior/common/Lexer;->isKeyword(Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$L1000000()I
    .registers 1

    sget v0, Lcom/myopicmobile/textwarrior/common/Lexer;->MAX_KEYWORD_LENGTH:I

    return v0
.end method

.method static synthetic access$S1000000(I)V
    .registers 1

    sput p0, Lcom/myopicmobile/textwarrior/common/Lexer;->MAX_KEYWORD_LENGTH:I

    return-void
.end method

.method public static getLanguage()Lcom/myopicmobile/textwarrior/common/Language;
    .registers 2

    const-class v0, Lcom/myopicmobile/textwarrior/common/Lexer;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/myopicmobile/textwarrior/common/Lexer;->_globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/myopicmobile/textwarrior/common/Lexer;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/myopicmobile/textwarrior/common/Lexer;

    monitor-exit v1

    throw v0
.end method

.method private static isKeyword(Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;)Z
    .registers 2

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->TRUE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FALSE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DO:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FUNCTION:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NOT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->AND:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->OR:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WITH:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->IF:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->THEN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELSEIF:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELSE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WHILE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FOR:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->IN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RETURN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->BREAK:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->CONTINUE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LOCAL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->REPEAT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->UNTIL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->END:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NIL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLanguage(Lcom/myopicmobile/textwarrior/common/Language;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/Language;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/myopicmobile/textwarrior/common/Lexer;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_globalLanguage:Lcom/myopicmobile/textwarrior/common/Language;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/myopicmobile/textwarrior/common/Lexer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/myopicmobile/textwarrior/common/Lexer;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cancelTokenize()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->abort()V

    const/4 v0, 0x0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    :cond_0
    return-void
.end method

.method public getDocument()Lcom/myopicmobile/textwarrior/common/DocumentProvider;
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDocument(Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/DocumentProvider;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_hDoc:Lcom/myopicmobile/textwarrior/common/DocumentProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tokenize(Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/DocumentProvider;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/Lexer;->getLanguage()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Language;->isProgLang()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    invoke-direct {v0, p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;-><init>(Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/Lexer;->setDocument(Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    invoke-direct {v0, p0, p0}, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;-><init>(Lcom/myopicmobile/textwarrior/common/Lexer;Lcom/myopicmobile/textwarrior/common/Lexer;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;->restart()V

    goto :goto_0
.end method

.method tokenizeDone(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myopicmobile/textwarrior/common/Pair;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_callback:Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_callback:Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;

    invoke-interface {v0, p1}, Lcom/myopicmobile/textwarrior/common/Lexer$LexCallback;->lexDone(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Lexer;->_workerThread:Lcom/myopicmobile/textwarrior/common/Lexer$LexThread;

    return-void
.end method
