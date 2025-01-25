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
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_6
    return v0

    .line 140
    :catch_7
    move-exception v0

    .line 141
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isSpecial(C)Z
    .registers 3

    .line 519
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

    .line 537
    const/4 v0, 0x0

    :goto_2c
    return v0

    .line 535
    :cond_2d
    :pswitch_2d  #0x3c, 0x3d, 0x3e, 0x3f, 0x40
    const/4 v0, 0x1

    goto :goto_2c

    .line 519
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

.method private scanDigits(II)V
    .registers 9

    const/4 v5, 0x1

    const/16 v4, 0x5f

    const/4 v3, 0x0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v0, v4, :cond_34

    .line 224
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 231
    :cond_f
    :goto_f
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

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v2, v4, :cond_4

    .line 235
    if-ne v0, v4, :cond_33

    .line 236
    const-string v0, "illegal.underscore"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_33
    return-void

    .line 226
    :cond_34
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowUnderscoresInLiterals:Z

    if-nez v0, :cond_f

    .line 227
    const-string v0, "unsupported.underscore.lit"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iput-boolean v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowUnderscoresInLiterals:Z

    goto :goto_f
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

    if-gt v5, v0, :cond_19

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v0, v6, :cond_19

    .line 281
    invoke-direct {p0, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    .line 283
    :cond_19
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    .line 284
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_2d

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_5c

    .line 285
    :cond_2d
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 286
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 287
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_45

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_4a

    .line 288
    :cond_45
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 290
    :cond_4a
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 291
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v5, v1, :cond_5d

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v1, v6, :cond_5d

    .line 292
    invoke-direct {p0, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    .line 298
    :cond_5c
    :goto_5c
    return-void

    .line 295
    :cond_5d
    const-string v1, "malformed.fp.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iput v0, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    goto :goto_5c
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

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x46

    if-ne v0, v1, :cond_22

    .line 307
    :cond_18
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 308
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FLOATLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 315
    :goto_21
    return-void

    .line 310
    :cond_22
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x64

    if-eq v0, v1, :cond_32

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_37

    .line 311
    :cond_32
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 313
    :cond_37
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOUBLELITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    goto :goto_21
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

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x50

    if-ne v0, v1, :cond_78

    .line 244
    :cond_14
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 245
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 246
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_31

    .line 247
    :cond_2c
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 249
    :cond_31
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 250
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v0, v1, :cond_8c

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_8c

    .line 251
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    .line 252
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowHexFloats:Z

    if-nez v0, :cond_80

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
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x46

    if-ne v0, v1, :cond_94

    .line 263
    :cond_6c
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 264
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->FLOATLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 265
    iput v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    .line 273
    :goto_77
    return-void

    .line 260
    :cond_78
    const-string v0, "malformed.fp.lit"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5c

    .line 255
    :cond_80
    sget-boolean v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->hexFloatsWork:Z

    if-nez v0, :cond_5c

    .line 256
    const-string v0, "unsupported.cross.fp.lit"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5c

    .line 258
    :cond_8c
    const-string v0, "malformed.fp.lit"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5c

    .line 267
    :cond_94
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x64

    if-eq v0, v1, :cond_a4

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_a9

    .line 268
    :cond_a4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 270
    :cond_a9
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOUBLELITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 271
    iput v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    goto :goto_77
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

    if-ne v0, v3, :cond_2f

    move v0, v1

    :goto_f
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

    if-ltz v0, :cond_35

    .line 327
    invoke-direct {p0, p1, v4}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    .line 329
    :goto_25
    if-nez v1, :cond_31

    .line 330
    const-string v0, "invalid.hex.number"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :goto_2e
    return-void

    :cond_2f
    move v0, v2

    .line 322
    goto :goto_f

    .line 332
    :cond_31
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanHexExponentAndSuffix(I)V

    goto :goto_2e

    :cond_35
    move v1, p2

    goto :goto_25
.end method

.method private scanIdent()V
    .registers 4

    const/4 v2, 0x1

    .line 385
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 387
    :goto_6
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x24

    if-eq v0, v1, :cond_9d

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_9d

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_96

    packed-switch v0, :pswitch_data_a4

    packed-switch v0, :pswitch_data_ba

    packed-switch v0, :pswitch_data_da

    packed-switch v0, :pswitch_data_f2

    packed-switch v0, :pswitch_data_12a

    .line 487
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x80

    if-ge v0, v1, :cond_41

    .line 489
    const/4 v0, 0x0

    .line 505
    :goto_2e
    if-nez v0, :cond_9d

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
    :goto_40
    return-void

    .line 491
    :cond_41
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 492
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    goto :goto_6

    .line 495
    :cond_51
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanSurrogates()C

    move-result v0

    .line 496
    if-eqz v0, :cond_6b

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

    goto :goto_2e

    .line 501
    :cond_6b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_2e

    .line 479
    :pswitch_74  #0x1a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-lt v0, v1, :cond_8f

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

    goto :goto_40

    .line 484
    :cond_8f
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    goto/16 :goto_6

    .line 476
    :cond_96
    :pswitch_96  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    goto/16 :goto_6

    .line 452
    :cond_9d
    :pswitch_9d  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    goto/16 :goto_6

    .line 387
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_96  #00000000
        :pswitch_96  #00000001
        :pswitch_96  #00000002
        :pswitch_96  #00000003
        :pswitch_96  #00000004
        :pswitch_96  #00000005
        :pswitch_96  #00000006
        :pswitch_96  #00000007
        :pswitch_96  #00000008
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0xe
        :pswitch_96  #0000000e
        :pswitch_96  #0000000f
        :pswitch_96  #00000010
        :pswitch_96  #00000011
        :pswitch_96  #00000012
        :pswitch_96  #00000013
        :pswitch_96  #00000014
        :pswitch_96  #00000015
        :pswitch_96  #00000016
        :pswitch_96  #00000017
        :pswitch_96  #00000018
        :pswitch_96  #00000019
        :pswitch_74  #0000001a
        :pswitch_96  #0000001b
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x30
        :pswitch_9d  #00000030
        :pswitch_9d  #00000031
        :pswitch_9d  #00000032
        :pswitch_9d  #00000033
        :pswitch_9d  #00000034
        :pswitch_9d  #00000035
        :pswitch_9d  #00000036
        :pswitch_9d  #00000037
        :pswitch_9d  #00000038
        :pswitch_9d  #00000039
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x41
        :pswitch_9d  #00000041
        :pswitch_9d  #00000042
        :pswitch_9d  #00000043
        :pswitch_9d  #00000044
        :pswitch_9d  #00000045
        :pswitch_9d  #00000046
        :pswitch_9d  #00000047
        :pswitch_9d  #00000048
        :pswitch_9d  #00000049
        :pswitch_9d  #0000004a
        :pswitch_9d  #0000004b
        :pswitch_9d  #0000004c
        :pswitch_9d  #0000004d
        :pswitch_9d  #0000004e
        :pswitch_9d  #0000004f
        :pswitch_9d  #00000050
        :pswitch_9d  #00000051
        :pswitch_9d  #00000052
        :pswitch_9d  #00000053
        :pswitch_9d  #00000054
        :pswitch_9d  #00000055
        :pswitch_9d  #00000056
        :pswitch_9d  #00000057
        :pswitch_9d  #00000058
        :pswitch_9d  #00000059
        :pswitch_9d  #0000005a
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x61
        :pswitch_9d  #00000061
        :pswitch_9d  #00000062
        :pswitch_9d  #00000063
        :pswitch_9d  #00000064
        :pswitch_9d  #00000065
        :pswitch_9d  #00000066
        :pswitch_9d  #00000067
        :pswitch_9d  #00000068
        :pswitch_9d  #00000069
        :pswitch_9d  #0000006a
        :pswitch_9d  #0000006b
        :pswitch_9d  #0000006c
        :pswitch_9d  #0000006d
        :pswitch_9d  #0000006e
        :pswitch_9d  #0000006f
        :pswitch_9d  #00000070
        :pswitch_9d  #00000071
        :pswitch_9d  #00000072
        :pswitch_9d  #00000073
        :pswitch_9d  #00000074
        :pswitch_9d  #00000075
        :pswitch_9d  #00000076
        :pswitch_9d  #00000077
        :pswitch_9d  #00000078
        :pswitch_9d  #00000079
        :pswitch_9d  #0000007a
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

    if-ne v0, v1, :cond_f4

    .line 159
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->peekChar()C

    move-result v0

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->isUnicode()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 160
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->skipChar()V

    .line 161
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    .line 217
    :cond_29
    :goto_29
    return-void

    .line 163
    :cond_2a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 164
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v0, v3, :cond_ed

    if-eq v0, v5, :cond_e6

    if-eq v0, v1, :cond_df

    const/16 v1, 0x62

    if-eq v0, v1, :cond_d8

    const/16 v1, 0x66

    if-eq v0, v1, :cond_cf

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_c6

    const/16 v1, 0x72

    if-eq v0, v1, :cond_bd

    const/16 v1, 0x74

    if-eq v0, v1, :cond_b4

    packed-switch v0, :pswitch_data_106

    .line 211
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    const-string v1, "illegal.esc.char"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    .line 173
    :pswitch_5d  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
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

    if-gt v2, v3, :cond_ac

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0x37

    if-gt v2, v3, :cond_ac

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

    if-gt v1, v2, :cond_ac

    const/16 v1, 0x30

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v1, v2, :cond_ac

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x37

    if-gt v1, v2, :cond_ac

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
    :cond_ac
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    goto/16 :goto_29

    .line 190
    :cond_b4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_29

    .line 199
    :cond_bd
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_29

    .line 193
    :cond_c6
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_29

    .line 196
    :cond_cf
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_29

    .line 187
    :cond_d8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v4, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_29

    .line 208
    :cond_df
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_29

    .line 202
    :cond_e6
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v5, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_29

    .line 205
    :cond_ed
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_29

    .line 214
    :cond_f4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-eq v0, v1, :cond_29

    .line 215
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    goto/16 :goto_29

    .line 164
    nop

    :pswitch_data_106
    .packed-switch 0x30
        :pswitch_5d  #00000030
        :pswitch_5d  #00000031
        :pswitch_5d  #00000032
        :pswitch_5d  #00000033
        :pswitch_5d  #00000034
        :pswitch_5d  #00000035
        :pswitch_5d  #00000036
        :pswitch_5d  #00000037
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

    if-ne p2, v0, :cond_27

    move v0, v1

    .line 352
    :goto_e
    const/4 v2, 0x0

    .line 353
    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v4, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v4

    if-ltz v4, :cond_1b

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanDigits(II)V

    move v2, v3

    .line 357
    :cond_1b
    if-ne p2, v5, :cond_29

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v4, v4, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v6, :cond_29

    .line 358
    invoke-direct {p0, p1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanHexFractionAndSuffix(IZ)V

    .line 377
    :goto_26
    return-void

    :cond_27
    move v0, p2

    .line 351
    goto :goto_e

    .line 359
    :cond_29
    if-eqz v2, :cond_41

    if-ne p2, v5, :cond_41

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v4, 0x70

    if-eq v2, v4, :cond_3d

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v4, 0x50

    if-ne v2, v4, :cond_41

    .line 360
    :cond_3d
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanHexExponentAndSuffix(I)V

    goto :goto_26

    .line 361
    :cond_41
    if-ne v0, v1, :cond_52

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v2, v6, :cond_52

    .line 362
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(Z)V

    .line 363
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanFractionAndSuffix(I)V

    goto :goto_26

    .line 364
    :cond_52
    if-ne v0, v1, :cond_88

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x45

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x46

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x64

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_88

    .line 368
    :cond_84
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanFractionAndSuffix(I)V

    goto :goto_26

    .line 370
    :cond_88
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_98

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_a2

    .line 371
    :cond_98
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 372
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LONGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    goto :goto_26

    .line 374
    :cond_a2
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INTLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    goto :goto_26
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

    if-ne v0, v1, :cond_1f

    .line 551
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->sp:I

    .line 558
    :goto_1e
    return-void

    .line 554
    :cond_1f
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

    goto :goto_1e
.end method

.method private skipIllegalUnderscores()V
    .registers 5

    const/16 v3, 0x5f

    .line 336
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v3, :cond_20

    .line 337
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    const-string v1, "illegal.underscore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :goto_14
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v0, v3, :cond_20

    .line 339
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    goto :goto_14

    .line 341
    :cond_20
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
    if-nez p1, :cond_7

    .line 890
    invoke-static {p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 889
    :goto_6
    return-object v0

    .line 891
    :cond_7
    invoke-virtual {p1, p2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_6
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
    :cond_12
    :goto_12
    :try_start_12
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 577
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_487

    if-eq v1, v8, :cond_479

    const/16 v2, 0xc

    if-eq v1, v2, :cond_487

    if-eq v1, v10, :cond_460

    const/16 v2, 0x20

    if-eq v1, v2, :cond_487

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3ef

    const/16 v2, 0x24

    if-eq v1, v2, :cond_3e9

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3dd

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_3d1

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_3c5

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_3e9

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_3b9

    packed-switch v1, :pswitch_data_4b0

    packed-switch v1, :pswitch_data_4ba

    packed-switch v1, :pswitch_data_4d6

    packed-switch v1, :pswitch_data_510

    .line 830
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->isSpecial(C)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 831
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanOperator()V

    move v2, v0

    .line 828
    :goto_60
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v3, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 865
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$Token$Tag:[I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v1, v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->tag:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_457

    const/4 v1, 0x2

    if-eq v0, v1, :cond_44b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_43b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_435

    .line 873
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NumericToken;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->chars()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->radix:I

    invoke-direct/range {v0 .. v6}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NumericToken;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILjava/lang/String;ILcom/sun/tools/javac/util/List;)V

    :goto_8a
    return-object v0

    .line 834
    :cond_8b
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x80

    if-ge v1, v2, :cond_9a

    .line 848
    :goto_93
    if-eqz v3, :cond_bd

    .line 849
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanIdent()V

    :goto_98
    move v2, v0

    .line 861
    goto :goto_60

    .line 838
    :cond_9a
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanSurrogates()C

    move-result v1

    .line 839
    if-eqz v1, :cond_b4

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

    goto :goto_93

    .line 845
    :cond_b4
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    goto :goto_93

    .line 850
    :cond_bd
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-eq v1, v2, :cond_db

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_e4

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ne v1, v2, :cond_e4

    .line 851
    :cond_db
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->EOF:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 852
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v0, v0, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    goto :goto_98

    .line 854
    :cond_e4
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ge v1, v2, :cond_11b

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_11b

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
    :goto_108
    const-string v2, "illegal.char"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 858
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V
    :try_end_118
    .catchall {:try_start_12 .. :try_end_118} :catchall_119

    goto :goto_98

    .line 878
    :catchall_119
    move-exception v0

    .line 884
    throw v0

    .line 856
    :cond_11b
    :try_start_11b
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

    goto :goto_108

    .line 747
    :pswitch_130  #0x7b
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 748
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 749
    goto/16 :goto_60

    .line 739
    :pswitch_13c  #0x5b
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 740
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 741
    goto/16 :goto_60

    .line 700
    :pswitch_148  #0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanNumber(II)V

    move v2, v0

    .line 701
    goto/16 :goto_60

    .line 654
    :pswitch_150  #0x30
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 655
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x78

    if-eq v1, v2, :cond_165

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x58

    if-ne v1, v2, :cond_17a

    .line 656
    :cond_165
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 657
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 658
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v9, :cond_1fd

    .line 659
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanHexFractionAndSuffix(IZ)V

    move v2, v0

    goto/16 :goto_60

    .line 665
    :cond_17a
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x62

    if-eq v1, v2, :cond_18a

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1bc

    .line 666
    :cond_18a
    iget-boolean v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->allowBinaryLiterals:Z

    if-nez v1, :cond_1a0

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
    :cond_1a0
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 671
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    .line 672
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    if-gez v1, :cond_1f6

    .line 673
    const-string v1, "invalid.binary.number"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto/16 :goto_60

    .line 678
    :cond_1bc
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    .line 679
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1ee

    .line 680
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    .line 682
    :cond_1cf
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 683
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1cf

    .line 684
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v2

    if-gez v2, :cond_1ee

    .line 685
    const-string v2, "illegal.underscore"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 688
    :cond_1ee
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanNumber(II)V

    move v2, v0

    .line 690
    goto/16 :goto_60

    .line 675
    :cond_1f6
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanNumber(II)V

    move v2, v0

    goto/16 :goto_60

    .line 660
    :cond_1fd
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    if-gez v1, :cond_212

    .line 661
    const-string v1, "invalid.hex.number"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto/16 :goto_60

    .line 663
    :cond_212
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanNumber(II)V

    move v2, v0

    goto/16 :goto_60

    .line 755
    :pswitch_21a  #0x2f
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 756
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_25c

    .line 758
    :cond_227
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    .line 760
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v10, :cond_242

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v8, :cond_242

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-lt v1, v2, :cond_227

    .line 761
    :cond_242
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v1, v2, :cond_12

    .line 762
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->LINE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->processComment(IILcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->addComment(Lcom/sun/tools/javac/util/List;Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    goto/16 :goto_12

    .line 765
    :cond_25c
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_2d2

    .line 767
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 769
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_2bd

    .line 770
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    .line 771
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    .line 772
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_4ad

    move v2, v4

    .line 778
    :cond_281
    :goto_281
    if-nez v2, :cond_2a2

    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v5, v5, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v7, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v7, v7, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v5, v7, :cond_2a2

    .line 779
    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v5, v5, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_2c1

    .line 780
    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v5}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 781
    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v5, v5, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_281

    .line 786
    :cond_2a2
    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_2c7

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

    goto/16 :goto_12

    .line 776
    :cond_2bd
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->BLOCK:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    move v2, v3

    goto :goto_281

    .line 783
    :cond_2c1
    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v5}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanCommentChar()V

    goto :goto_281

    .line 791
    :cond_2c7
    const-string v1, "unclosed.comment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 792
    goto/16 :goto_60

    .line 794
    :cond_2d2
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_2e6

    .line 795
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SLASHEQ:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 796
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    move v2, v0

    goto/16 :goto_60

    .line 798
    :cond_2e6
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SLASH:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 800
    goto/16 :goto_60

    .line 703
    :pswitch_2ed  #0x2e
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 704
    const/16 v1, 0x30

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-gt v1, v2, :cond_30f

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_30f

    .line 705
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(C)V

    .line 706
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanFractionAndSuffix(I)V

    move v2, v0

    goto/16 :goto_60

    .line 707
    :cond_30f
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v9, :cond_34a

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

    if-ne v2, v9, :cond_341

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

    :goto_33e
    move v2, v0

    .line 718
    goto/16 :goto_60

    .line 716
    :cond_341
    const-string v2, "illegal.dot"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33e

    .line 719
    :cond_34a
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->DOT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 721
    goto/16 :goto_60

    .line 735
    :pswitch_351  #0x29
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 736
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 737
    goto/16 :goto_60

    .line 731
    :pswitch_35d  #0x28
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 732
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->LPAREN:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 733
    goto/16 :goto_60

    .line 802
    :pswitch_369  #0x27
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 803
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_381

    .line 804
    const-string v1, "empty.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto/16 :goto_60

    .line 806
    :cond_381
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v10, :cond_38d

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v8, :cond_395

    .line 807
    :cond_38d
    const-string v1, "illegal.line.end.in.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 808
    :cond_395
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanLitChar(I)V

    .line 809
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    .line 810
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_3b0

    .line 811
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 812
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CHARLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    :goto_3ad
    move v2, v0

    .line 817
    goto/16 :goto_60

    .line 814
    :cond_3b0
    const-string v1, "unclosed.char.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3ad

    .line 751
    :cond_3b9
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 752
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RBRACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 753
    goto/16 :goto_60

    .line 743
    :cond_3c5
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 744
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->RBRACKET:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 745
    goto/16 :goto_60

    .line 727
    :cond_3d1
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 728
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->SEMI:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 729
    goto/16 :goto_60

    .line 723
    :cond_3dd
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 724
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->COMMA:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v2, v0

    .line 725
    goto/16 :goto_60

    .line 651
    :cond_3e9
    :pswitch_3e9  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanIdent()V

    move v2, v0

    .line 652
    goto/16 :goto_60

    .line 819
    :cond_3ef
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 820
    :goto_3f4
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_416

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v10, :cond_416

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-eq v1, v8, :cond_416

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v2, v2, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->buflen:I

    if-ge v1, v2, :cond_416

    .line 821
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->scanLitChar(I)V

    goto :goto_3f4

    .line 822
    :cond_416
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x22

    if-ne v1, v2, :cond_42a

    .line 823
    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->STRINGLITERAL:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 824
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    move v2, v0

    goto/16 :goto_60

    .line 826
    :cond_42a
    const-string v1, "unclosed.str.lit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto/16 :goto_60

    .line 875
    :cond_435
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 871
    :cond_43b
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$StringToken;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->chars()Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$StringToken;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILjava/lang/String;Lcom/sun/tools/javac/util/List;)V

    goto/16 :goto_8a

    .line 869
    :cond_44b
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NamedToken;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->name:Lcom/sun/tools/javac/util/Name;

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$NamedToken;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)V

    goto/16 :goto_8a

    .line 867
    :cond_457
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->tk:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/List;)V

    goto/16 :goto_8a

    .line 591
    :cond_460
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 592
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v8, :cond_470

    .line 593
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 595
    :cond_470
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->processLineTerminator(II)V

    goto/16 :goto_12

    .line 587
    :cond_479
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 588
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->processLineTerminator(II)V

    goto/16 :goto_12

    .line 582
    :cond_487
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->scanChar()V

    .line 583
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_487

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_487

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget-char v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_487

    .line 584
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->reader:Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;

    iget v1, v1, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;->processWhiteSpace(II)V
    :try_end_4ab
    .catchall {:try_start_11b .. :try_end_4ab} :catchall_119

    goto/16 :goto_12

    :cond_4ad
    move v2, v3

    goto/16 :goto_281

    .line 577
    :pswitch_data_4b0
    .packed-switch 0x27
        :pswitch_369  #00000027
        :pswitch_35d  #00000028
        :pswitch_351  #00000029
    .end packed-switch

    :pswitch_data_4ba
    .packed-switch 0x2e
        :pswitch_2ed  #0000002e
        :pswitch_21a  #0000002f
        :pswitch_150  #00000030
        :pswitch_148  #00000031
        :pswitch_148  #00000032
        :pswitch_148  #00000033
        :pswitch_148  #00000034
        :pswitch_148  #00000035
        :pswitch_148  #00000036
        :pswitch_148  #00000037
        :pswitch_148  #00000038
        :pswitch_148  #00000039
    .end packed-switch

    :pswitch_data_4d6
    .packed-switch 0x41
        :pswitch_3e9  #00000041
        :pswitch_3e9  #00000042
        :pswitch_3e9  #00000043
        :pswitch_3e9  #00000044
        :pswitch_3e9  #00000045
        :pswitch_3e9  #00000046
        :pswitch_3e9  #00000047
        :pswitch_3e9  #00000048
        :pswitch_3e9  #00000049
        :pswitch_3e9  #0000004a
        :pswitch_3e9  #0000004b
        :pswitch_3e9  #0000004c
        :pswitch_3e9  #0000004d
        :pswitch_3e9  #0000004e
        :pswitch_3e9  #0000004f
        :pswitch_3e9  #00000050
        :pswitch_3e9  #00000051
        :pswitch_3e9  #00000052
        :pswitch_3e9  #00000053
        :pswitch_3e9  #00000054
        :pswitch_3e9  #00000055
        :pswitch_3e9  #00000056
        :pswitch_3e9  #00000057
        :pswitch_3e9  #00000058
        :pswitch_3e9  #00000059
        :pswitch_3e9  #0000005a
        :pswitch_13c  #0000005b
    .end packed-switch

    :pswitch_data_510
    .packed-switch 0x61
        :pswitch_3e9  #00000061
        :pswitch_3e9  #00000062
        :pswitch_3e9  #00000063
        :pswitch_3e9  #00000064
        :pswitch_3e9  #00000065
        :pswitch_3e9  #00000066
        :pswitch_3e9  #00000067
        :pswitch_3e9  #00000068
        :pswitch_3e9  #00000069
        :pswitch_3e9  #0000006a
        :pswitch_3e9  #0000006b
        :pswitch_3e9  #0000006c
        :pswitch_3e9  #0000006d
        :pswitch_3e9  #0000006e
        :pswitch_3e9  #0000006f
        :pswitch_3e9  #00000070
        :pswitch_3e9  #00000071
        :pswitch_3e9  #00000072
        :pswitch_3e9  #00000073
        :pswitch_3e9  #00000074
        :pswitch_3e9  #00000075
        :pswitch_3e9  #00000076
        :pswitch_3e9  #00000077
        :pswitch_3e9  #00000078
        :pswitch_3e9  #00000079
        :pswitch_3e9  #0000007a
        :pswitch_130  #0000007b
    .end packed-switch
.end method
