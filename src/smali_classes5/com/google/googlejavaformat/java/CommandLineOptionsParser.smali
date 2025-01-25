.class final Lcom/google/googlejavaformat/java/CommandLineOptionsParser;
.super Ljava/lang/Object;
.source "CommandLineOptionsParser.java"


# static fields
.field private static final COLON_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final COMMA_SPLITTER:Lcom/google/common/base/Splitter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->COMMA_SPLITTER:Lcom/google/common/base/Splitter;

    .line 30
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Ljava/lang/String;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    if-eqz p2, :cond_3

    .line 129
    :goto_2
    return-object p2

    .line 126
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_2

    .line 127
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "required value was not provided for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static parse(Ljava/lang/Iterable;)Lcom/google/googlejavaformat/java/CommandLineOptions;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlejavaformat/java/CommandLineOptions;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 36
    invoke-static {}, Lcom/google/googlejavaformat/java/CommandLineOptions;->builder()Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    move-result-object v5

    .line 37
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 38
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 39
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 41
    invoke-virtual {v5}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->filesBuilder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 110
    :cond_29
    invoke-virtual {v5}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->build()Lcom/google/googlejavaformat/java/CommandLineOptions;

    move-result-object v0

    return-object v0

    .line 46
    :cond_2e
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 47
    if-ltz v1, :cond_67

    .line 48
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 49
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 55
    :goto_45
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1de

    :cond_4d
    :goto_4d
    packed-switch v0, :pswitch_data_248

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_67
    const/4 v1, 0x0

    move-object v2, v0

    goto :goto_45

    .line 55
    :sswitch_6a
    const-string v7, "--version"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0xf

    goto :goto_4d

    :sswitch_75
    const-string v7, "--experimental-remove-javadoc-only-imports"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x16

    goto :goto_4d

    :sswitch_80
    const-string v7, "-version"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x10

    goto :goto_4d

    :sswitch_8b
    const-string v7, "-lines"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/4 v0, 0x5

    goto :goto_4d

    :sswitch_95
    const-string v7, "--offset"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x8

    goto :goto_4d

    :sswitch_a0
    const-string v7, "--line"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/4 v0, 0x6

    goto :goto_4d

    :sswitch_aa
    const-string v7, "--help"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x12

    goto :goto_4d

    :sswitch_b5
    const-string v7, "--aosp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0xc

    goto :goto_4d

    :sswitch_c0
    const-string v7, "--length"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0xa

    goto :goto_4d

    :sswitch_cb
    const-string v7, "--skip-removing-unused-imports"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x18

    goto/16 :goto_4d

    :sswitch_d7
    const-string v7, "-offset"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x9

    goto/16 :goto_4d

    :sswitch_e3
    const-string v7, "-length"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0xb

    goto/16 :goto_4d

    :sswitch_ef
    const-string v7, "-line"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/4 v0, 0x7

    goto/16 :goto_4d

    :sswitch_fa
    const-string v7, "-help"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x13

    goto/16 :goto_4d

    :sswitch_106
    const-string v7, "-aosp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0xd

    goto/16 :goto_4d

    :sswitch_112
    const-string v7, "-v"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x11

    goto/16 :goto_4d

    :sswitch_11e
    const-string v7, "-r"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    move v0, v3

    goto/16 :goto_4d

    :sswitch_129
    const-string v7, "-i"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    move v0, v4

    goto/16 :goto_4d

    :sswitch_134
    const-string v7, "-h"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x14

    goto/16 :goto_4d

    :sswitch_140
    const-string v7, "-a"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0xe

    goto/16 :goto_4d

    :sswitch_14c
    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x19

    goto/16 :goto_4d

    :sswitch_158
    const-string v7, "--fix-imports-only"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x15

    goto/16 :goto_4d

    :sswitch_164
    const-string v7, "--skip-sorting-imports"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 v0, 0x17

    goto/16 :goto_4d

    :sswitch_170
    const-string v7, "--lines"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/4 v0, 0x4

    goto/16 :goto_4d

    :sswitch_17b
    const-string v7, "--replace"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/4 v0, 0x3

    goto/16 :goto_4d

    :sswitch_186
    const-string v7, "-replace"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/4 v0, 0x2

    goto/16 :goto_4d

    .line 104
    :pswitch_191  #0x19
    invoke-virtual {v5, v3}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->stdin(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 101
    :pswitch_196  #0x18
    invoke-virtual {v5, v4}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->removeUnusedImports(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 98
    :pswitch_19b  #0x17
    invoke-virtual {v5, v4}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->sortImports(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 95
    :pswitch_1a0  #0x16
    invoke-virtual {v5, v3}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->removeJavadocOnlyImports(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 92
    :pswitch_1a5  #0x15
    invoke-virtual {v5, v3}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->fixImportsOnly(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 89
    :pswitch_1aa  #0x12, 0x13, 0x14
    invoke-virtual {v5, v3}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->help(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 84
    :pswitch_1af  #0xf, 0x10, 0x11
    invoke-virtual {v5, v3}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->version(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 79
    :pswitch_1b4  #0xc, 0xd, 0xe
    invoke-virtual {v5, v3}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->aosp(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 74
    :pswitch_1b9  #0xa, 0xb
    invoke-static {v6, v2, v1}, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->parseInteger(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->addLength(Ljava/lang/Integer;)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 70
    :pswitch_1c2  #0x8, 0x9
    invoke-static {v6, v2, v1}, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->parseInteger(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->addOffset(Ljava/lang/Integer;)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 66
    :pswitch_1cb  #0x4, 0x5, 0x6, 0x7
    invoke-virtual {v5}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->linesBuilder()Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object v0

    invoke-static {v2, v6, v1}, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->getValue(Ljava/lang/String;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->parseRangeSet(Lcom/google/common/collect/ImmutableRangeSet$Builder;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 60
    :pswitch_1d8  #0x0, 0x1, 0x2, 0x3
    invoke-virtual {v5, v3}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->inPlace(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    goto/16 :goto_a

    .line 55
    nop

    :sswitch_data_1de
    .sparse-switch
        -0x7c2e6a19 -> :sswitch_186
        -0x6c26e6ec -> :sswitch_17b
        -0x609a32a1 -> :sswitch_170
        -0x290c8c89 -> :sswitch_164
        -0x3d4a2fd -> :sswitch_158
        0x2d -> :sswitch_14c
        0x5d4 -> :sswitch_140
        0x5db -> :sswitch_134
        0x5dc -> :sswitch_129
        0x5e5 -> :sswitch_11e
        0x5e9 -> :sswitch_112
        0x2a7e8b8 -> :sswitch_106
        0x2aaf0ee -> :sswitch_fa
        0x2acd1a1 -> :sswitch_ef
        0xa86a553 -> :sswitch_e3
        0xfafcf00 -> :sswitch_d7
        0x1229bed5 -> :sswitch_cb
        0x4d1b8886 -> :sswitch_c0
        0x4f71fcab -> :sswitch_b5
        0x4f7504e1 -> :sswitch_aa
        0x4f76e594 -> :sswitch_a0
        0x5244b233 -> :sswitch_95
        0x52ed62f2 -> :sswitch_8b
        0x578a000b -> :sswitch_80
        0x620924c8 -> :sswitch_75
        0x67918338 -> :sswitch_6a
    .end sparse-switch

    :pswitch_data_248
    .packed-switch 0x0
        :pswitch_1d8  #00000000
        :pswitch_1d8  #00000001
        :pswitch_1d8  #00000002
        :pswitch_1d8  #00000003
        :pswitch_1cb  #00000004
        :pswitch_1cb  #00000005
        :pswitch_1cb  #00000006
        :pswitch_1cb  #00000007
        :pswitch_1c2  #00000008
        :pswitch_1c2  #00000009
        :pswitch_1b9  #0000000a
        :pswitch_1b9  #0000000b
        :pswitch_1b4  #0000000c
        :pswitch_1b4  #0000000d
        :pswitch_1b4  #0000000e
        :pswitch_1af  #0000000f
        :pswitch_1af  #00000010
        :pswitch_1af  #00000011
        :pswitch_1aa  #00000012
        :pswitch_1aa  #00000013
        :pswitch_1aa  #00000014
        :pswitch_1a5  #00000015
        :pswitch_1a0  #00000016
        :pswitch_19b  #00000017
        :pswitch_196  #00000018
        :pswitch_191  #00000019
    .end packed-switch
.end method

.method private static parseInteger(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->getValue(Ljava/lang/String;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 116
    :catch_9
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid integer value for %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseRange(Ljava/lang/String;)Lcom/google/common/collect/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    sget-object v0, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 150
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_3e

    const/4 v2, 0x2

    if-ne v0, v2, :cond_38

    .line 155
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 156
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 157
    add-int/lit8 v1, v2, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    :goto_37
    return-object v0

    .line 159
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_3e
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_37
.end method

.method private static parseRangeSet(Lcom/google/common/collect/ImmutableRangeSet$Builder;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->COMMA_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    invoke-static {v0}, Lcom/google/googlejavaformat/java/CommandLineOptionsParser;->parseRange(Ljava/lang/String;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->add(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    goto :goto_a

    .line 142
    :cond_1e
    return-void
.end method
