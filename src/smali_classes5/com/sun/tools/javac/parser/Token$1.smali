.class synthetic Lcom/sun/tools/javac/parser/Token$1;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$tools$javac$parser$Token:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 164
    invoke-static {}, Lcom/sun/tools/javac/parser/Token;->values()[Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    :try_start_9
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_102

    :goto_12
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CHARLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_ff

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STRINGLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_fc

    :goto_28
    :try_start_28
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INTLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_f9

    :goto_33
    :try_start_33
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LONGLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_f6

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FLOATLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_f3

    :goto_49
    :try_start_49
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DOUBLELITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_f0

    :goto_54
    :try_start_54
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ERROR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_ed

    :goto_60
    :try_start_60
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_eb

    :goto_6c
    :try_start_6c
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_e9

    :goto_78
    :try_start_78
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_e7

    :goto_84
    :try_start_84
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_e5

    :goto_90
    :try_start_90
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_e3

    :goto_9c
    :try_start_9c
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_e1

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_df

    :goto_b4
    :try_start_b4
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_dd

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_db

    :goto_cc
    :try_start_cc
    sget-object v0, Lcom/sun/tools/javac/parser/Token$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d9

    :goto_d8
    return-void

    :catch_d9
    move-exception v0

    goto :goto_d8

    :catch_db
    move-exception v0

    goto :goto_cc

    :catch_dd
    move-exception v0

    goto :goto_c0

    :catch_df
    move-exception v0

    goto :goto_b4

    :catch_e1
    move-exception v0

    goto :goto_a8

    :catch_e3
    move-exception v0

    goto :goto_9c

    :catch_e5
    move-exception v0

    goto :goto_90

    :catch_e7
    move-exception v0

    goto :goto_84

    :catch_e9
    move-exception v0

    goto :goto_78

    :catch_eb
    move-exception v0

    goto :goto_6c

    :catch_ed
    move-exception v0

    goto/16 :goto_60

    :catch_f0
    move-exception v0

    goto/16 :goto_54

    :catch_f3
    move-exception v0

    goto/16 :goto_49

    :catch_f6
    move-exception v0

    goto/16 :goto_3e

    :catch_f9
    move-exception v0

    goto/16 :goto_33

    :catch_fc
    move-exception v0

    goto/16 :goto_28

    :catch_ff
    move-exception v0

    goto/16 :goto_1d

    :catch_102
    move-exception v0

    goto/16 :goto_12
.end method
