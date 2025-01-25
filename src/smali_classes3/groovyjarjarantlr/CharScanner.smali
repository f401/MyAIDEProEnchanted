.class public abstract Lgroovyjarjarantlr/CharScanner;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/TokenStream;


# instance fields
.field protected DW:Z

.field protected EQ:Z

.field protected FH:Ljava/lang/Class;

.field protected Hw:Z

.field protected VH:I

.field protected Zo:Ljava/util/Hashtable;

.field protected gn:Lgroovyjarjarantlr/Token;

.field protected j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

.field protected tp:Lgroovyjarjarantlr/LexerSharedInputState;

.field protected u7:Lgroovyjarjarantlr/ANTLRHashString;

.field protected v5:Z

.field protected we:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgroovyjarjarantlr/CharScanner;->DW:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/CharScanner;->Hw:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/CharScanner;->v5:Z

    const/16 v0, 0x8

    iput v0, p0, Lgroovyjarjarantlr/CharScanner;->VH:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/CharScanner;->gn:Lgroovyjarjarantlr/Token;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgroovyjarjarantlr/CharScanner;->EQ:Z

    iput v0, p0, Lgroovyjarjarantlr/CharScanner;->we:I

    new-instance v0, Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-direct {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    new-instance v0, Lgroovyjarjarantlr/ANTLRHashString;

    invoke-direct {v0, p0}, Lgroovyjarjarantlr/ANTLRHashString;-><init>(Lgroovyjarjarantlr/CharScanner;)V

    iput-object v0, p0, Lgroovyjarjarantlr/CharScanner;->u7:Lgroovyjarjarantlr/ANTLRHashString;

    const-string v0, "groovyjarjarantlr.CommonToken"

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lgroovyjarjarantlr/LexerSharedInputState;)V
    .registers 2

    invoke-direct {p0}, Lgroovyjarjarantlr/CharScanner;-><init>()V

    iput-object p1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    return-void
.end method


# virtual methods
.method protected DW(I)Lgroovyjarjarantlr/Token;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->FH:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/Token;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Token;->FH(I)V

    iget-object p1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget p1, p1, Lgroovyjarjarantlr/LexerSharedInputState;->FH:I

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Token;->j6(I)V

    iget-object p1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget p1, p1, Lgroovyjarjarantlr/LexerSharedInputState;->Hw:I

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/Token;->DW(I)V
    :try_end_19
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_19} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception p1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Token class is not accessible"

    goto :goto_2b

    :catch_23
    move-exception p1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "can\'t instantiate token: "

    :goto_2b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->FH:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(Ljava/lang/String;)V

    sget-object p1, Lgroovyjarjarantlr/Token;->j6:Lgroovyjarjarantlr/Token;

    return-object p1
.end method

.method public DW(C)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-ne v1, p1, :cond_b

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->j6()V

    return-void

    :cond_b
    new-instance v1, Lgroovyjarjarantlr/MismatchedCharException;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2, p0}, Lgroovyjarjarantlr/MismatchedCharException;-><init>(CCZLgroovyjarjarantlr/CharScanner;)V

    throw v1
.end method

