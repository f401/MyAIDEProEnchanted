.class synthetic Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;
.super Ljava/lang/Object;
.source "JavadocFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 71
    invoke-static {}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->values()[Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    :try_start_9
    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BEGIN_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_189

    :goto_12
    :try_start_12
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->END_JAVADOC:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_186

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FOOTER_JAVADOC_TAG_START:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_183

    :goto_28
    :try_start_28
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_180

    :goto_33
    :try_start_33
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_17d

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_17a

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_177

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HEADER_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_174

    :goto_60
    :try_start_60
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_171

    :goto_6c
    :try_start_6c
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_16e

    :goto_78
    :try_start_78
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BLOCKQUOTE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_16b

    :goto_84
    :try_start_84
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_168

    :goto_90
    :try_start_90
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PRE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_165

    :goto_9c
    :try_start_9c
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->CODE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_162

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->CODE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_15f

    :goto_b4
    :try_start_b4
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_OPEN_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_15c

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->TABLE_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_159

    :goto_cc
    :try_start_cc
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->MOE_BEGIN_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_157

    :goto_d8
    :try_start_d8
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->MOE_END_STRIP_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_155

    :goto_e4
    :try_start_e4
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->HTML_COMMENT:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_153

    :goto_f0
    :try_start_f0
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->BR_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_151

    :goto_fc
    :try_start_fc
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_14f

    :goto_108
    :try_start_108
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->FORCED_NEWLINE:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_14d

    :goto_114
    :try_start_114
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LITERAL:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_14b

    :goto_120
    :try_start_120
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->PARAGRAPH_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_149

    :goto_12c
    :try_start_12c
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->LIST_ITEM_CLOSE_TAG:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_147

    :goto_138
    :try_start_138
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocFormatter$1;->$SwitchMap$com$google$googlejavaformat$java$javadoc$Token$Type:[I

    sget-object v1, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->OPTIONAL_LINE_BREAK:Lcom/google/googlejavaformat/java/javadoc/Token$Type;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javadoc/Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_145

    :goto_144
    return-void

    :catch_145
    move-exception v0

    goto :goto_144

    :catch_147
    move-exception v0

    goto :goto_138

    :catch_149
    move-exception v0

    goto :goto_12c

    :catch_14b
    move-exception v0

    goto :goto_120

    :catch_14d
    move-exception v0

    goto :goto_114

    :catch_14f
    move-exception v0

    goto :goto_108

    :catch_151
    move-exception v0

    goto :goto_fc

    :catch_153
    move-exception v0

    goto :goto_f0

    :catch_155
    move-exception v0

    goto :goto_e4

    :catch_157
    move-exception v0

    goto :goto_d8

    :catch_159
    move-exception v0

    goto/16 :goto_cc

    :catch_15c
    move-exception v0

    goto/16 :goto_c0

    :catch_15f
    move-exception v0

    goto/16 :goto_b4

    :catch_162
    move-exception v0

    goto/16 :goto_a8

    :catch_165
    move-exception v0

    goto/16 :goto_9c

    :catch_168
    move-exception v0

    goto/16 :goto_90

    :catch_16b
    move-exception v0

    goto/16 :goto_84

    :catch_16e
    move-exception v0

    goto/16 :goto_78

    :catch_171
    move-exception v0

    goto/16 :goto_6c

    :catch_174
    move-exception v0

    goto/16 :goto_60

    :catch_177
    move-exception v0

    goto/16 :goto_54

    :catch_17a
    move-exception v0

    goto/16 :goto_49

    :catch_17d
    move-exception v0

    goto/16 :goto_3e

    :catch_180
    move-exception v0

    goto/16 :goto_33

    :catch_183
    move-exception v0

    goto/16 :goto_28

    :catch_186
    move-exception v0

    goto/16 :goto_1d

    :catch_189
    move-exception v0

    goto/16 :goto_12
.end method
