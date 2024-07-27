.class synthetic Lcom/sun/tools/javac/parser/JavacParser$1;
.super Ljava/lang/Object;
.source "JavacParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/parser/JavacParser;
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

    .line 189
    invoke-static {}, Lcom/sun/tools/javac/parser/Token;->values()[Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    :try_start_0
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_62

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PUBLIC:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_61

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FINAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_60

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ABSTRACT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5f

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->MONKEYS_AT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5e

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5d

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CLASS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5c

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INTERFACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5b

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5a

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IMPORT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_59

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_58

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_57

    :goto_b
    :try_start_c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PRIVATE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_56

    :goto_c
    :try_start_d
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PROTECTED:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_55

    :goto_d
    :try_start_e
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STATIC:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_54

    :goto_e
    :try_start_f
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->TRANSIENT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_53

    :goto_f
    :try_start_10
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->NATIVE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_52

    :goto_10
    :try_start_11
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->VOLATILE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_51

    :goto_11
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SYNCHRONIZED:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_50

    :goto_12
    :try_start_13
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STRICTFP:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4f

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4e

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BYTE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_4d

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SHORT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_4c

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CHAR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_4b

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_4a

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LONG:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_49

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FLOAT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_48

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DOUBLE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_47

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BOOLEAN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_46

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->VOID:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_45

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_44

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CASE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_43

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DEFAULT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_42

    :goto_20
    :try_start_21
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IF:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_41

    :goto_21
    :try_start_22
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FOR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_40

    :goto_22
    :try_start_23
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->WHILE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_3f

    :goto_23
    :try_start_24
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DO:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_3e

    :goto_24
    :try_start_25
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->TRY:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_3d

    :goto_25
    :try_start_26
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SWITCH:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_3c

    :goto_26
    :try_start_27
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RETURN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_3b

    :goto_27
    :try_start_28
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->THROW:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_3a

    :goto_28
    :try_start_29
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BREAK:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_39

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CONTINUE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ELSE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_37

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FINALLY:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_36

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CATCH:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_35

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INTLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_34

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LONGLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_33

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FLOATLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_32

    :goto_30
    :try_start_31
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DOUBLELITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :goto_31
    :try_start_32
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CHARLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_30

    :goto_32
    :try_start_33
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STRINGLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_2f

    :goto_33
    :try_start_34
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->TRUE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_2e

    :goto_34
    :try_start_35
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FALSE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_2d

    :goto_35
    :try_start_36
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->NULL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_2c

    :goto_36
    :try_start_37
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->EQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_2b

    :goto_37
    :try_start_38
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PLUSEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_2a

    :goto_38
    :try_start_39
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SUBEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_29

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STAREQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_28

    :goto_3a
    :try_start_3b
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SLASHEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_27

    :goto_3b
    :try_start_3c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PERCENTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_26

    :goto_3c
    :try_start_3d
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->AMPEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_25

    :goto_3d
    :try_start_3e
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BAREQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_24

    :goto_3e
    :try_start_3f
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CARETEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_23

    :goto_3f
    :try_start_40
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LTLTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_22

    :goto_40
    :try_start_41
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTGTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_21

    :goto_41
    :try_start_42
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTGTGTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_20

    :goto_42
    :try_start_43
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BANG:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_1f

    :goto_43
    :try_start_44
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->TILDE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_1e

    :goto_44
    :try_start_45
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_1d

    :goto_45
    :try_start_46
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->THIS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_1c

    :goto_46
    :try_start_47
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SUPER:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_1b

    :goto_47
    :try_start_48
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->NEW:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_1a

    :goto_48
    :try_start_49
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ASSERT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_19

    :goto_49
    :try_start_4a
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_18

    :goto_4a
    :try_start_4b
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_17

    :goto_4b
    :try_start_4c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->QUES:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_16

    :goto_4c
    :try_start_4d
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PLUSPLUS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_15

    :goto_4d
    :try_start_4e
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SUBSUB:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_14

    :goto_4e
    :try_start_4f
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PLUS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_13

    :goto_4f
    :try_start_50
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SUB:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_12

    :goto_50
    :try_start_51
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_11

    :goto_51
    :try_start_52
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTGTGT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_10

    :goto_52
    :try_start_53
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTGT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_f

    :goto_53
    :try_start_54
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_e

    :goto_54
    :try_start_55
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ERROR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_d

    :goto_55
    :try_start_56
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BARBAR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_c

    :goto_56
    :try_start_57
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->AMPAMP:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_b

    :goto_57
    :try_start_58
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BAR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_a

    :goto_58
    :try_start_59
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CARET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_9

    :goto_59
    :try_start_5a
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->AMP:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_8

    :goto_5a
    :try_start_5b
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->EQEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_7

    :goto_5b
    :try_start_5c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BANGEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_6

    :goto_5c
    :try_start_5d
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5

    :goto_5d
    :try_start_5e
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LTLT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_4

    :goto_5e
    :try_start_5f
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STAR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_3

    :goto_5f
    :try_start_60
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SLASH:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_2

    :goto_60
    :try_start_61
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PERCENT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_1

    :goto_61
    :try_start_62
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INSTANCEOF:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_0

    :goto_62
    return-void

    :catch_0
    move-exception v0

    goto :goto_62

    :catch_1
    move-exception v0

    goto :goto_61

    :catch_2
    move-exception v0

    goto :goto_60

    :catch_3
    move-exception v0

    goto :goto_5f

    :catch_4
    move-exception v0

    goto :goto_5e

    :catch_5
    move-exception v0

    goto :goto_5d

    :catch_6
    move-exception v0

    goto :goto_5c

    :catch_7
    move-exception v0

    goto :goto_5b

    :catch_8
    move-exception v0

    goto :goto_5a

    :catch_9
    move-exception v0

    goto :goto_59

    :catch_a
    move-exception v0

    goto/16 :goto_58

    :catch_b
    move-exception v0

    goto/16 :goto_57

    :catch_c
    move-exception v0

    goto/16 :goto_56

    :catch_d
    move-exception v0

    goto/16 :goto_55

    :catch_e
    move-exception v0

    goto/16 :goto_54

    :catch_f
    move-exception v0

    goto/16 :goto_53

    :catch_10
    move-exception v0

    goto/16 :goto_52

    :catch_11
    move-exception v0

    goto/16 :goto_51

    :catch_12
    move-exception v0

    goto/16 :goto_50

    :catch_13
    move-exception v0

    goto/16 :goto_4f

    :catch_14
    move-exception v0

    goto/16 :goto_4e

    :catch_15
    move-exception v0

    goto/16 :goto_4d

    :catch_16
    move-exception v0

    goto/16 :goto_4c

    :catch_17
    move-exception v0

    goto/16 :goto_4b

    :catch_18
    move-exception v0

    goto/16 :goto_4a

    :catch_19
    move-exception v0

    goto/16 :goto_49

    :catch_1a
    move-exception v0

    goto/16 :goto_48

    :catch_1b
    move-exception v0

    goto/16 :goto_47

    :catch_1c
    move-exception v0

    goto/16 :goto_46

    :catch_1d
    move-exception v0

    goto/16 :goto_45

    :catch_1e
    move-exception v0

    goto/16 :goto_44

    :catch_1f
    move-exception v0

    goto/16 :goto_43

    :catch_20
    move-exception v0

    goto/16 :goto_42

    :catch_21
    move-exception v0

    goto/16 :goto_41

    :catch_22
    move-exception v0

    goto/16 :goto_40

    :catch_23
    move-exception v0

    goto/16 :goto_3f

    :catch_24
    move-exception v0

    goto/16 :goto_3e

    :catch_25
    move-exception v0

    goto/16 :goto_3d

    :catch_26
    move-exception v0

    goto/16 :goto_3c

    :catch_27
    move-exception v0

    goto/16 :goto_3b

    :catch_28
    move-exception v0

    goto/16 :goto_3a

    :catch_29
    move-exception v0

    goto/16 :goto_39

    :catch_2a
    move-exception v0

    goto/16 :goto_38

    :catch_2b
    move-exception v0

    goto/16 :goto_37

    :catch_2c
    move-exception v0

    goto/16 :goto_36

    :catch_2d
    move-exception v0

    goto/16 :goto_35

    :catch_2e
    move-exception v0

    goto/16 :goto_34

    :catch_2f
    move-exception v0

    goto/16 :goto_33

    :catch_30
    move-exception v0

    goto/16 :goto_32

    :catch_31
    move-exception v0

    goto/16 :goto_31

    :catch_32
    move-exception v0

    goto/16 :goto_30

    :catch_33
    move-exception v0

    goto/16 :goto_2f

    :catch_34
    move-exception v0

    goto/16 :goto_2e

    :catch_35
    move-exception v0

    goto/16 :goto_2d

    :catch_36
    move-exception v0

    goto/16 :goto_2c

    :catch_37
    move-exception v0

    goto/16 :goto_2b

    :catch_38
    move-exception v0

    goto/16 :goto_2a

    :catch_39
    move-exception v0

    goto/16 :goto_29

    :catch_3a
    move-exception v0

    goto/16 :goto_28

    :catch_3b
    move-exception v0

    goto/16 :goto_27

    :catch_3c
    move-exception v0

    goto/16 :goto_26

    :catch_3d
    move-exception v0

    goto/16 :goto_25

    :catch_3e
    move-exception v0

    goto/16 :goto_24

    :catch_3f
    move-exception v0

    goto/16 :goto_23

    :catch_40
    move-exception v0

    goto/16 :goto_22

    :catch_41
    move-exception v0

    goto/16 :goto_21

    :catch_42
    move-exception v0

    goto/16 :goto_20

    :catch_43
    move-exception v0

    goto/16 :goto_1f

    :catch_44
    move-exception v0

    goto/16 :goto_1e

    :catch_45
    move-exception v0

    goto/16 :goto_1d

    :catch_46
    move-exception v0

    goto/16 :goto_1c

    :catch_47
    move-exception v0

    goto/16 :goto_1b

    :catch_48
    move-exception v0

    goto/16 :goto_1a

    :catch_49
    move-exception v0

    goto/16 :goto_19

    :catch_4a
    move-exception v0

    goto/16 :goto_18

    :catch_4b
    move-exception v0

    goto/16 :goto_17

    :catch_4c
    move-exception v0

    goto/16 :goto_16

    :catch_4d
    move-exception v0

    goto/16 :goto_15

    :catch_4e
    move-exception v0

    goto/16 :goto_14

    :catch_4f
    move-exception v0

    goto/16 :goto_13

    :catch_50
    move-exception v0

    goto/16 :goto_12

    :catch_51
    move-exception v0

    goto/16 :goto_11

    :catch_52
    move-exception v0

    goto/16 :goto_10

    :catch_53
    move-exception v0

    goto/16 :goto_f

    :catch_54
    move-exception v0

    goto/16 :goto_e

    :catch_55
    move-exception v0

    goto/16 :goto_d

    :catch_56
    move-exception v0

    goto/16 :goto_c

    :catch_57
    move-exception v0

    goto/16 :goto_b

    :catch_58
    move-exception v0

    goto/16 :goto_a

    :catch_59
    move-exception v0

    goto/16 :goto_9

    :catch_5a
    move-exception v0

    goto/16 :goto_8

    :catch_5b
    move-exception v0

    goto/16 :goto_7

    :catch_5c
    move-exception v0

    goto/16 :goto_6

    :catch_5d
    move-exception v0

    goto/16 :goto_5

    :catch_5e
    move-exception v0

    goto/16 :goto_4

    :catch_5f
    move-exception v0

    goto/16 :goto_3

    :catch_60
    move-exception v0

    goto/16 :goto_2

    :catch_61
    move-exception v0

    goto/16 :goto_1

    :catch_62
    move-exception v0

    goto/16 :goto_0
.end method
