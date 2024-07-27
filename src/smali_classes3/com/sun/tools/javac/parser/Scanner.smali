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

    if-ne p3, v0, :cond_0

    .line 176
    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p2, v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    add-int/lit8 p3, p3, -0x1

    .line 184
    :cond_0
    :goto_0
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
    :cond_1
    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [C

    .line 180
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    .line 181
    goto :goto_0
.end method

.method private convertUnicode()V
    .registers 6

    const/16 v3, 0x75

    const/16 v2, 0x5c

    const/16 v4, 0x10

    .line 223
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->unicodeConversionBp:I

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    if-eq v0, v1, :cond_2

    .line 224
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 225
    if-ne v1, v3, :cond_4

    .line 227
    :cond_0
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 228
    if-eq v1, v3, :cond_0

    .line 229
    add-int/lit8 v3, v0, 0x3

    .line 230
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v3, v0, :cond_3

    .line 231
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v1

    move v0, v1

    move v2, v1

    .line 233
    :goto_0
    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    if-ge v1, v3, :cond_1

    if-ltz v0, :cond_1

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

    goto :goto_0

    .line 238
    :cond_1
    if-ltz v0, :cond_3

    .line 239
    int-to-char v0, v2

    iput-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 240
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->unicodeConversionBp:I

    .line 250
    :cond_2
    :goto_1
    return-void

    .line 244
    :cond_3
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    const-string v1, "illegal.unicode.esc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 246
    :cond_4
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 247
    iput-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    goto :goto_1
.end method

.method private digit(I)I
    .registers 6

    .line 210
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 211
    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 212
    if-ltz v1, :cond_0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_0

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
    :cond_0
    return v1
.end method

.method private static hexFloatsWork()Z
    .registers 1

    .line 147
    :try_start_0
    const-string v0, "0x1.0p1"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecial(C)Z
    .registers 3

    .line 603
    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x25

    if-eq p1, v0, :cond_0

    const/16 v0, 0x26

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 610
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 608
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    if-ne v0, v2, :cond_0

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
    :cond_0
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

    if-ne v0, v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->convertUnicode()V

    .line 259
    :cond_0
    return-void
.end method

.method private scanCommentChar()V
    .registers 5

    const/16 v3, 0x5c

    .line 264
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 265
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v3, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v0, v2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->unicodeConversionBp:I

    if-eq v0, v1, :cond_1

    .line 267
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->convertUnicode()V

    goto :goto_0
.end method

.method private scanDigits(I)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x5f

    .line 340
    :cond_0
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v3, :cond_3

    .line 341
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 348
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 349
    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 350
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 351
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v2

    if-gez v2, :cond_0

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v2, v3, :cond_0

    .line 352
    if-ne v0, v3, :cond_2

    .line 353
    const-string v0, "illegal.underscore"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_2
    return-void

    .line 343
    :cond_3
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowUnderscoresInLiterals:Z

    if-nez v0, :cond_1

    .line 344
    const-string v0, "unsupported.underscore.lit"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/Scanner;->allowUnderscoresInLiterals:Z

    goto :goto_0
.end method

.method private scanDocComment()V
    .registers 9

    const/16 v7, 0x9

    const/16 v6, 0x65

    const/16 v5, 0x2f

    const/16 v4, 0x2a

    const/4 v1, 0x1

    .line 640
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_3

    .line 646
    :goto_1
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_2

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    if-eq v0, v7, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 647
    :cond_1
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto :goto_1

    .line 651
    :cond_2
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_4

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v4, :cond_4

    .line 652
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 653
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_2

    .line 724
    :cond_3
    :goto_2
    return-void

    .line 659
    :cond_4
    :goto_3
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_6

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    if-eq v0, v7, :cond_5

    const/16 v2, 0xc

    if-ne v0, v2, :cond_6

    .line 660
    :cond_5
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto :goto_3

    .line 663
    :cond_6
    const/4 v0, 0x0

    .line 665
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/sun/tools/javac/parser/Scanner;->deprecatedFlag:Z

    if-nez v2, :cond_7

    .line 666
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 667
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x64

    if-ne v2, v3, :cond_7

    .line 668
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 669
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v2, v6, :cond_7

    .line 670
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 671
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x70

    if-ne v2, v3, :cond_7

    .line 672
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 673
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x72

    if-ne v2, v3, :cond_7

    .line 674
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 675
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v2, v6, :cond_7

    .line 676
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 677
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x63

    if-ne v2, v3, :cond_7

    .line 678
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 679
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x61

    if-ne v2, v3, :cond_7

    .line 680
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 681
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x74

    if-ne v2, v3, :cond_7

    .line 682
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 683
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v2, v6, :cond_7

    .line 684
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 685
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_7

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x64

    if-ne v2, v3, :cond_7

    .line 687
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    move v0, v1

    .line 689
    :cond_7
    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_8

    .line 690
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 691
    iput-boolean v1, p0, Lcom/sun/tools/javac/parser/Scanner;->deprecatedFlag:Z

    .line 702
    :cond_8
    :goto_4
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_0

    .line 703
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_c

    const/16 v2, 0xd

    if-eq v0, v2, :cond_b

    if-eq v0, v4, :cond_a

    .line 720
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto :goto_4

    .line 692
    :cond_9
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v4, :cond_8

    .line 693
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 694
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_8

    .line 695
    iput-boolean v1, p0, Lcom/sun/tools/javac/parser/Scanner;->deprecatedFlag:Z

    goto/16 :goto_2

    .line 705
    :cond_a
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 706
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_8

    goto/16 :goto_2

    .line 711
    :cond_b
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 712
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 717
    :cond_c
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto/16 :goto_0
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

    if-gt v4, v0, :cond_0

    if-gt v0, v5, :cond_0

    .line 399
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 401
    :cond_0
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    .line 402
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_4

    .line 403
    :cond_1
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 404
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 405
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 406
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    .line 407
    :cond_2
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 408
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 410
    :cond_3
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 411
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-gt v4, v1, :cond_5

    if-gt v1, v5, :cond_5

    .line 412
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 418
    :cond_4
    :goto_0
    return-void

    .line 415
    :cond_5
    const-string v1, "malformed.fp.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    goto :goto_0
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

    if-eq v0, v1, :cond_0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    .line 426
    :cond_0
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 427
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 428
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->FLOATLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 436
    :goto_0
    return-void

    .line 430
    :cond_1
    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0x44

    if-ne v0, v1, :cond_3

    .line 431
    :cond_2
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 432
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 434
    :cond_3
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->DOUBLELITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_0
.end method

.method private scanHexExponentAndSuffix()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 359
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_5

    .line 360
    :cond_0
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 361
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 362
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 363
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    .line 364
    :cond_1
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 365
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 367
    :cond_2
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 368
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x30

    if-gt v1, v0, :cond_7

    const/16 v1, 0x39

    if-gt v0, v1, :cond_7

    .line 369
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 370
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowHexFloats:Z

    if-nez v0, :cond_6

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
    :cond_3
    :goto_0
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_8

    .line 382
    :cond_4
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 383
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 384
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->FLOATLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 392
    :goto_1
    return-void

    .line 379
    :cond_5
    const-string v0, "malformed.fp.lit"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    :cond_6
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->hexFloatsWork:Z

    if-nez v0, :cond_3

    .line 375
    const-string v0, "unsupported.cross.fp.lit"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 377
    :cond_7
    const-string v0, "malformed.fp.lit"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 386
    :cond_8
    const/16 v1, 0x64

    if-eq v0, v1, :cond_9

    const/16 v1, 0x44

    if-ne v0, v1, :cond_a

    .line 387
    :cond_9
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 388
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 390
    :cond_a
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->DOUBLELITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_1
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

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
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

    if-ltz v0, :cond_2

    .line 448
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 450
    :goto_1
    if-nez v1, :cond_1

    .line 451
    const-string v0, "invalid.hex.number"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 442
    goto :goto_0

    .line 453
    :cond_1
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanHexExponentAndSuffix()V

    goto :goto_2

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method private scanIdent()V
    .registers 6

    const/4 v1, 0x0

    .line 505
    :cond_0
    :pswitch_0
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    array-length v3, v2

    if-ne v0, v3, :cond_1

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 508
    :goto_0
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 509
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x24

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 541
    const/16 v2, 0x80

    if-ge v0, v2, :cond_2

    move v0, v1

    .line 558
    :goto_1
    if-nez v0, :cond_0

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
    :goto_2
    return-void

    .line 505
    :cond_1
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    iget-char v3, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    aput-char v3, v2, v0

    goto :goto_0

    .line 545
    :cond_2
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanSurrogates()C

    move-result v0

    .line 546
    if-eqz v0, :cond_4

    .line 547
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    iget-object v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_3

    .line 548
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 552
    :goto_3
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 553
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 552
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    goto :goto_1

    .line 550
    :cond_3
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    aput-char v0, v3, v2

    goto :goto_3

    .line 555
    :cond_4
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_1

    .line 534
    :pswitch_1
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-lt v0, v2, :cond_0

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

    goto :goto_2

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    if-ne v0, v3, :cond_b

    .line 289
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->buf:[C

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v0, v2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->unicodeConversionBp:I

    if-eq v0, v1, :cond_1

    .line 290
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 291
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 292
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 295
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v5, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v3, :cond_8

    const/16 v1, 0x62

    if-eq v0, v1, :cond_7

    const/16 v1, 0x66

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x72

    if-eq v0, v1, :cond_4

    const/16 v1, 0x74

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 328
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    const-string v1, "illegal.esc.char"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :pswitch_0
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 299
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v0

    .line 300
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 301
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-gt v7, v2, :cond_2

    const/16 v3, 0x37

    if-gt v2, v3, :cond_2

    .line 302
    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 303
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 304
    const/16 v2, 0x33

    if-gt v1, v2, :cond_2

    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-gt v7, v1, :cond_2

    const/16 v2, 0x37

    if-gt v1, v2, :cond_2

    .line 305
    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 309
    :cond_2
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    goto :goto_0

    .line 314
    :cond_3
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto :goto_0

    .line 320
    :cond_4
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto :goto_0

    .line 316
    :cond_5
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto :goto_0

    .line 318
    :cond_6
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_0

    .line 312
    :cond_7
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_0

    .line 326
    :cond_8
    invoke-direct {p0, v3}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_0

    .line 322
    :cond_9
    invoke-direct {p0, v6}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_0

    .line 324
    :cond_a
    invoke-direct {p0, v5}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_0

    .line 331
    :cond_b
    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-eq v1, v2, :cond_0

    .line 332
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 471
    :goto_0
    const/4 v2, 0x0

    .line 472
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 473
    const/4 v2, 0x1

    .line 474
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanDigits(I)V

    .line 476
    :cond_0
    if-ne p1, v4, :cond_2

    iget-char v3, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v3, v5, :cond_2

    .line 477
    invoke-direct {p0, v2}, Lcom/sun/tools/javac/parser/Scanner;->scanHexFractionAndSuffix(Z)V

    .line 497
    :goto_1
    return-void

    :cond_1
    move v0, p1

    .line 470
    goto :goto_0

    .line 478
    :cond_2
    if-eqz v2, :cond_4

    if-ne p1, v4, :cond_4

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x70

    if-eq v2, v3, :cond_3

    const/16 v3, 0x50

    if-ne v2, v3, :cond_4

    .line 479
    :cond_3
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanHexExponentAndSuffix()V

    goto :goto_1

    .line 480
    :cond_4
    if-ne v0, v1, :cond_5

    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v2, v5, :cond_5

    .line 481
    invoke-direct {p0, v2}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 482
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 483
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanFractionAndSuffix()V

    goto :goto_1

    .line 484
    :cond_5
    if-ne v0, v1, :cond_7

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    const/16 v1, 0x45

    if-eq v0, v1, :cond_6

    const/16 v1, 0x66

    if-eq v0, v1, :cond_6

    const/16 v1, 0x46

    if-eq v0, v1, :cond_6

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-ne v0, v1, :cond_7

    .line 488
    :cond_6
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanFractionAndSuffix()V

    goto :goto_1

    .line 490
    :cond_7
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_8

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_9

    .line 491
    :cond_8
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 492
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LONGLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_1

    .line 494
    :cond_9
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->INTLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_1
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

    if-ne v1, v2, :cond_1

    .line 622
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    .line 630
    :goto_0
    return-void

    .line 625
    :cond_1
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

    goto :goto_0
.end method

.method private scanSurrogates()C
    .registers 3

    .line 585
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->surrogatesSupported:Z

    if-eqz v0, :cond_1

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 588
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 590
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    :goto_0
    return v0

    .line 594
    :cond_0
    iput-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 597
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private skipIllegalUnderscores()V
    .registers 5

    const/16 v3, 0x5f

    .line 457
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v3, :cond_0

    .line 458
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    const-string v1, "illegal.underscore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :goto_0
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v3, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    goto :goto_0

    .line 462
    :cond_0
    return-void
.end method

.method private static surrogatesSupported()Z
    .registers 1

    .line 572
    const/16 v0, 0x61

    :try_start_0
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    const/4 v0, 0x1

    .line 575
    :goto_0
    return v0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    const/4 v0, 0x0

    goto :goto_0
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
    :try_start_0
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->prevEndPos:I

    .line 740
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    .line 743
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    .line 744
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x9

    if-eq v0, v2, :cond_30

    if-eq v0, v4, :cond_2f

    const/16 v2, 0xc

    if-eq v0, v2, :cond_30

    if-eq v0, v6, :cond_2d

    const/16 v2, 0x20

    if-eq v0, v2, :cond_30

    const/16 v2, 0x22

    if-eq v0, v2, :cond_2a

    const/16 v2, 0x24

    if-eq v0, v2, :cond_29

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_28

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_27

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_26

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_29

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_25

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 933
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->isSpecial(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanOperator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    :goto_1
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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
    :cond_1
    :goto_2
    return-void

    .line 937
    :cond_2
    :try_start_1
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x80

    if-ge v0, v2, :cond_4

    move v0, v1

    .line 955
    :goto_3
    if-eqz v0, :cond_7

    .line 956
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanIdent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 969
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v1, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v1, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v1, :cond_3

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
    :cond_3
    throw v0

    .line 941
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanSurrogates()C

    move-result v0

    .line 942
    if-eqz v0, :cond_6

    .line 943
    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_5

    .line 944
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 949
    :goto_4
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    .line 950
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 949
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    goto :goto_3

    .line 946
    :cond_5
    iget-object v1, p0, Lcom/sun/tools/javac/parser/Scanner;->sbuf:[C

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/parser/Scanner;->sp:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    aput-char v0, v1, v2

    goto :goto_4

    .line 952
    :cond_6
    :try_start_3
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    goto :goto_3

    .line 957
    :cond_7
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ne v0, v1, :cond_9

    .line 958
    :cond_8
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 959
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->eofPos:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    goto/16 :goto_1

    .line 961
    :cond_9
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

    goto/16 :goto_1

    .line 856
    :pswitch_0
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 852
    :pswitch_1
    :try_start_4
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 822
    :pswitch_2
    const/16 v0, 0xa

    :try_start_5
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanNumber(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 783
    :pswitch_3
    :try_start_6
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 784
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x78

    if-eq v0, v1, :cond_a

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x58

    if-ne v0, v1, :cond_b

    .line 785
    :cond_a
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 786
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 787
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_12

    .line 788
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanHexFractionAndSuffix(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 969
    :goto_5
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 794
    :cond_b
    :try_start_7
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x62

    if-eq v0, v1, :cond_c

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x42

    if-ne v0, v1, :cond_e

    .line 795
    :cond_c
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/Scanner;->allowBinaryLiterals:Z

    if-nez v0, :cond_d

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
    :cond_d
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 800
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->skipIllegalUnderscores()V

    .line 801
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v0

    if-gez v0, :cond_11

    .line 802
    const-string v0, "invalid.binary.number"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 807
    :cond_e
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 808
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_10

    .line 809
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    .line 811
    :cond_f
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 812
    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_f

    .line 813
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v1

    if-gez v1, :cond_10

    .line 814
    const-string v1, "illegal.underscore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 817
    :cond_10
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanNumber(I)V

    goto/16 :goto_5

    .line 804
    :cond_11
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanNumber(I)V

    goto/16 :goto_5

    .line 789
    :cond_12
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->digit(I)I

    move-result v0

    if-gez v0, :cond_13

    .line 790
    const-string v0, "invalid.hex.number"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 792
    :cond_13
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->scanNumber(I)V

    goto/16 :goto_5

    .line 860
    :pswitch_4
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 861
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_16

    .line 863
    :cond_14
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    .line 864
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v6, :cond_15

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v4, :cond_15

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-lt v0, v2, :cond_14

    .line 865
    :cond_15
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v2, :cond_0

    .line 866
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 867
    sget-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->LINE:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->processComment(Lcom/sun/tools/javac/parser/Scanner$CommentStyle;)V

    goto/16 :goto_0

    .line 870
    :cond_16
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1c

    .line 871
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 873
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_18

    .line 874
    sget-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->JAVADOC:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    .line 875
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanDocComment()V

    .line 887
    :cond_17
    :goto_6
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1b

    .line 888
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 889
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v2, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 890
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->processComment(Lcom/sun/tools/javac/parser/Scanner$CommentStyle;)V

    goto/16 :goto_0

    .line 877
    :cond_18
    sget-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->BLOCK:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    .line 878
    :cond_19
    :goto_7
    iget v2, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v2, v3, :cond_17

    .line 879
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1a

    .line 880
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 881
    iget-char v2, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_19

    goto :goto_6

    .line 883
    :cond_1a
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanCommentChar()V

    goto :goto_7

    .line 893
    :cond_1b
    const-string v0, "unclosed.comment"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 896
    :cond_1c
    :try_start_8
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1d

    .line 897
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->slashequals:Lcom/sun/tools/javac/util/Name;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->name:Lcom/sun/tools/javac/util/Name;

    .line 898
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SLASHEQ:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 899
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 969
    :goto_8
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 901
    :cond_1d
    :try_start_9
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->slash:Lcom/sun/tools/javac/util/Name;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->name:Lcom/sun/tools/javac/util/Name;

    .line 902
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SLASH:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_8

    .line 825
    :pswitch_5
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 826
    const/16 v0, 0x30

    iget-char v1, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-gt v0, v1, :cond_1e

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1e

    .line 827
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 828
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanFractionAndSuffix()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 969
    :goto_9
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 829
    :cond_1e
    :try_start_a
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_20

    .line 830
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 831
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 832
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v5, :cond_1f

    .line 833
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 834
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/Scanner;->putChar(C)V

    .line 835
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->ELLIPSIS:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_9

    .line 837
    :cond_1f
    const-string v0, "malformed.fp.lit"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 840
    :cond_20
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_9

    .line 850
    :pswitch_6
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 848
    :pswitch_7
    :try_start_b
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 906
    :pswitch_8
    :try_start_c
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 907
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_21

    .line 908
    const-string v0, "empty.char.lit"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/parser/Scanner;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 969
    :goto_a
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 910
    :cond_21
    :try_start_d
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v6, :cond_22

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v4, :cond_23

    .line 911
    :cond_22
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    const-string v1, "illegal.line.end.in.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 912
    :cond_23
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanLitChar()V

    .line 913
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_24

    .line 914
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 915
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->CHARLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    goto :goto_a

    .line 917
    :cond_24
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    const-string v1, "unclosed.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 858
    :cond_25
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 854
    :cond_26
    :try_start_e
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 846
    :cond_27
    :try_start_f
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 844
    :cond_28
    :try_start_10
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 780
    :cond_29
    :pswitch_9
    :try_start_11
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanIdent()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 969
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 922
    :cond_2a
    :try_start_12
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 923
    :goto_b
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2b

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v6, :cond_2b

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-eq v0, v4, :cond_2b

    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iget v1, p0, Lcom/sun/tools/javac/parser/Scanner;->buflen:I

    if-ge v0, v1, :cond_2b

    .line 924
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanLitChar()V

    goto :goto_b

    .line 925
    :cond_2b
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2c

    .line 926
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->STRINGLITERAL:Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Scanner;->token:Lcom/sun/tools/javac/parser/Token;

    .line 927
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 969
    :goto_c
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 970
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_1

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

    goto/16 :goto_2

    .line 929
    :cond_2c
    :try_start_13
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->pos:I

    const-string v1, "unclosed.str.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/Scanner;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 760
    :cond_2d
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 761
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    if-ne v0, v4, :cond_2e

    .line 762
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 764
    :cond_2e
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 765
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/Scanner;->processLineTerminator()V

    goto/16 :goto_0

    .line 755
    :cond_2f
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 756
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 757
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/Scanner;->processLineTerminator()V

    goto/16 :goto_0

    .line 749
    :cond_30
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/Scanner;->scanChar()V

    .line 750
    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_30

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0x9

    if-eq v0, v2, :cond_30

    iget-char v0, p0, Lcom/sun/tools/javac/parser/Scanner;->ch:C

    const/16 v2, 0xc

    if-eq v0, v2, :cond_30

    .line 751
    iget v0, p0, Lcom/sun/tools/javac/parser/Scanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/Scanner;->endPos:I

    .line 752
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/Scanner;->processWhiteSpace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
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

    if-eqz v0, :cond_0

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
    :cond_0
    return-void
.end method

.method protected processLineTerminator()V
    .registers 6

    .line 1125
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_0

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
    :cond_0
    return-void
.end method

.method protected processWhiteSpace()V
    .registers 6

    .line 1114
    sget-boolean v0, Lcom/sun/tools/javac/parser/Scanner;->scannerDebug:Z

    if-eqz v0, :cond_0

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
    :cond_0
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
