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

    :try_start_9
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_5c1

    :goto_12
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PUBLIC:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_5be

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FINAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_5bb

    :goto_28
    :try_start_28
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ABSTRACT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_5b8

    :goto_33
    :try_start_33
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->MONKEYS_AT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_5b5

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_5b2

    :goto_49
    :try_start_49
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CLASS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_5af

    :goto_54
    :try_start_54
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INTERFACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_5ac

    :goto_60
    :try_start_60
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_5a9

    :goto_6c
    :try_start_6c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IMPORT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_5a6

    :goto_78
    :try_start_78
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_5a3

    :goto_84
    :try_start_84
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_5a0

    :goto_90
    :try_start_90
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PRIVATE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_59d

    :goto_9c
    :try_start_9c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PROTECTED:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_59a

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STATIC:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_597

    :goto_b4
    :try_start_b4
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->TRANSIENT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_594

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->NATIVE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_591

    :goto_cc
    :try_start_cc
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->VOLATILE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_58e

    :goto_d8
    :try_start_d8
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SYNCHRONIZED:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_58b

    :goto_e4
    :try_start_e4
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STRICTFP:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_588

    :goto_f0
    :try_start_f0
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_585

    :goto_fc
    :try_start_fc
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BYTE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_582

    :goto_108
    :try_start_108
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SHORT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_57f

    :goto_114
    :try_start_114
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CHAR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_57c

    :goto_120
    :try_start_120
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_579

    :goto_12c
    :try_start_12c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LONG:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_576

    :goto_138
    :try_start_138
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FLOAT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_573

    :goto_144
    :try_start_144
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DOUBLE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_570

    :goto_150
    :try_start_150
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BOOLEAN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_56d

    :goto_15c
    :try_start_15c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->VOID:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_56a

    :goto_168
    :try_start_168
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_567

    :goto_174
    :try_start_174
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CASE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_564

    :goto_180
    :try_start_180
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DEFAULT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18c} :catch_561

    :goto_18c
    :try_start_18c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IF:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_198} :catch_55e

    :goto_198
    :try_start_198
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FOR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_55b

    :goto_1a4
    :try_start_1a4
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->WHILE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_558

    :goto_1b0
    :try_start_1b0
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DO:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b0 .. :try_end_1bc} :catch_555

    :goto_1bc
    :try_start_1bc
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->TRY:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bc .. :try_end_1c8} :catch_552

    :goto_1c8
    :try_start_1c8
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SWITCH:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d4} :catch_54f

    :goto_1d4
    :try_start_1d4
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RETURN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_1e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d4 .. :try_end_1e0} :catch_54c

    :goto_1e0
    :try_start_1e0
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->THROW:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e0 .. :try_end_1ec} :catch_549

    :goto_1ec
    :try_start_1ec
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BREAK:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ec .. :try_end_1f8} :catch_546

    :goto_1f8
    :try_start_1f8
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CONTINUE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f8 .. :try_end_204} :catch_543

    :goto_204
    :try_start_204
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ELSE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_210
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_210} :catch_540

    :goto_210
    :try_start_210
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FINALLY:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_21c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_210 .. :try_end_21c} :catch_53d

    :goto_21c
    :try_start_21c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CATCH:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_228
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21c .. :try_end_228} :catch_53a

    :goto_228
    :try_start_228
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INTLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_234
    .catch Ljava/lang/NoSuchFieldError; {:try_start_228 .. :try_end_234} :catch_537

    :goto_234
    :try_start_234
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LONGLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_240
    .catch Ljava/lang/NoSuchFieldError; {:try_start_234 .. :try_end_240} :catch_534

    :goto_240
    :try_start_240
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FLOATLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_24c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_240 .. :try_end_24c} :catch_531

    :goto_24c
    :try_start_24c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DOUBLELITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_258
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24c .. :try_end_258} :catch_52e

    :goto_258
    :try_start_258
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CHARLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_264
    .catch Ljava/lang/NoSuchFieldError; {:try_start_258 .. :try_end_264} :catch_52b

    :goto_264
    :try_start_264
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STRINGLITERAL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_270
    .catch Ljava/lang/NoSuchFieldError; {:try_start_264 .. :try_end_270} :catch_528

    :goto_270
    :try_start_270
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->TRUE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_27c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_270 .. :try_end_27c} :catch_525

    :goto_27c
    :try_start_27c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->FALSE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_288
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27c .. :try_end_288} :catch_522

    :goto_288
    :try_start_288
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->NULL:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_294
    .catch Ljava/lang/NoSuchFieldError; {:try_start_288 .. :try_end_294} :catch_51f

    :goto_294
    :try_start_294
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->EQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_2a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_294 .. :try_end_2a0} :catch_51c

    :goto_2a0
    :try_start_2a0
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PLUSEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_2ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a0 .. :try_end_2ac} :catch_519

    :goto_2ac
    :try_start_2ac
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SUBEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_2b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ac .. :try_end_2b8} :catch_516

    :goto_2b8
    :try_start_2b8
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STAREQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_2c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b8 .. :try_end_2c4} :catch_513

    :goto_2c4
    :try_start_2c4
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SLASHEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_2d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c4 .. :try_end_2d0} :catch_510

    :goto_2d0
    :try_start_2d0
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PERCENTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_2dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d0 .. :try_end_2dc} :catch_50d

    :goto_2dc
    :try_start_2dc
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->AMPEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_2e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2dc .. :try_end_2e8} :catch_50a

    :goto_2e8
    :try_start_2e8
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BAREQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_2f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e8 .. :try_end_2f4} :catch_507

    :goto_2f4
    :try_start_2f4
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CARETEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_300
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f4 .. :try_end_300} :catch_504

    :goto_300
    :try_start_300
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LTLTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_30c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_300 .. :try_end_30c} :catch_501

    :goto_30c
    :try_start_30c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTGTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_318
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30c .. :try_end_318} :catch_4fe

    :goto_318
    :try_start_318
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTGTGTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_324
    .catch Ljava/lang/NoSuchFieldError; {:try_start_318 .. :try_end_324} :catch_4fb

    :goto_324
    :try_start_324
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BANG:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_330
    .catch Ljava/lang/NoSuchFieldError; {:try_start_324 .. :try_end_330} :catch_4f8

    :goto_330
    :try_start_330
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->TILDE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_33c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_330 .. :try_end_33c} :catch_4f5

    :goto_33c
    :try_start_33c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_348
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33c .. :try_end_348} :catch_4f2

    :goto_348
    :try_start_348
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->THIS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_354
    .catch Ljava/lang/NoSuchFieldError; {:try_start_348 .. :try_end_354} :catch_4ef

    :goto_354
    :try_start_354
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SUPER:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_360
    .catch Ljava/lang/NoSuchFieldError; {:try_start_354 .. :try_end_360} :catch_4ec

    :goto_360
    :try_start_360
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->NEW:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_36c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_360 .. :try_end_36c} :catch_4e9

    :goto_36c
    :try_start_36c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ASSERT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_378
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36c .. :try_end_378} :catch_4e6

    :goto_378
    :try_start_378
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_384
    .catch Ljava/lang/NoSuchFieldError; {:try_start_378 .. :try_end_384} :catch_4e3

    :goto_384
    :try_start_384
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_390
    .catch Ljava/lang/NoSuchFieldError; {:try_start_384 .. :try_end_390} :catch_4e0

    :goto_390
    :try_start_390
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->QUES:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_39c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_390 .. :try_end_39c} :catch_4dd

    :goto_39c
    :try_start_39c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PLUSPLUS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_3a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39c .. :try_end_3a8} :catch_4da

    :goto_3a8
    :try_start_3a8
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SUBSUB:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_3b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a8 .. :try_end_3b4} :catch_4d7

    :goto_3b4
    :try_start_3b4
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PLUS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_3c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b4 .. :try_end_3c0} :catch_4d4

    :goto_3c0
    :try_start_3c0
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SUB:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_3cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c0 .. :try_end_3cc} :catch_4d1

    :goto_3cc
    :try_start_3cc
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_3d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3cc .. :try_end_3d8} :catch_4ce

    :goto_3d8
    :try_start_3d8
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTGTGT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_3e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d8 .. :try_end_3e4} :catch_4cb

    :goto_3e4
    :try_start_3e4
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GTGT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_3f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e4 .. :try_end_3f0} :catch_4c8

    :goto_3f0
    :try_start_3f0
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_3fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f0 .. :try_end_3fc} :catch_4c5

    :goto_3fc
    :try_start_3fc
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ERROR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_408
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3fc .. :try_end_408} :catch_4c2

    :goto_408
    :try_start_408
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BARBAR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_414
    .catch Ljava/lang/NoSuchFieldError; {:try_start_408 .. :try_end_414} :catch_4bf

    :goto_414
    :try_start_414
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->AMPAMP:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_420
    .catch Ljava/lang/NoSuchFieldError; {:try_start_414 .. :try_end_420} :catch_4bc

    :goto_420
    :try_start_420
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BAR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_42c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_420 .. :try_end_42c} :catch_4b9

    :goto_42c
    :try_start_42c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CARET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_438
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42c .. :try_end_438} :catch_4b7

    :goto_438
    :try_start_438
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->AMP:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_444
    .catch Ljava/lang/NoSuchFieldError; {:try_start_438 .. :try_end_444} :catch_4b5

    :goto_444
    :try_start_444
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->EQEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_450
    .catch Ljava/lang/NoSuchFieldError; {:try_start_444 .. :try_end_450} :catch_4b3

    :goto_450
    :try_start_450
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->BANGEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_45c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_450 .. :try_end_45c} :catch_4b1

    :goto_45c
    :try_start_45c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_468
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45c .. :try_end_468} :catch_4af

    :goto_468
    :try_start_468
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LTLT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_474
    .catch Ljava/lang/NoSuchFieldError; {:try_start_468 .. :try_end_474} :catch_4ad

    :goto_474
    :try_start_474
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->STAR:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_480
    .catch Ljava/lang/NoSuchFieldError; {:try_start_474 .. :try_end_480} :catch_4ab

    :goto_480
    :try_start_480
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SLASH:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_48c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_480 .. :try_end_48c} :catch_4a9

    :goto_48c
    :try_start_48c
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PERCENT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_498
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48c .. :try_end_498} :catch_4a7

    :goto_498
    :try_start_498
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INSTANCEOF:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_4a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_498 .. :try_end_4a4} :catch_4a5

    :goto_4a4
    return-void

    :catch_4a5
    move-exception v0

    goto :goto_4a4

    :catch_4a7
    move-exception v0

    goto :goto_498

    :catch_4a9
    move-exception v0

    goto :goto_48c

    :catch_4ab
    move-exception v0

    goto :goto_480

    :catch_4ad
    move-exception v0

    goto :goto_474

    :catch_4af
    move-exception v0

    goto :goto_468

    :catch_4b1
    move-exception v0

    goto :goto_45c

    :catch_4b3
    move-exception v0

    goto :goto_450

    :catch_4b5
    move-exception v0

    goto :goto_444

    :catch_4b7
    move-exception v0

    goto :goto_438

    :catch_4b9
    move-exception v0

    goto/16 :goto_42c

    :catch_4bc
    move-exception v0

    goto/16 :goto_420

    :catch_4bf
    move-exception v0

    goto/16 :goto_414

    :catch_4c2
    move-exception v0

    goto/16 :goto_408

    :catch_4c5
    move-exception v0

    goto/16 :goto_3fc

    :catch_4c8
    move-exception v0

    goto/16 :goto_3f0

    :catch_4cb
    move-exception v0

    goto/16 :goto_3e4

    :catch_4ce
    move-exception v0

    goto/16 :goto_3d8

    :catch_4d1
    move-exception v0

    goto/16 :goto_3cc

    :catch_4d4
    move-exception v0

    goto/16 :goto_3c0

    :catch_4d7
    move-exception v0

    goto/16 :goto_3b4

    :catch_4da
    move-exception v0

    goto/16 :goto_3a8

    :catch_4dd
    move-exception v0

    goto/16 :goto_39c

    :catch_4e0
    move-exception v0

    goto/16 :goto_390

    :catch_4e3
    move-exception v0

    goto/16 :goto_384

    :catch_4e6
    move-exception v0

    goto/16 :goto_378

    :catch_4e9
    move-exception v0

    goto/16 :goto_36c

    :catch_4ec
    move-exception v0

    goto/16 :goto_360

    :catch_4ef
    move-exception v0

    goto/16 :goto_354

    :catch_4f2
    move-exception v0

    goto/16 :goto_348

    :catch_4f5
    move-exception v0

    goto/16 :goto_33c

    :catch_4f8
    move-exception v0

    goto/16 :goto_330

    :catch_4fb
    move-exception v0

    goto/16 :goto_324

    :catch_4fe
    move-exception v0

    goto/16 :goto_318

    :catch_501
    move-exception v0

    goto/16 :goto_30c

    :catch_504
    move-exception v0

    goto/16 :goto_300

    :catch_507
    move-exception v0

    goto/16 :goto_2f4

    :catch_50a
    move-exception v0

    goto/16 :goto_2e8

    :catch_50d
    move-exception v0

    goto/16 :goto_2dc

    :catch_510
    move-exception v0

    goto/16 :goto_2d0

    :catch_513
    move-exception v0

    goto/16 :goto_2c4

    :catch_516
    move-exception v0

    goto/16 :goto_2b8

    :catch_519
    move-exception v0

    goto/16 :goto_2ac

    :catch_51c
    move-exception v0

    goto/16 :goto_2a0

    :catch_51f
    move-exception v0

    goto/16 :goto_294

    :catch_522
    move-exception v0

    goto/16 :goto_288

    :catch_525
    move-exception v0

    goto/16 :goto_27c

    :catch_528
    move-exception v0

    goto/16 :goto_270

    :catch_52b
    move-exception v0

    goto/16 :goto_264

    :catch_52e
    move-exception v0

    goto/16 :goto_258

    :catch_531
    move-exception v0

    goto/16 :goto_24c

    :catch_534
    move-exception v0

    goto/16 :goto_240

    :catch_537
    move-exception v0

    goto/16 :goto_234

    :catch_53a
    move-exception v0

    goto/16 :goto_228

    :catch_53d
    move-exception v0

    goto/16 :goto_21c

    :catch_540
    move-exception v0

    goto/16 :goto_210

    :catch_543
    move-exception v0

    goto/16 :goto_204

    :catch_546
    move-exception v0

    goto/16 :goto_1f8

    :catch_549
    move-exception v0

    goto/16 :goto_1ec

    :catch_54c
    move-exception v0

    goto/16 :goto_1e0

    :catch_54f
    move-exception v0

    goto/16 :goto_1d4

    :catch_552
    move-exception v0

    goto/16 :goto_1c8

    :catch_555
    move-exception v0

    goto/16 :goto_1bc

    :catch_558
    move-exception v0

    goto/16 :goto_1b0

    :catch_55b
    move-exception v0

    goto/16 :goto_1a4

    :catch_55e
    move-exception v0

    goto/16 :goto_198

    :catch_561
    move-exception v0

    goto/16 :goto_18c

    :catch_564
    move-exception v0

    goto/16 :goto_180

    :catch_567
    move-exception v0

    goto/16 :goto_174

    :catch_56a
    move-exception v0

    goto/16 :goto_168

    :catch_56d
    move-exception v0

    goto/16 :goto_15c

    :catch_570
    move-exception v0

    goto/16 :goto_150

    :catch_573
    move-exception v0

    goto/16 :goto_144

    :catch_576
    move-exception v0

    goto/16 :goto_138

    :catch_579
    move-exception v0

    goto/16 :goto_12c

    :catch_57c
    move-exception v0

    goto/16 :goto_120

    :catch_57f
    move-exception v0

    goto/16 :goto_114

    :catch_582
    move-exception v0

    goto/16 :goto_108

    :catch_585
    move-exception v0

    goto/16 :goto_fc

    :catch_588
    move-exception v0

    goto/16 :goto_f0

    :catch_58b
    move-exception v0

    goto/16 :goto_e4

    :catch_58e
    move-exception v0

    goto/16 :goto_d8

    :catch_591
    move-exception v0

    goto/16 :goto_cc

    :catch_594
    move-exception v0

    goto/16 :goto_c0

    :catch_597
    move-exception v0

    goto/16 :goto_b4

    :catch_59a
    move-exception v0

    goto/16 :goto_a8

    :catch_59d
    move-exception v0

    goto/16 :goto_9c

    :catch_5a0
    move-exception v0

    goto/16 :goto_90

    :catch_5a3
    move-exception v0

    goto/16 :goto_84

    :catch_5a6
    move-exception v0

    goto/16 :goto_78

    :catch_5a9
    move-exception v0

    goto/16 :goto_6c

    :catch_5ac
    move-exception v0

    goto/16 :goto_60

    :catch_5af
    move-exception v0

    goto/16 :goto_54

    :catch_5b2
    move-exception v0

    goto/16 :goto_49

    :catch_5b5
    move-exception v0

    goto/16 :goto_3e

    :catch_5b8
    move-exception v0

    goto/16 :goto_33

    :catch_5bb
    move-exception v0

    goto/16 :goto_28

    :catch_5be
    move-exception v0

    goto/16 :goto_1d

    :catch_5c1
    move-exception v0

    goto/16 :goto_12
.end method
