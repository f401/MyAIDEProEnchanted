.class public Lcom/sun/tools/javac/parser/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Lcom/sun/tools/javac/parser/Lexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/parser/Scanner$CommentStyle;
    }
.end annotation


# static fields
.field private static final hexFloatsWork:Z

.field private static scannerDebug:Z

.field static final surrogatesSupported:Z


# instance fields
.field private allowBinaryLiterals:Z

.field private allowHexFloats:Z

.field private allowUnderscoresInLiterals:Z

.field private bp:I

.field private buf:[C

.field private buflen:I

.field private ch:C

.field protected deprecatedFlag:Z

.field private endPos:I

.field private eofPos:I

.field private errPos:I

.field private final keywords:Lcom/sun/tools/javac/parser/Keywords;

.field private final log:Lcom/sun/tools/javac/util/Log;

.field private name:Lcom/sun/tools/javac/util/Name;

.field private final names:Lcom/sun/tools/javac/util/Names;

.field private pos:I

.field private prevEndPos:I

.field private radix:I

.field private sbuf:[C

.field private source:Lcom/sun/tools/javac/code/Source;

.field private sp:I

.field private token:Lcom/sun/tools/javac/parser/Token;

.field private unicodeConversionBp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    .line 144
    invoke-static {}, Lcom/sun/tools/javac/parser/Scanner;->hexFloatsWork()Z

    move-result v0

    sput-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->hexFloatsWork:Z

    .line 569
    invoke-static {}, Lcom/sun/tools/javac/parser/Scanner;->surrogatesSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->surrogatesSupported:Z

    return-void
.end method

.method private constructor <init>(Lcom/sun/tools/javac/parser/ScannerFactory;)V
    .registers 4

    const/4 v1, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v1, p0, Lcom/sun/tools/javac/parser/Scanner;->errPos:I

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->deprecatedFlag:Z

    .line 104
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    .line 121
    iput v1, p0, Lcom/sun/tools/javac/parser/Scanner;->unicodeConversionBp:I

    .line 135
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ScannerFactory;->log:Lcom/sun/tools/javac/util/Log;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->log:Lcom/sun/tools/javac/util/Log;

    .line 136
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ScannerFactory;->names:Lcom/sun/tools/javac/util/Names;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->names:Lcom/sun/tools/javac/util/Names;

    .line 137
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ScannerFactory;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    .line 138
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ScannerFactory;->source:Lcom/sun/tools/javac/code/Source;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->source:Lcom/sun/tools/javac/code/Source;

    .line 139
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowBinaryLiterals()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowBinaryLiterals:Z

    .line 140
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowHexFloats()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowHexFloats:Z

    .line 141
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowUnderscoresInLiterals()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowUnderscoresInLiterals:Z

    .line 142
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .registers 5

    .line 158
    invoke-static {p2}, Lcom/sun/tools/javac/file/JavacFileManager;->toArray(Ljava/nio/CharBuffer;)[C

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;-><init>(Lcom/sun/tools/javac/parser/ScannerFactory;[CI)V

    .line 159
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/parser/ScannerFactory;[CI)V
    .registers 7

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/parser/Scanner;-><init>(Lcom/sun/tools/javac/parser/ScannerFactory;)V

    .line 174
    iput p3, p0, Lcom/sun/tools/javac/parser/Scanner;->eofPos:I

    .line 175
    array-length v0, p2

    if-ne p3, v0, :cond_19

    .line 176
    array-length v0, p2

    if-lez v0, :cond_28

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p2, v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 177
    add-int/lit8 p3, p3, -0x1

    .line 184
    :cond_19
    :goto_19
    iput-object p2, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    .line 185
    iput p3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    .line 186
    const/16 v0, 0x1a

    aput-char v0, p2, p3

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 188
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 189
    return-void

    .line 179
    :cond_28
    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [C

    .line 180
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    .line 181
    goto :goto_19
.end method

.method private convertUnicode()V
    .registers 6

    const/16 v3, 0x75

    const/16 v2, 0x5c

    const/16 v4, 0x10

    .line 223
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v2, :cond_58

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->unicodeConversionBp:I

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    if-eq v0, v1, :cond_58

    .line 224
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 225
    if-ne v1, v3, :cond_64

    .line 227
    :cond_1c
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 228
    if-eq v1, v3, :cond_1c

    .line 229
    add-int/lit8 v3, v0, 0x3

    .line 230
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v3, v0, :cond_59

    .line 231
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v1

    move v0, v1

    move v2, v1

    .line 233
    :goto_36
    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    if-ge v1, v3, :cond_4f

    if-ltz v0, :cond_4f

    .line 234
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    aget-char v0, v1, v0

    iput-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 235
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v0

    .line 236
    shl-int/lit8 v1, v2, 0x4

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_36

    .line 238
    :cond_4f
    if-ltz v0, :cond_59

    .line 239
    int-to-char v0, v2

    iput-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 240
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->unicodeConversionBp:I

    .line 250
    :cond_58
    :goto_58
    return-void

    .line 244
    :cond_59
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    const-string v1, "illegal.unicode.esc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_58

    .line 246
    :cond_64
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 247
    iput-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    goto :goto_58
.end method

.method private digit(I)I
    .registers 6

    .line 210
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 211
    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 212
    if-ltz v1, :cond_20

    const/16 v2, 0x7f

    if-le v0, v2, :cond_20

    .line 213
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    add-int/lit8 v0, v0, 0x1

    const-string v2, "illegal.nonascii.digit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 216
    :cond_20
    return v1
.end method

.method private static hexFloatsWork()Z
    .registers 1

    .line 147
    :try_start_0
    const-string v0, "0x1.0p1"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_6
    return v0

    .line 149
    :catch_7
    move-exception v0

    .line 150
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isSpecial(C)Z
    .registers 3

    .line 603
    const/16 v0, 0x21

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x25

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x26

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2d

    packed-switch p1, :pswitch_data_30

    .line 610
    const/4 v0, 0x0

    :goto_2c
    return v0

    .line 608
    :cond_2d
    :pswitch_2d  #0x3c, 0x3d, 0x3e, 0x3f, 0x40
    const/4 v0, 0x1

    goto :goto_2c

    .line 603
    nop

    :pswitch_data_30
    .packed-switch 0x3c
        :pswitch_2d  #0000003c
        :pswitch_2d  #0000003d
        :pswitch_2d  #0000003e
        :pswitch_2d  #0000003f
        :pswitch_2d  #00000040
    .end packed-switch
.end method

.method private varargs lexError(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->ERROR:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 196
    iput p1, p0, Lcom/sun/tools/javac/parser/Scanner;->errPos:I

    .line 197
    return-void
.end method

.method private varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 203
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method private putChar(C)V
    .registers 6

    const/4 v3, 0x0

    .line 277
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    array-length v2, v1

    if-ne v0, v2, :cond_13

    .line 278
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 279
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    .line 282
    :cond_13
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    aput-char p1, v0, v1

    .line 283
    return-void
.end method

.method private scanChar()V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 256
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_13

    .line 257
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->convertUnicode()V

    .line 259
    :cond_13
    return-void
.end method

.method private scanCommentChar()V
    .registers 5

    const/16 v3, 0x5c

    .line 264
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 265
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v3, :cond_1b

    .line 266
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v0, v2

    if-ne v0, v3, :cond_1c

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->unicodeConversionBp:I

    if-eq v0, v1, :cond_1c

    .line 267
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 272
    :cond_1b
    :goto_1b
    return-void

    .line 269
    :cond_1c
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->convertUnicode()V

    goto :goto_1b
.end method

.method private scanDigits(I)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x5f

    .line 340
    :cond_4
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v3, :cond_26

    .line 341
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 348
    :cond_b
    :goto_b
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 349
    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 350
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 351
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v2

    if-gez v2, :cond_4

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v2, v3, :cond_4

    .line 352
    if-ne v0, v3, :cond_25

    .line 353
    const-string v0, "illegal.underscore"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_25
    return-void

    .line 343
    :cond_26
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowUnderscoresInLiterals:Z

    if-nez v0, :cond_b

    .line 344
    const-string v0, "unsupported.underscore.lit"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/Scanner;->allowUnderscoresInLiterals:Z

    goto :goto_b
.end method

.method private scanDocComment()V
    .registers 9

    const/16 v7, 0x9

    const/16 v6, 0x65

    const/16 v5, 0x2f

    const/16 v4, 0x2a

    const/4 v1, 0x1

    .line 640
    :cond_9
    :goto_9
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_36

    .line 646
    :goto_f
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_25

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_21

    if-eq v0, v7, :cond_21

    const/16 v2, 0xc

    if-ne v0, v2, :cond_25

    .line 647
    :cond_21
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto :goto_f

    .line 651
    :cond_25
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_37

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v4, :cond_37

    .line 652
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 653
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_25

    .line 724
    :cond_36
    :goto_36
    return-void

    .line 659
    :cond_37
    :goto_37
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_4d

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_49

    if-eq v0, v7, :cond_49

    const/16 v2, 0xc

    if-ne v0, v2, :cond_4d

    .line 660
    :cond_49
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto :goto_37

    .line 663
    :cond_4d
    const/4 v0, 0x0

    .line 665
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x40

    if-ne v2, v3, :cond_f2

    iget-boolean v2, p0, Lcom/sun/tools/javac/parser/Scanner;->deprecatedFlag:Z

    if-nez v2, :cond_f2

    .line 666
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 667
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x64

    if-ne v2, v3, :cond_f2

    .line 668
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 669
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v2, v6, :cond_f2

    .line 670
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 671
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x70

    if-ne v2, v3, :cond_f2

    .line 672
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 673
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x72

    if-ne v2, v3, :cond_f2

    .line 674
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 675
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v2, v6, :cond_f2

    .line 676
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 677
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x63

    if-ne v2, v3, :cond_f2

    .line 678
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 679
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x61

    if-ne v2, v3, :cond_f2

    .line 680
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 681
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x74

    if-ne v2, v3, :cond_f2

    .line 682
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 683
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v2, v6, :cond_f2

    .line 684
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 685
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_f2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x64

    if-ne v2, v3, :cond_f2

    .line 687
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    move v0, v1

    .line 689
    :cond_f2
    if-eqz v0, :cond_104

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_104

    .line 690
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 691
    iput-boolean v1, p0, Lcom/sun/tools/javac/parser/Scanner;->deprecatedFlag:Z

    .line 702
    :cond_104
    :goto_104
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_9

    .line 703
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_13b

    const/16 v2, 0xd

    if-eq v0, v2, :cond_132

    if-eq v0, v4, :cond_129

    .line 720
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto :goto_104

    .line 692
    :cond_11a
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v4, :cond_104

    .line 693
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 694
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_104

    .line 695
    iput-boolean v1, p0, Lcom/sun/tools/javac/parser/Scanner;->deprecatedFlag:Z

    goto/16 :goto_36

    .line 705
    :cond_129
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 706
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_104

    goto/16 :goto_36

    .line 711
    :cond_132
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 712
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0xa

    if-ne v0, v2, :cond_9

    .line 717
    :cond_13b
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto/16 :goto_9
.end method

.method private scanFraction()V
    .registers 7

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/16 v3, 0xa

    .line 397
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 398
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-gt v4, v0, :cond_12

    if-gt v0, v5, :cond_12

    .line 399
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 401
    :cond_12
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    .line 402
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x45

    if-ne v1, v2, :cond_47

    .line 403
    :cond_1e
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 404
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 405
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 406
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_33

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3b

    .line 407
    :cond_33
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 408
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 410
    :cond_3b
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 411
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-gt v4, v1, :cond_48

    if-gt v1, v5, :cond_48

    .line 412
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 418
    :cond_47
    :goto_47
    return-void

    .line 415
    :cond_48
    const-string v1, "malformed.fp.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    goto :goto_47
.end method

.method private scanFractionAndSuffix()V
    .registers 3

    .line 423
    const/16 v0, 0xa

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->radix:I

    .line 424
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanFraction()V

    .line 425
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_11

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1e

    .line 426
    :cond_11
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 427
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 428
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->FLOATLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 436
    :goto_1d
    return-void

    .line 430
    :cond_1e
    const/16 v1, 0x64

    if-eq v0, v1, :cond_26

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2e

    .line 431
    :cond_26
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 432
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 434
    :cond_2e
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->DOUBLELITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_1d
.end method

.method private scanHexExponentAndSuffix()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 359
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x70

    if-eq v0, v1, :cond_c

    const/16 v1, 0x50

    if-ne v0, v1, :cond_65

    .line 360
    :cond_c
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 361
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 362
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 363
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_21

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_29

    .line 364
    :cond_21
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 365
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 367
    :cond_29
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 368
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x30

    if-gt v1, v0, :cond_79

    const/16 v1, 0x39

    if-gt v0, v1, :cond_79

    .line 369
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 370
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowHexFloats:Z

    if-nez v0, :cond_6d

    .line 371
    const-string v0, "unsupported.fp.lit"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iput-boolean v4, p0, Lcom/sun/tools/javac/parser/Scanner;->allowHexFloats:Z

    .line 381
    :cond_4e
    :goto_4e
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_58

    const/16 v1, 0x46

    if-ne v0, v1, :cond_81

    .line 382
    :cond_58
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 383
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 384
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->FLOATLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 392
    :goto_64
    return-void

    .line 379
    :cond_65
    const-string v0, "malformed.fp.lit"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e

    .line 374
    :cond_6d
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->hexFloatsWork:Z

    if-nez v0, :cond_4e

    .line 375
    const-string v0, "unsupported.cross.fp.lit"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e

    .line 377
    :cond_79
    const-string v0, "malformed.fp.lit"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e

    .line 386
    :cond_81
    const/16 v1, 0x64

    if-eq v0, v1, :cond_89

    const/16 v1, 0x44

    if-ne v0, v1, :cond_91

    .line 387
    :cond_89
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 388
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 390
    :cond_91
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->DOUBLELITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_64
.end method

.method private scanHexFractionAndSuffix(Z)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x10

    .line 441
    iput v4, p0, Lcom/sun/tools/javac/parser/Scanner;->radix:I

    .line 442
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2e

    move v0, v1

    :goto_d
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 443
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 444
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 445
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 446
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v0

    if-ltz v0, :cond_34

    .line 448
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 450
    :goto_24
    if-nez v1, :cond_30

    .line 451
    const-string v0, "invalid.hex.number"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :goto_2d
    return-void

    :cond_2e
    move v0, v2

    .line 442
    goto :goto_d

    .line 453
    :cond_30
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanHexExponentAndSuffix()V

    goto :goto_2d

    :cond_34
    move v1, p1

    goto :goto_24
.end method

.method private scanIdent()V
    .registers 6

    const/4 v1, 0x0

    .line 505
    :cond_1
    :pswitch_1  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1b, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    array-length v3, v2

    if-ne v0, v3, :cond_49

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 508
    :goto_d
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 509
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x24

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_96

    packed-switch v0, :pswitch_data_ac

    packed-switch v0, :pswitch_data_cc

    packed-switch v0, :pswitch_data_e4

    packed-switch v0, :pswitch_data_11c

    .line 541
    const/16 v2, 0x80

    if-ge v0, v2, :cond_52

    move v0, v1

    .line 558
    :goto_32
    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/sun/tools/javac/util/Names;->fromChars([CII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->name:Lcom/sun/tools/javac/util/Name;

    .line 560
    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/parser/Keywords;->key(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 561
    :goto_48
    return-void

    .line 505
    :cond_49
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    iget-char v3, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    aput-char v3, v2, v0

    goto :goto_d

    .line 545
    :cond_52
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanSurrogates()C

    move-result v0

    .line 546
    if-eqz v0, :cond_74

    .line 547
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    iget-object v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_6d

    .line 548
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 552
    :goto_62
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 553
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 552
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    goto :goto_32

    .line 550
    :cond_6d
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    aput-char v0, v3, v2

    goto :goto_62

    .line 555
    :cond_74
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_32

    .line 534
    :pswitch_7b  #0x1a
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-lt v0, v2, :cond_1

    .line 535
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/sun/tools/javac/util/Names;->fromChars([CII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->name:Lcom/sun/tools/javac/util/Name;

    .line 536
    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/parser/Keywords;->key(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_48

    .line 509
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_1  #00000001
        :pswitch_1  #00000002
        :pswitch_1  #00000003
        :pswitch_1  #00000004
        :pswitch_1  #00000005
        :pswitch_1  #00000006
        :pswitch_1  #00000007
        :pswitch_1  #00000008
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0xe
        :pswitch_1  #0000000e
        :pswitch_1  #0000000f
        :pswitch_1  #00000010
        :pswitch_1  #00000011
        :pswitch_1  #00000012
        :pswitch_1  #00000013
        :pswitch_1  #00000014
        :pswitch_1  #00000015
        :pswitch_1  #00000016
        :pswitch_1  #00000017
        :pswitch_1  #00000018
        :pswitch_1  #00000019
        :pswitch_7b  #0000001a
        :pswitch_1  #0000001b
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x30
        :pswitch_1  #00000030
        :pswitch_1  #00000031
        :pswitch_1  #00000032
        :pswitch_1  #00000033
        :pswitch_1  #00000034
        :pswitch_1  #00000035
        :pswitch_1  #00000036
        :pswitch_1  #00000037
        :pswitch_1  #00000038
        :pswitch_1  #00000039
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x41
        :pswitch_1  #00000041
        :pswitch_1  #00000042
        :pswitch_1  #00000043
        :pswitch_1  #00000044
        :pswitch_1  #00000045
        :pswitch_1  #00000046
        :pswitch_1  #00000047
        :pswitch_1  #00000048
        :pswitch_1  #00000049
        :pswitch_1  #0000004a
        :pswitch_1  #0000004b
        :pswitch_1  #0000004c
        :pswitch_1  #0000004d
        :pswitch_1  #0000004e
        :pswitch_1  #0000004f
        :pswitch_1  #00000050
        :pswitch_1  #00000051
        :pswitch_1  #00000052
        :pswitch_1  #00000053
        :pswitch_1  #00000054
        :pswitch_1  #00000055
        :pswitch_1  #00000056
        :pswitch_1  #00000057
        :pswitch_1  #00000058
        :pswitch_1  #00000059
        :pswitch_1  #0000005a
    .end packed-switch

    :pswitch_data_11c
    .packed-switch 0x61
        :pswitch_1  #00000061
        :pswitch_1  #00000062
        :pswitch_1  #00000063
        :pswitch_1  #00000064
        :pswitch_1  #00000065
        :pswitch_1  #00000066
        :pswitch_1  #00000067
        :pswitch_1  #00000068
        :pswitch_1  #00000069
        :pswitch_1  #0000006a
        :pswitch_1  #0000006b
        :pswitch_1  #0000006c
        :pswitch_1  #0000006d
        :pswitch_1  #0000006e
        :pswitch_1  #0000006f
        :pswitch_1  #00000070
        :pswitch_1  #00000071
        :pswitch_1  #00000072
        :pswitch_1  #00000073
        :pswitch_1  #00000074
        :pswitch_1  #00000075
        :pswitch_1  #00000076
        :pswitch_1  #00000077
        :pswitch_1  #00000078
        :pswitch_1  #00000079
        :pswitch_1  #0000007a
    .end packed-switch
.end method

.method private scanLitChar()V
    .registers 9

    const/16 v7, 0x30

    const/16 v6, 0x27

    const/16 v5, 0x22

    const/16 v4, 0x8

    const/16 v3, 0x5c

    .line 288
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v3, :cond_cf

    .line 289
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v0, v2

    if-ne v0, v3, :cond_27

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->unicodeConversionBp:I

    if-eq v0, v1, :cond_27

    .line 290
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 291
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 292
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 334
    :cond_26
    :goto_26
    return-void

    .line 294
    :cond_27
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 295
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v5, :cond_c7

    if-eq v0, v6, :cond_bf

    if-eq v0, v3, :cond_b7

    const/16 v1, 0x62

    if-eq v0, v1, :cond_af

    const/16 v1, 0x66

    if-eq v0, v1, :cond_a5

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_9c

    const/16 v1, 0x72

    if-eq v0, v1, :cond_93

    const/16 v1, 0x74

    if-eq v0, v1, :cond_8a

    packed-switch v0, :pswitch_data_de

    .line 328
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    const-string v1, "illegal.esc.char"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26

    .line 298
    :pswitch_54  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 299
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v0

    .line 300
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 301
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-gt v7, v2, :cond_85

    const/16 v3, 0x37

    if-gt v2, v3, :cond_85

    .line 302
    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 303
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 304
    const/16 v2, 0x33

    if-gt v1, v2, :cond_85

    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-gt v7, v1, :cond_85

    const/16 v2, 0x37

    if-gt v1, v2, :cond_85

    .line 305
    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 309
    :cond_85
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    goto :goto_26

    .line 314
    :cond_8a
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto :goto_26

    .line 320
    :cond_93
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto :goto_26

    .line 316
    :cond_9c
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto :goto_26

    .line 318
    :cond_a5
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_26

    .line 312
    :cond_af
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_26

    .line 326
    :cond_b7
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_26

    .line 322
    :cond_bf
    invoke-direct {p0, v6}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_26

    .line 324
    :cond_c7
    invoke-direct {p0, v5}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_26

    .line 331
    :cond_cf
    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-eq v1, v2, :cond_26

    .line 332
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_26

    .line 295
    nop

    :pswitch_data_de
    .packed-switch 0x30
        :pswitch_54  #00000030
        :pswitch_54  #00000031
        :pswitch_54  #00000032
        :pswitch_54  #00000033
        :pswitch_54  #00000034
        :pswitch_54  #00000035
        :pswitch_54  #00000036
        :pswitch_54  #00000037
    .end packed-switch
.end method

.method private scanNumber(I)V
    .registers 8

    const/16 v5, 0x2e

    const/16 v4, 0x10

    const/16 v1, 0xa

    .line 468
    iput p1, p0, Lcom/sun/tools/javac/parser/Scanner;->radix:I

    .line 470
    const/16 v0, 0x8

    if-ne p1, v0, :cond_22

    move v0, v1

    .line 471
    :goto_d
    const/4 v2, 0x0

    .line 472
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v3

    if-ltz v3, :cond_18

    .line 473
    const/4 v2, 0x1

    .line 474
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 476
    :cond_18
    if-ne p1, v4, :cond_24

    iget-char v3, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v3, v5, :cond_24

    .line 477
    invoke-direct {p0, v2}, Lcom/sun/tools/javac/parser/Scanner;->scanHexFractionAndSuffix(Z)V

    .line 497
    :goto_21
    return-void

    :cond_22
    move v0, p1

    .line 470
    goto :goto_d

    .line 478
    :cond_24
    if-eqz v2, :cond_36

    if-ne p1, v4, :cond_36

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x70

    if-eq v2, v3, :cond_32

    const/16 v3, 0x50

    if-ne v2, v3, :cond_36

    .line 479
    :cond_32
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanHexExponentAndSuffix()V

    goto :goto_21

    .line 480
    :cond_36
    if-ne v0, v1, :cond_46

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v2, v5, :cond_46

    .line 481
    invoke-direct {p0, v2}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 482
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 483
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanFractionAndSuffix()V

    goto :goto_21

    .line 484
    :cond_46
    if-ne v0, v1, :cond_66

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_62

    const/16 v1, 0x45

    if-eq v0, v1, :cond_62

    const/16 v1, 0x66

    if-eq v0, v1, :cond_62

    const/16 v1, 0x46

    if-eq v0, v1, :cond_62

    const/16 v1, 0x64

    if-eq v0, v1, :cond_62

    const/16 v1, 0x44

    if-ne v0, v1, :cond_66

    .line 488
    :cond_62
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanFractionAndSuffix()V

    goto :goto_21

    .line 490
    :cond_66
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_70

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_78

    .line 491
    :cond_70
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 492
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LONGLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_21

    .line 494
    :cond_78
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->INTLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_21
.end method

.method private scanOperator()V
    .registers 5

    .line 619
    :cond_0
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 620
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Names;->fromChars([CII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/parser/Keywords;->key(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_21

    .line 622
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    .line 630
    :goto_20
    return-void

    .line 625
    :cond_21
    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->name:Lcom/sun/tools/javac/util/Name;

    .line 626
    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/parser/Keywords;->key(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 627
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 628
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->isSpecial(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_20
.end method

.method private scanSurrogates()C
    .registers 3

    .line 585
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->surrogatesSupported:Z

    if-eqz v0, :cond_1c

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 586
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 588
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 590
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 597
    :goto_19
    return v0

    .line 594
    :cond_1a
    iput-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 597
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private skipIllegalUnderscores()V
    .registers 5

    const/16 v3, 0x5f

    .line 457
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v3, :cond_18

    .line 458
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    const-string v1, "illegal.underscore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :goto_10
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v3, :cond_18

    .line 460
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto :goto_10

    .line 462
    :cond_18
    return-void
.end method

.method private static surrogatesSupported()Z
    .registers 1

    .line 572
    const/16 v0, 0x61

    :try_start_2
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_5} :catch_7

    .line 573
    const/4 v0, 0x1

    .line 575
    :goto_6
    return v0

    .line 574
    :catch_7
    move-exception v0

    .line 575
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public deprecatedFlag()Z
    .registers 2

    .line 1046
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->deprecatedFlag:Z

    return v0
.end method

.method public docComment()Ljava/lang/String;
    .registers 2

    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public endPos()I
    .registers 2

    .line 1009
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    return v0
.end method

.method public errPos()I
    .registers 2

    .line 1021
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->errPos:I

    return v0
.end method

.method public errPos(I)V
    .registers 2

    .line 1027
    iput p1, p0, Lcom/sun/tools/javac/parser/Scanner;->errPos:I

    .line 1028
    return-void
.end method

.method public getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;
    .registers 4

    .line 1137
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/util/Position;->makeLineMap([CIZ)Lcom/sun/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method public getRawCharacters()[C
    .registers 5

    const/4 v3, 0x0

    .line 1065
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    new-array v1, v0, [C

    .line 1066
    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1067
    return-object v1
.end method

.method public getRawCharacters(II)[C
    .registers 7

    .line 1085
    sub-int v0, p2, p1

    .line 1086
    new-array v1, v0, [C

    .line 1087
    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    return-object v1
.end method

.method public name()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 1033
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->name:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public nextToken()V
    .registers 8

    const/16 v6, 0xd

    const/16 v5, 0x2e

    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 739
    :try_start_7
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->prevEndPos:I

    .line 740
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    .line 743
    :cond_e
    :goto_e
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    .line 744
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x9

    if-eq v0, v2, :cond_7fe

    if-eq v0, v4, :cond_7f2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_7fe

    if-eq v0, v6, :cond_7df

    const/16 v2, 0x20

    if-eq v0, v2, :cond_7fe

    const/16 v2, 0x22

    if-eq v0, v2, :cond_766

    const/16 v2, 0x24

    if-eq v0, v2, :cond_71d

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_6d0

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_683

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_636

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_71d

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_5e9

    packed-switch v0, :pswitch_data_81c

    packed-switch v0, :pswitch_data_826

    packed-switch v0, :pswitch_data_842

    packed-switch v0, :pswitch_data_87c

    .line 933
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->isSpecial(C)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 934
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanOperator()V
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_a9

    .line 969
    :goto_57
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 965
    :cond_9b
    :goto_9b
    return-void

    .line 937
    :cond_9c
    :try_start_9c
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x80

    if-ge v0, v2, :cond_ef

    move v0, v1

    .line 955
    :goto_a3
    if-eqz v0, :cond_11c

    .line 956
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanIdent()V
    :try_end_a8
    .catchall {:try_start_9c .. :try_end_a8} :catchall_a9

    goto :goto_57

    .line 969
    :catchall_a9
    move-exception v0

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v1, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v1, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v1, :cond_ee

    .line 971
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextToken("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")=|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v4, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 971
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 975
    :cond_ee
    throw v0

    .line 941
    :cond_ef
    :try_start_ef
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanSurrogates()C

    move-result v0

    .line 942
    if-eqz v0, :cond_115

    .line 943
    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_10a

    .line 944
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 949
    :goto_ff
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 950
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 949
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    goto :goto_a3

    .line 946
    :cond_10a
    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I
    :try_end_112
    .catchall {:try_start_ef .. :try_end_112} :catchall_a9

    aput-char v0, v1, v2

    goto :goto_ff

    .line 952
    :cond_115
    :try_start_115
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    goto :goto_a3

    .line 957
    :cond_11c
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-eq v0, v1, :cond_130

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_13c

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ne v0, v1, :cond_13c

    .line 958
    :cond_130
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 959
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->eofPos:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    goto/16 :goto_57

    .line 961
    :cond_13c
    const-string v0, "illegal.char"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-char v3, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_57

    .line 856
    :pswitch_152  #0x7b
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_159
    .catchall {:try_start_115 .. :try_end_159} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 852
    :pswitch_19f  #0x5b
    :try_start_19f
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_1a6
    .catchall {:try_start_19f .. :try_end_1a6} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 822
    :pswitch_1ec  #0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v0, 0xa

    :try_start_1ee
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanNumber(I)V
    :try_end_1f1
    .catchall {:try_start_1ee .. :try_end_1f1} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 783
    :pswitch_237  #0x30
    :try_start_237
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 784
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x78

    if-eq v0, v1, :cond_246

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x58

    if-ne v0, v1, :cond_29a

    .line 785
    :cond_246
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 786
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 787
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_305

    .line 788
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanHexFractionAndSuffix(Z)V
    :try_end_254
    .catchall {:try_start_237 .. :try_end_254} :catchall_a9

    .line 969
    :goto_254
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 794
    :cond_29a
    :try_start_29a
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x62

    if-eq v0, v1, :cond_2a6

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2d2

    .line 795
    :cond_2a6
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowBinaryLiterals:Z

    if-nez v0, :cond_2bc

    .line 796
    const-string v0, "unsupported.binary.lit"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sun/tools/javac/parser/Scanner;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowBinaryLiterals:Z

    .line 799
    :cond_2bc
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 800
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 801
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v0

    if-gez v0, :cond_2ff

    .line 802
    const-string v0, "invalid.binary.number"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_254

    .line 807
    :cond_2d2
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 808
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_2f8

    .line 809
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 811
    :cond_2df
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 812
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_2df

    .line 813
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v1

    if-gez v1, :cond_2f8

    .line 814
    const-string v1, "illegal.underscore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 817
    :cond_2f8
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanNumber(I)V

    goto/16 :goto_254

    .line 804
    :cond_2ff
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanNumber(I)V

    goto/16 :goto_254

    .line 789
    :cond_305
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v0

    if-gez v0, :cond_317

    .line 790
    const-string v0, "invalid.hex.number"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_254

    .line 792
    :cond_317
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanNumber(I)V

    goto/16 :goto_254

    .line 860
    :pswitch_31e  #0x2f
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 861
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_349

    .line 863
    :cond_327
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 864
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v6, :cond_338

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v4, :cond_338

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-lt v0, v2, :cond_327

    .line 865
    :cond_338
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_e

    .line 866
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 867
    sget-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->LINE:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->processComment(Lcom/sun/tools/javac/parser/Scanner$CommentStyle;)V

    goto/16 :goto_e

    .line 870
    :cond_349
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_3d9

    .line 871
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 873
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_36f

    .line 874
    sget-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->JAVADOC:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    .line 875
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanDocComment()V

    .line 887
    :cond_35d
    :goto_35d
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_38b

    .line 888
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 889
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 890
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->processComment(Lcom/sun/tools/javac/parser/Scanner$CommentStyle;)V

    goto/16 :goto_e

    .line 877
    :cond_36f
    sget-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->BLOCK:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    .line 878
    :cond_371
    :goto_371
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_35d

    .line 879
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_387

    .line 880
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 881
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_371

    goto :goto_35d

    .line 883
    :cond_387
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto :goto_371

    .line 893
    :cond_38b
    const-string v0, "unclosed.comment"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_393
    .catchall {:try_start_29a .. :try_end_393} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 896
    :cond_3d9
    :try_start_3d9
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_432

    .line 897
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->slashequals:Lcom/sun/tools/javac/util/Name;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->name:Lcom/sun/tools/javac/util/Name;

    .line 898
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SLASHEQ:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 899
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V
    :try_end_3ec
    .catchall {:try_start_3d9 .. :try_end_3ec} :catchall_a9

    .line 969
    :goto_3ec
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 901
    :cond_432
    :try_start_432
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->slash:Lcom/sun/tools/javac/util/Name;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->name:Lcom/sun/tools/javac/util/Name;

    .line 902
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SLASH:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_3ec

    .line 825
    :pswitch_43d  #0x2e
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 826
    const/16 v0, 0x30

    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-gt v0, v1, :cond_49a

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_49a

    .line 827
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 828
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanFractionAndSuffix()V
    :try_end_454
    .catchall {:try_start_432 .. :try_end_454} :catchall_a9

    .line 969
    :goto_454
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 829
    :cond_49a
    :try_start_49a
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_4c5

    .line 830
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 831
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 832
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_4bc

    .line 833
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 834
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 835
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->ELLIPSIS:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_454

    .line 837
    :cond_4bc
    const-string v0, "malformed.fp.lit"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_454

    .line 840
    :cond_4c5
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_454

    .line 850
    :pswitch_4ca  #0x29
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_4d1
    .catchall {:try_start_49a .. :try_end_4d1} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 848
    :pswitch_517  #0x28
    :try_start_517
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_51e
    .catchall {:try_start_517 .. :try_end_51e} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 906
    :pswitch_564  #0x27
    :try_start_564
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 907
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_5bb

    .line 908
    const-string v0, "empty.char.lit"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_575
    .catchall {:try_start_564 .. :try_end_575} :catchall_a9

    .line 969
    :goto_575
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 910
    :cond_5bb
    :try_start_5bb
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v6, :cond_5c3

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v4, :cond_5cd

    .line 911
    :cond_5c3
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    const-string v1, "illegal.line.end.in.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 912
    :cond_5cd
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanLitChar()V

    .line 913
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_5de

    .line 914
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 915
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->CHARLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_575

    .line 917
    :cond_5de
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    const-string v1, "unclosed.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_575

    .line 858
    :cond_5e9
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_5f0
    .catchall {:try_start_5bb .. :try_end_5f0} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 854
    :cond_636
    :try_start_636
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_63d
    .catchall {:try_start_636 .. :try_end_63d} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 846
    :cond_683
    :try_start_683
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_68a
    .catchall {:try_start_683 .. :try_end_68a} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 844
    :cond_6d0
    :try_start_6d0
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_6d7
    .catchall {:try_start_6d0 .. :try_end_6d7} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 780
    :cond_71d
    :pswitch_71d  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    :try_start_71d
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanIdent()V
    :try_end_720
    .catchall {:try_start_71d .. :try_end_720} :catchall_a9

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 922
    :cond_766
    :try_start_766
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 923
    :goto_769
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_781

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v6, :cond_781

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v4, :cond_781

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v1, :cond_781

    .line 924
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanLitChar()V

    goto :goto_769

    .line 925
    :cond_781
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7d4

    .line 926
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->STRINGLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 927
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V
    :try_end_78e
    .catchall {:try_start_766 .. :try_end_78e} :catchall_a9

    .line 969
    :goto_78e
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_9b

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextToken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 973
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 929
    :cond_7d4
    :try_start_7d4
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    const-string v1, "unclosed.str.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_78e

    .line 760
    :cond_7df
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 761
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v4, :cond_7e9

    .line 762
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 764
    :cond_7e9
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 765
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/Scanner;->processLineTerminator()V

    goto/16 :goto_e

    .line 755
    :cond_7f2
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 756
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 757
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/Scanner;->processLineTerminator()V

    goto/16 :goto_e

    .line 749
    :cond_7fe
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 750
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_7fe

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x9

    if-eq v0, v2, :cond_7fe

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0xc

    if-eq v0, v2, :cond_7fe

    .line 751
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 752
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/Scanner;->processWhiteSpace()V
    :try_end_81a
    .catchall {:try_start_7d4 .. :try_end_81a} :catchall_a9

    goto/16 :goto_e

    .line 744
    :pswitch_data_81c
    .packed-switch 0x27
        :pswitch_564  #00000027
        :pswitch_517  #00000028
        :pswitch_4ca  #00000029
    .end packed-switch

    :pswitch_data_826
    .packed-switch 0x2e
        :pswitch_43d  #0000002e
        :pswitch_31e  #0000002f
        :pswitch_237  #00000030
        :pswitch_1ec  #00000031
        :pswitch_1ec  #00000032
        :pswitch_1ec  #00000033
        :pswitch_1ec  #00000034
        :pswitch_1ec  #00000035
        :pswitch_1ec  #00000036
        :pswitch_1ec  #00000037
        :pswitch_1ec  #00000038
        :pswitch_1ec  #00000039
    .end packed-switch

    :pswitch_data_842
    .packed-switch 0x41
        :pswitch_71d  #00000041
        :pswitch_71d  #00000042
        :pswitch_71d  #00000043
        :pswitch_71d  #00000044
        :pswitch_71d  #00000045
        :pswitch_71d  #00000046
        :pswitch_71d  #00000047
        :pswitch_71d  #00000048
        :pswitch_71d  #00000049
        :pswitch_71d  #0000004a
        :pswitch_71d  #0000004b
        :pswitch_71d  #0000004c
        :pswitch_71d  #0000004d
        :pswitch_71d  #0000004e
        :pswitch_71d  #0000004f
        :pswitch_71d  #00000050
        :pswitch_71d  #00000051
        :pswitch_71d  #00000052
        :pswitch_71d  #00000053
        :pswitch_71d  #00000054
        :pswitch_71d  #00000055
        :pswitch_71d  #00000056
        :pswitch_71d  #00000057
        :pswitch_71d  #00000058
        :pswitch_71d  #00000059
        :pswitch_71d  #0000005a
        :pswitch_19f  #0000005b
    .end packed-switch

    :pswitch_data_87c
    .packed-switch 0x61
        :pswitch_71d  #00000061
        :pswitch_71d  #00000062
        :pswitch_71d  #00000063
        :pswitch_71d  #00000064
        :pswitch_71d  #00000065
        :pswitch_71d  #00000066
        :pswitch_71d  #00000067
        :pswitch_71d  #00000068
        :pswitch_71d  #00000069
        :pswitch_71d  #0000006a
        :pswitch_71d  #0000006b
        :pswitch_71d  #0000006c
        :pswitch_71d  #0000006d
        :pswitch_71d  #0000006e
        :pswitch_71d  #0000006f
        :pswitch_71d  #00000070
        :pswitch_71d  #00000071
        :pswitch_71d  #00000072
        :pswitch_71d  #00000073
        :pswitch_71d  #00000074
        :pswitch_71d  #00000075
        :pswitch_71d  #00000076
        :pswitch_71d  #00000077
        :pswitch_71d  #00000078
        :pswitch_71d  #00000079
        :pswitch_71d  #0000007a
        :pswitch_152  #0000007b
    .end packed-switch
.end method

.method public pos()I
    .registers 2

    .line 1003
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    return v0
.end method

.method public prevEndPos()I
    .registers 2

    .line 1015
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->prevEndPos:I

    return v0
.end method

.method protected processComment(Lcom/sun/tools/javac/parser/Scanner$CommentStyle;)V
    .registers 7

    .line 1102
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_48

    .line 1103
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processComment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 1105
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1103
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1107
    :cond_48
    return-void
.end method

.method protected processLineTerminator()V
    .registers 6

    .line 1125
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_40

    .line 1126
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processTerminator("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 1128
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1130
    :cond_40
    return-void
.end method

.method protected processWhiteSpace()V
    .registers 6

    .line 1114
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_40

    .line 1115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processWhitespace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")=|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 1117
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/Scanner;->getRawCharacters(II)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1119
    :cond_40
    return-void
.end method

.method public radix()I
    .registers 2

    .line 1039
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->radix:I

    return v0
.end method

.method public resetDeprecatedFlag()V
    .registers 2

    .line 1050
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->deprecatedFlag:Z

    .line 1051
    return-void
.end method

.method public stringVal()Ljava/lang/String;
    .registers 5

    .line 731
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public token()Lcom/sun/tools/javac/parser/Token;
    .registers 2

    .line 981
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    return-object v0
.end method

.method public token(Lcom/sun/tools/javac/parser/Token;)V
    .registers 5

    .line 993
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    iget-object v1, v1, Lcom/sun/tools/javac/parser/Token;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p1, Lcom/sun/tools/javac/parser/Token;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    .line 994
    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->prevEndPos:I

    .line 995
    iput-object p1, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 996
    return-void
.end method
