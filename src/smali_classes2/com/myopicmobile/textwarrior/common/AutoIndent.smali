.class public Lcom/myopicmobile/textwarrior/common/AutoIndent;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAutoIndent(Ljava/lang/CharSequence;)I
    .registers 4

    new-instance v2, Lcom/myopicmobile/textwarrior/common/LuaLexer;

    invoke-direct {v2, p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    return v1

    :cond_0
    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/AutoIndent;->indent(Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static createIntdent(I)[C
    .registers 4

    const/4 v1, 0x0

    if-gez p0, :cond_1

    new-array v0, v1, [C

    :cond_0
    return-object v0

    :cond_1
    new-array v0, p0, [C

    :goto_0
    if-ge v1, p0, :cond_0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static format(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/myopicmobile/textwarrior/common/LuaLexer;

    invoke-direct {v5, p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    move v0, v1

    move v3, v2

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    move-result-object v6

    if-nez v6, :cond_1

    :goto_1
    return-object v4

    :cond_1
    sget-object v7, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NEWLINE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v6, v7, :cond_2

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_6

    sget-object v7, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v7, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELSE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v6, v0, :cond_3

    add-int/lit8 v0, v3, -0x1

    mul-int v3, v0, p1

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/common/AutoIndent;->createIntdent(I)[C

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    move v0, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELSEIF:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v0, :cond_4

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->END:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v0, :cond_4

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->UNTIL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq v6, v0, :cond_4

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RCURLY:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v6, v0, :cond_5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    mul-int v0, v3, p1

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/AutoIndent;->createIntdent(I)[C

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_0

    :cond_5
    mul-int v0, v3, p1

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/AutoIndent;->createIntdent(I)[C

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/myopicmobile/textwarrior/common/AutoIndent;->indent(Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v2

    goto :goto_0

    :cond_6
    sget-object v7, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne v6, v7, :cond_7

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_7
    :try_start_1
    invoke-virtual {v5}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/myopicmobile/textwarrior/common/AutoIndent;->indent(Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    add-int/2addr v3, v6

    goto/16 :goto_0
.end method

.method private static indent(Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;)I
    .registers 2

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DO:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FUNCTION:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->THEN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->REPEAT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LCURLY:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->UNTIL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELSEIF:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->END:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RCURLY:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    if-eq p0, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method
