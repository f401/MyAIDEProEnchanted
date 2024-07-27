.class public Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;
.super Ljava/lang/Object;
.source "UnicodeReader.java"


# static fields
.field static final surrogatesSupported:Z


# instance fields
.field protected bp:I

.field protected buf:[C

.field protected final buflen:I

.field protected ch:C

.field protected log:Lcom/sun/tools/javac/util/Log;

.field protected names:Lcom/sun/tools/javac/util/Names;

.field protected sbuf:[C

.field protected sp:I

.field protected unicodeConversionBp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 189
    invoke-static {}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->surrogatesSupported()Z

    move-result v0

    sput-boolean v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->surrogatesSupported:Z

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .registers 5

    .line 85
    invoke-static {p2}, Lcom/sun/tools/javac/file/JavacFileManager;->toArray(Ljava/nio/CharBuffer;)[C

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    .line 86
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V
    .registers 6

    const/4 v1, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->unicodeConversionBp:I

    .line 71
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sbuf:[C

    .line 89
    iget-object v0, p1, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->log:Lcom/sun/tools/javac/util/Log;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->log:Lcom/sun/tools/javac/util/Log;

    .line 90
    iget-object v0, p1, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->names:Lcom/sun/tools/javac/util/Names;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->names:Lcom/sun/tools/javac/util/Names;

    .line 91
    array-length v0, p2

    if-ne p3, v0, :cond_0

    .line 92
    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p2, v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    add-int/lit8 p3, p3, -0x1

    .line 98
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buf:[C

    .line 99
    iput p3, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    .line 100
    const/16 v0, 0x1a

    aput-char v0, p2, p3

    .line 101
    iput v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 102
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 103
    return-void

    .line 95
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p2

    goto :goto_0
.end method

.method private static surrogatesSupported()Z
    .registers 1

    .line 192
    const/16 v0, 0x61

    :try_start_0
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method chars()Ljava/lang/String;
    .registers 5

    .line 151
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected convertUnicode()V
    .registers 6

    const/16 v3, 0x75

    const/16 v2, 0x5c

    const/16 v4, 0x10

    .line 158
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->unicodeConversionBp:I

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    if-eq v0, v1, :cond_2

    .line 159
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buf:[C

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 160
    if-ne v1, v3, :cond_4

    .line 162
    :cond_0
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buf:[C

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 163
    if-eq v1, v3, :cond_0

    .line 164
    add-int/lit8 v3, v0, 0x3

    .line 165
    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v3, v1, :cond_3

    .line 166
    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    move v0, v1

    move v2, v1

    .line 168
    :goto_0
    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    if-ge v1, v3, :cond_1

    if-ltz v0, :cond_1

    .line 169
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buf:[C

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 170
    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v0

    .line 171
    shl-int/lit8 v1, v2, 0x4

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    .line 173
    :cond_1
    if-ltz v0, :cond_3

    .line 174
    int-to-char v0, v2

    iput-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 175
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->unicodeConversionBp:I

    .line 185
    :cond_2
    :goto_1
    return-void

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->log:Lcom/sun/tools/javac/util/Log;

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    const-string v2, "illegal.unicode.esc"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 181
    :cond_4
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 182
    iput-char v2, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    goto :goto_1
.end method

.method protected digit(II)I
    .registers 8

    .line 224
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 225
    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 226
    if-ltz v1, :cond_0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->log:Lcom/sun/tools/javac/util/Log;

    add-int/lit8 v2, p1, 0x1

    const-string v3, "illegal.nonascii.digit"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 230
    :cond_0
    return v1
.end method

.method public getRawCharacters()[C
    .registers 5

    const/4 v3, 0x0

    .line 250
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    new-array v1, v0, [C

    .line 251
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buf:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    return-object v1
.end method

.method public getRawCharacters(II)[C
    .registers 7

    .line 270
    sub-int v0, p2, p1

    .line 271
    new-array v1, v0, [C

    .line 272
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buf:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    return-object v1
.end method

.method protected isUnicode()Z
    .registers 3

    .line 234
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->unicodeConversionBp:I

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method name()Lcom/sun/tools/javac/util/Name;
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/Names;->fromChars([CII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method protected peekChar()C
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buf:[C

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    return v0
.end method

.method protected putChar(C)V
    .registers 3

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    .line 140
    return-void
.end method

.method protected putChar(CZ)V
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sbuf:[C

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/javac/util/ArrayUtils;->ensureCapacity([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sbuf:[C

    .line 133
    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    aput-char p1, v0, v1

    .line 134
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 136
    :cond_0
    return-void
.end method

.method protected putChar(Z)V
    .registers 3

    .line 143
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-virtual {p0, v0, p1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    .line 144
    return-void
.end method

.method protected scanChar()V
    .registers 3

    .line 108
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buf:[C

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    aget-char v0, v1, v0

    iput-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 110
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->convertUnicode()V

    .line 114
    :cond_0
    return-void
.end method

.method protected scanCommentChar()V
    .registers 3

    const/16 v1, 0x5c

    .line 119
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 120
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->peekChar()C

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->isUnicode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->skipChar()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->convertUnicode()V

    goto :goto_0
.end method

.method protected scanSurrogates()C
    .registers 3

    .line 205
    sget-boolean v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->surrogatesSupported:Z

    if-eqz v0, :cond_1

    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 208
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 210
    iget-char v1, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :goto_0
    return v0

    .line 214
    :cond_0
    iput-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected skipChar()V
    .registers 2

    .line 238
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 239
    return-void
.end method