.method public DW(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "CharScanner; panic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lgroovyjarjarantlr/Utils;->j6(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final DW()Z
    .registers 2

    iget-boolean v0, p0, Lgroovyjarjarantlr/CharScanner;->v5:Z

    return v0
.end method

.method public EQ()V
    .registers 1

    return-void
.end method

.method public FH()I
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->j6:I

    return v0
.end method

.method public FH(C)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-eq v1, p1, :cond_b

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->j6()V

    return-void

    :cond_b
    new-instance v1, Lgroovyjarjarantlr/MismatchedCharException;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v2

    invoke-direct {v1, v2, p1, v0, p0}, Lgroovyjarjarantlr/MismatchedCharException;-><init>(CCZLgroovyjarjarantlr/CharScanner;)V

    throw v1
.end method

.method public FH(I)V
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/InputBuffer;->FH(I)V

    return-void
.end method

.method public FH(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->u7()V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public Hw(C)C
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    return p1
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->Zo:Ljava/lang/String;

    return-object v0
.end method

.method public Hw(I)V
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iput p1, v0, Lgroovyjarjarantlr/LexerSharedInputState;->j6:I

    return-void
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lgroovyjarjarantlr/Utils;->DW(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/CharScanner;->FH:Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_1c

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ClassNotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->DW(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public VH()I
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/InputBuffer;->DW()I

    move-result v0

    return v0
.end method

.method public Zo(I)I
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->u7:Lgroovyjarjarantlr/ANTLRHashString;

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6()[C

    move-result-object v1

    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgroovyjarjarantlr/ANTLRHashString;->j6([CI)V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->Zo:Ljava/util/Hashtable;

    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->u7:Lgroovyjarjarantlr/ANTLRHashString;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_21
    return p1
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gn()V
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v1, v0, Lgroovyjarjarantlr/LexerSharedInputState;->DW:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lgroovyjarjarantlr/LexerSharedInputState;->DW:I

    iput v2, v0, Lgroovyjarjarantlr/LexerSharedInputState;->j6:I

    return-void
.end method

.method public j6(I)C
    .registers 3

    iget-boolean v0, p0, Lgroovyjarjarantlr/CharScanner;->Hw:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/InputBuffer;->j6(I)C

    move-result p1

    return p1

    :cond_d
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/InputBuffer;->j6(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CharScanner;->Hw(C)C

    move-result p1

    return p1
.end method

.method public j6(Ljava/lang/String;I)I
    .registers 4

    new-instance v0, Lgroovyjarjarantlr/ANTLRHashString;

    invoke-direct {v0, p1, p0}, Lgroovyjarjarantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lgroovyjarjarantlr/CharScanner;)V

    iget-object p1, p0, Lgroovyjarjarantlr/CharScanner;->Zo:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_13
    return p2
.end method

.method public j6()V
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->VH:I

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    iget-boolean v2, p0, Lgroovyjarjarantlr/CharScanner;->Hw:Z

    if-eqz v2, :cond_13

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/CharScanner;->j6(C)V

    goto :goto_1e

    :cond_13
    iget-object v2, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget-object v2, v2, Lgroovyjarjarantlr/LexerSharedInputState;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/InputBuffer;->j6(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/CharScanner;->j6(C)V

    :goto_1e
    const/16 v2, 0x9

    if-ne v1, v2, :cond_26

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->tp()V

    goto :goto_2d

    :cond_26
    iget-object v1, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v2, v1, Lgroovyjarjarantlr/LexerSharedInputState;->j6:I

    add-int/2addr v2, v0

    iput v2, v1, Lgroovyjarjarantlr/LexerSharedInputState;->j6:I

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/InputBuffer;->j6()V

    return-void
.end method

.method public j6(C)V
    .registers 3

    iget-boolean v0, p0, Lgroovyjarjarantlr/CharScanner;->DW:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(C)V

    :cond_9
    return-void
.end method

.method public j6(CC)V
    .registers 11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-lt v1, p1, :cond_11

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    if-gt v1, p2, :cond_11

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->j6()V

    return-void

    :cond_11
    new-instance v1, Lgroovyjarjarantlr/MismatchedCharException;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    const/4 v6, 0x0

    move-object v2, v1

    move v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lgroovyjarjarantlr/MismatchedCharException;-><init>(CCCZLgroovyjarjarantlr/CharScanner;)V

    throw v1
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v1

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->j6()V

    return-void

    :cond_f
    new-instance v1, Lgroovyjarjarantlr/MismatchedCharException;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2, p0}, Lgroovyjarjarantlr/MismatchedCharException;-><init>(CLgroovyjarjarantlr/collections/impl/BitSet;ZLgroovyjarjarantlr/CharScanner;)V

    throw v1
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_27

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_19

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->j6()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    new-instance v0, Lgroovyjarjarantlr/MismatchedCharException;

    invoke-virtual {p0, v3}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, v3, p1, v1, p0}, Lgroovyjarjarantlr/MismatchedCharException;-><init>(CCZLgroovyjarjarantlr/CharScanner;)V

    throw v0

    :cond_27
    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lgroovyjarjarantlr/CharScanner;->Hw:Z

    return-void
.end method

.method public tp()V
    .registers 3

    invoke-virtual {p0}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v0

    iget v1, p0, Lgroovyjarjarantlr/CharScanner;->VH:I

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CharScanner;->Hw(I)V

    return-void
.end method

.method public u7()V
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->j6:Lgroovyjarjarantlr/ANTLRStringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v1, v0, Lgroovyjarjarantlr/LexerSharedInputState;->j6:I

    iput v1, v0, Lgroovyjarjarantlr/LexerSharedInputState;->FH:I

    iget v1, v0, Lgroovyjarjarantlr/LexerSharedInputState;->DW:I

    iput v1, v0, Lgroovyjarjarantlr/LexerSharedInputState;->Hw:I

    return-void
.end method

.method public v5()I
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/CharScanner;->tp:Lgroovyjarjarantlr/LexerSharedInputState;

    iget v0, v0, Lgroovyjarjarantlr/LexerSharedInputState;->DW:I

    return v0
.end method

.method public v5(I)V
    .registers 2

    iput p1, p0, Lgroovyjarjarantlr/CharScanner;->VH:I

    return-void
.end method
