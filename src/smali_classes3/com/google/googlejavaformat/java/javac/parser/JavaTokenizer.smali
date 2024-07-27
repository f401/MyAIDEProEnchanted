.class public Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;
.super Ljava/lang/Object;
.source "JavaTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;
    }
.end annotation


# static fields
.field private static final hexFloatsWork:Z

.field private static final scannerDebug:Z


# instance fields
.field private allowBinaryLiterals:Z

.field private allowHexFloats:Z

.field private allowUnderscoresInLiterals:Z

.field protected errPos:I

.field protected fac:Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;

.field private final log:Lcom/sun/tools/javac/util/Log;

.field protected name:Lcom/sun/tools/javac/util/Name;

.field protected radix:I

.field protected reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

.field private source:Lcom/sun/tools/javac/code/Source;

.field protected tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field private final tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    invoke-static {}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->hexFloatsWork()Z

    move-result v0

    sput-boolean v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->hexFloatsWork:Z

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;)V
    .registers 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->errPos:I

    .line 126
    iput-object p1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->fac:Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;

    .line 127
    iget-object v0, p1, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->log:Lcom/sun/tools/javac/util/Log;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->log:Lcom/sun/tools/javac/util/Log;

    .line 128
    iget-object v0, p1, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    .line 129
    iget-object v0, p1, Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;->source:Lcom/sun/tools/javac/code/Source;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->source:Lcom/sun/tools/javac/code/Source;

    .line 130
    iput-object p2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    .line 131
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowBinaryLiterals()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowBinaryLiterals:Z

    .line 132
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowHexFloats()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowHexFloats:Z

    .line 133
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowUnderscoresInLiterals()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowUnderscoresInLiterals:Z

    .line 134
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .registers 4

    .line 118
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-direct {v0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    invoke-direct {p0, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V
    .registers 5

    .line 122
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    invoke-direct {p0, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;)V

    .line 123
    return-void
.end method

.method private static hexFloatsWork()Z
    .registers 1

    .line 138
    :try_start_0
    const-string v0, "0x1.0p1"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecial(C)Z
    .registers 3

    .line 519
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

    .line 537
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 535
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 519
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

.method private scanDigits(II)V
    .registers 9

    const/4 v5, 0x1

    const/16 v4, 0x5f

    const/4 v3, 0x0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v0, v4, :cond_3

    .line 224
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 231
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 232
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 233
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 234
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v2, v4, :cond_0

    .line 235
    if-ne v0, v4, :cond_2

    .line 236
    const-string v0, "illegal.underscore"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_2
    return-void

    .line 226
    :cond_3
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowUnderscoresInLiterals:Z

    if-nez v0, :cond_1

    .line 227
    const-string v0, "unsupported.underscore.lit"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iput-boolean v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowUnderscoresInLiterals:Z

    goto :goto_0
.end method

.method private scanFraction(I)V
    .registers 9

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 279
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 280
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v5, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v0, v6, :cond_0

    .line 281
    invoke-direct {p0, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    .line 284
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_4

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 286
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 287
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 290
    :cond_3
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 291
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v5, v1, :cond_5

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v1, v6, :cond_5

    .line 292
    invoke-direct {p0, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    .line 298
    :cond_4
    :goto_0
    return-void

    .line 295
    :cond_5
    const-string v1, "malformed.fp.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iput v0, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    goto :goto_0
.end method

.method private scanFractionAndSuffix(I)V
    .registers 5

    const/4 v2, 0x1

    .line 304
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    .line 305
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanFraction(I)V

    .line 306
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 308
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FLOATLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_3

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 313
    :cond_3
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOUBLELITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    goto :goto_0
.end method

.method private scanHexExponentAndSuffix(I)V
    .registers 8

    const/16 v5, 0x10

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 243
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x50

    if-ne v0, v1, :cond_5

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 245
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 246
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 249
    :cond_2
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 250
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_7

    .line 251
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    .line 252
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowHexFloats:Z

    if-nez v0, :cond_6

    .line 253
    const-string v0, "unsupported.fp.lit"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iput-boolean v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowHexFloats:Z

    .line 262
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x46

    if-ne v0, v1, :cond_8

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 264
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FLOATLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 265
    iput v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    .line 273
    :goto_1
    return-void

    .line 260
    :cond_5
    const-string v0, "malformed.fp.lit"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 255
    :cond_6
    sget-boolean v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->hexFloatsWork:Z

    if-nez v0, :cond_3

    .line 256
    const-string v0, "unsupported.cross.fp.lit"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_7
    const-string v0, "malformed.fp.lit"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x64

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_a

    .line 268
    :cond_9
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 270
    :cond_a
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOUBLELITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 271
    iput v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    goto :goto_1
.end method

.method private scanHexFractionAndSuffix(IZ)V
    .registers 8

    const/4 v2, 0x0

    const/16 v4, 0x10

    const/4 v1, 0x1

    .line 321
    iput v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    .line 322
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 323
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 324
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 325
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v0

    if-ltz v0, :cond_2

    .line 327
    invoke-direct {p0, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    .line 329
    :goto_1
    if-nez v1, :cond_1

    .line 330
    const-string v0, "invalid.hex.number"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 322
    goto :goto_0

    .line 332
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanHexExponentAndSuffix(I)V

    goto :goto_2

    :cond_2
    move v1, p2

    goto :goto_1
.end method

.method private scanIdent()V
    .registers 4

    const/4 v2, 0x1

    .line 385
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x24

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 487
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 505
    :goto_1
    if-nez v0, :cond_5

    .line 506
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->name:Lcom/sun/tools/javac/util/Name;

    .line 507
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->lookupKind(Lcom/sun/tools/javac/util/Name;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 508
    :goto_2
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanSurrogates()C

    move-result v0

    .line 496
    if-eqz v0, :cond_2

    .line 497
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    .line 498
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 499
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 498
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    goto :goto_1

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_1

    .line 479
    :pswitch_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-lt v0, v1, :cond_3

    .line 480
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->name:Lcom/sun/tools/javac/util/Name;

    .line 481
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->lookupKind(Lcom/sun/tools/javac/util/Name;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    goto :goto_2

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    goto/16 :goto_0

    .line 476
    :cond_4
    :pswitch_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    goto/16 :goto_0

    .line 452
    :cond_5
    :pswitch_2
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    goto/16 :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_2
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

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
.end method

.method private scanLitChar(I)V
    .registers 8

    const/16 v5, 0x27

    const/16 v3, 0x22

    const/16 v4, 0x8

    const/16 v1, 0x5c

    const/4 v2, 0x1

    .line 158
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v1, :cond_b

    .line 159
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->peekChar()C

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->isUnicode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->skipChar()V

    .line 161
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 164
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v0, v3, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v1, :cond_8

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

    .line 211
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    const-string v1, "illegal.esc.char"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 174
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v0

    .line 175
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 176
    const/16 v2, 0x30

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v3, v3, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0x37

    if-gt v2, v3, :cond_2

    .line 177
    mul-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 178
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 179
    const/16 v2, 0x33

    if-gt v1, v2, :cond_2

    const/16 v1, 0x30

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x37

    if-gt v1, v2, :cond_2

    .line 180
    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    goto/16 :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_0

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_0

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_0

    .line 196
    :cond_6
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_0

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v4, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_0

    .line 208
    :cond_8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_0

    .line 202
    :cond_9
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v5, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_0

    .line 205
    :cond_a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_0

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-eq v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    goto/16 :goto_0

    .line 164
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

.method private scanNumber(II)V
    .registers 10

    const/16 v6, 0x2e

    const/16 v5, 0x10

    const/4 v3, 0x1

    const/16 v1, 0xa

    .line 350
    iput p2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    .line 351
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    move v0, v1

    .line 352
    :goto_0
    const/4 v2, 0x0

    .line 353
    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v4, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v4

    if-ltz v4, :cond_0

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    move v2, v3

    .line 357
    :cond_0
    if-ne p2, v5, :cond_2

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v4, v4, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v6, :cond_2

    .line 358
    invoke-direct {p0, p1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanHexFractionAndSuffix(IZ)V

    .line 377
    :goto_1
    return-void

    :cond_1
    move v0, p2

    .line 351
    goto :goto_0

    .line 359
    :cond_2
    if-eqz v2, :cond_4

    if-ne p2, v5, :cond_4

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v4, 0x70

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v4, 0x50

    if-ne v2, v4, :cond_4

    .line 360
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanHexExponentAndSuffix(I)V

    goto :goto_1

    .line 361
    :cond_4
    if-ne v0, v1, :cond_5

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v2, v6, :cond_5

    .line 362
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 363
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanFractionAndSuffix(I)V

    goto :goto_1

    .line 364
    :cond_5
    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x45

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x46

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_7

    .line 368
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanFractionAndSuffix(I)V

    goto :goto_1

    .line 370
    :cond_7
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_9

    .line 371
    :cond_8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 372
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LONGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    goto :goto_1

    .line 374
    :cond_9
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INTLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    goto :goto_1
.end method

.method private scanOperator()V
    .registers 3

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 548
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tokens:Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->lookupKind(Lcom/sun/tools/javac/util/Name;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v0

    .line 550
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_1

    .line 551
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    .line 558
    :goto_0
    return-void

    .line 554
    :cond_1
    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 555
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 556
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->isSpecial(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private skipIllegalUnderscores()V
    .registers 5

    const/16 v3, 0x5f

    .line 336
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v3, :cond_0

    .line 337
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    const-string v1, "illegal.underscore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v3, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method addComment(Lcom/sun/tools/javac/util/List;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;",
            ">;",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;",
            ">;"
        }
    .end annotation

    .line 889
    if-nez p1, :cond_0

    .line 890
    invoke-static {p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 889
    :goto_0
    return-object v0

    .line 891
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public errPos()I
    .registers 2

    .line 898
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->errPos:I

    return v0
.end method

.method public errPos(I)V
    .registers 2

    .line 905
    iput p1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->errPos:I

    .line 906
    return-void
.end method

.method public getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;
    .registers 4

    .line 952
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->getRawCharacters()[C

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/util/Position;->makeLineMap([CIZ)Lcom/sun/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs lexError(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ERROR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 151
    iput p1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->errPos:I

    .line 152
    return-void
.end method

.method protected processComment(IILcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;
    .registers 9

    .line 918
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->getRawCharacters(II)[C

    move-result-object v0

    .line 919
    new-instance v1, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;

    new-instance v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-object v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->fac:Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;

    array-length v4, v0

    invoke-direct {v2, v3, v0, v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    invoke-direct {v1, v2, p3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$BasicComment;-><init>(Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)V

    return-object v1
.end method

.method protected processLineTerminator(II)V
    .registers 3

    .line 943
    return-void
.end method

.method protected processWhiteSpace(II)V
    .registers 3

    .line 932
    return-void
.end method

.method public readToken()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
    .registers 12

    const/16 v10, 0xd

    const/16 v9, 0x2e

    const/16 v8, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 565
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iput v3, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->name:Lcom/sun/tools/javac/util/Name;

    .line 567
    iput v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    .line 569
    const/4 v6, 0x0

    .line 576
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 577
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_32

    if-eq v1, v8, :cond_31

    const/16 v2, 0xc

    if-eq v1, v2, :cond_32

    if-eq v1, v10, :cond_2f

    const/16 v2, 0x20

    if-eq v1, v2, :cond_32

    const/16 v2, 0x22

    if-eq v1, v2, :cond_28

    const/16 v2, 0x24

    if-eq v1, v2, :cond_27

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_26

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_25

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_24

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_27

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_23

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    .line 830
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->isSpecial(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 831
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanOperator()V

    move v2, v0

    .line 828
    :goto_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 865
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$Token$Tag:[I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v1, v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->tag:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 873
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NumericToken;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->chars()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    invoke-direct/range {v0 .. v6}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NumericToken;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILjava/lang/String;ILcom/sun/tools/javac/util/List;)V

    :goto_2
    return-object v0

    .line 834
    :cond_1
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x80

    if-ge v1, v2, :cond_2

    .line 848
    :goto_3
    if-eqz v3, :cond_4

    .line 849
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanIdent()V

    :goto_4
    move v2, v0

    .line 861
    goto :goto_1

    .line 838
    :cond_2
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanSurrogates()C

    move-result v1

    .line 839
    if-eqz v1, :cond_3

    .line 840
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2, v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    .line 842
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 843
    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 842
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v3

    goto :goto_3

    .line 845
    :cond_3
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    goto :goto_3

    .line 850
    :cond_4
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ne v1, v2, :cond_6

    .line 851
    :cond_5
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 852
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    goto :goto_4

    .line 854
    :cond_6
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_7

    .line 855
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v5, v5, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 857
    :goto_5
    const-string v2, "illegal.char"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 858
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 878
    :catchall_0
    move-exception v0

    .line 884
    throw v0

    .line 856
    :cond_7
    :try_start_1
    const-string v1, "\\u%04x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v5, v5, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 747
    :pswitch_0
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 748
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 749
    goto/16 :goto_1

    .line 739
    :pswitch_1
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 740
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 741
    goto/16 :goto_1

    .line 700
    :pswitch_2
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanNumber(II)V

    move v2, v0

    .line 701
    goto/16 :goto_1

    .line 654
    :pswitch_3
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 655
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x78

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x58

    if-ne v1, v2, :cond_9

    .line 656
    :cond_8
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 657
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 658
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v9, :cond_10

    .line 659
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanHexFractionAndSuffix(IZ)V

    move v2, v0

    goto/16 :goto_1

    .line 665
    :cond_9
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x62

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x42

    if-ne v1, v2, :cond_c

    .line 666
    :cond_a
    iget-boolean v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowBinaryLiterals:Z

    if-nez v1, :cond_b

    .line 667
    const-string v1, "unsupported.binary.lit"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 668
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowBinaryLiterals:Z

    .line 670
    :cond_b
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 671
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 672
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    if-gez v1, :cond_f

    .line 673
    const-string v1, "invalid.binary.number"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto/16 :goto_1

    .line 678
    :cond_c
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    .line 679
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_e

    .line 680
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 682
    :cond_d
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 683
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_d

    .line 684
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v2

    if-gez v2, :cond_e

    .line 685
    const-string v2, "illegal.underscore"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 688
    :cond_e
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanNumber(II)V

    move v2, v0

    .line 690
    goto/16 :goto_1

    .line 675
    :cond_f
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanNumber(II)V

    move v2, v0

    goto/16 :goto_1

    .line 660
    :cond_10
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    if-gez v1, :cond_11

    .line 661
    const-string v1, "invalid.hex.number"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto/16 :goto_1

    .line 663
    :cond_11
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanNumber(II)V

    move v2, v0

    goto/16 :goto_1

    .line 755
    :pswitch_4
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 756
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    .line 758
    :cond_12
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    .line 760
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v10, :cond_13

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v8, :cond_13

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-lt v1, v2, :cond_12

    .line 761
    :cond_13
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v1, v2, :cond_0

    .line 762
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->LINE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->processComment(IILcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->addComment(Lcom/sun/tools/javac/util/List;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    goto/16 :goto_0

    .line 765
    :cond_14
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1a

    .line 767
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 769
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_17

    .line 770
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    .line 771
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    .line 772
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_33

    move v2, v4

    .line 778
    :cond_15
    :goto_6
    if-nez v2, :cond_16

    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v5, v5, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v7, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v7, v7, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v5, v7, :cond_16

    .line 779
    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v5, v5, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_18

    .line 780
    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v5}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 781
    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v5, v5, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_15

    .line 786
    :cond_16
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_19

    .line 787
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 788
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->processComment(IILcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->addComment(Lcom/sun/tools/javac/util/List;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    goto/16 :goto_0

    .line 776
    :cond_17
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->BLOCK:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    move v2, v3

    goto :goto_6

    .line 783
    :cond_18
    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v5}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    goto :goto_6

    .line 791
    :cond_19
    const-string v1, "unclosed.comment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 792
    goto/16 :goto_1

    .line 794
    :cond_1a
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1b

    .line 795
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SLASHEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 796
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    move v2, v0

    goto/16 :goto_1

    .line 798
    :cond_1b
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SLASH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 800
    goto/16 :goto_1

    .line 703
    :pswitch_5
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 704
    const/16 v1, 0x30

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v1, v2, :cond_1c

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_1c

    .line 705
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    .line 706
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanFractionAndSuffix(I)V

    move v2, v0

    goto/16 :goto_1

    .line 707
    :cond_1c
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v9, :cond_1e

    .line 708
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 709
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    .line 710
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v3, 0x2e

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    .line 711
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v2, v9, :cond_1d

    .line 712
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 713
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    .line 714
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ELLIPSIS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    :goto_7
    move v2, v0

    .line 718
    goto/16 :goto_1

    .line 716
    :cond_1d
    const-string v2, "illegal.dot"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 719
    :cond_1e
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 721
    goto/16 :goto_1

    .line 735
    :pswitch_6
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 736
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 737
    goto/16 :goto_1

    .line 731
    :pswitch_7
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 732
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 733
    goto/16 :goto_1

    .line 802
    :pswitch_8
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 803
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_1f

    .line 804
    const-string v1, "empty.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto/16 :goto_1

    .line 806
    :cond_1f
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v10, :cond_20

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v8, :cond_21

    .line 807
    :cond_20
    const-string v1, "illegal.line.end.in.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 808
    :cond_21
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanLitChar(I)V

    .line 809
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 810
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_22

    .line 811
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 812
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CHARLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    :goto_8
    move v2, v0

    .line 817
    goto/16 :goto_1

    .line 814
    :cond_22
    const-string v1, "unclosed.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 751
    :cond_23
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 752
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 753
    goto/16 :goto_1

    .line 743
    :cond_24
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 744
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 745
    goto/16 :goto_1

    .line 727
    :cond_25
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 728
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SEMI:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 729
    goto/16 :goto_1

    .line 723
    :cond_26
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 724
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->COMMA:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 725
    goto/16 :goto_1

    .line 651
    :cond_27
    :pswitch_9
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanIdent()V

    move v2, v0

    .line 652
    goto/16 :goto_1

    .line 819
    :cond_28
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 820
    :goto_9
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v10, :cond_29

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v8, :cond_29

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v1, v2, :cond_29

    .line 821
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanLitChar(I)V

    goto :goto_9

    .line 822
    :cond_29
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2a

    .line 823
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STRINGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 824
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    move v2, v0

    goto/16 :goto_1

    .line 826
    :cond_2a
    const-string v1, "unclosed.str.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto/16 :goto_1

    .line 875
    :cond_2b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 871
    :cond_2c
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$StringToken;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->chars()Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$StringToken;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILjava/lang/String;Lcom/sun/tools/javac/util/List;)V

    goto/16 :goto_2

    .line 869
    :cond_2d
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NamedToken;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->name:Lcom/sun/tools/javac/util/Name;

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NamedToken;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)V

    goto/16 :goto_2

    .line 867
    :cond_2e
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/List;)V

    goto/16 :goto_2

    .line 591
    :cond_2f
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 592
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v8, :cond_30

    .line 593
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 595
    :cond_30
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->processLineTerminator(II)V

    goto/16 :goto_0

    .line 587
    :cond_31
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 588
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->processLineTerminator(II)V

    goto/16 :goto_0

    .line 582
    :cond_32
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 583
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_32

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_32

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_32

    .line 584
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->processWhiteSpace(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_33
    move v2, v3

    goto/16 :goto_6

    .line 577
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
