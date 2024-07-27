.class Lorg/apache/tools/mail/MailPrintStream;
.super Ljava/io/PrintStream;
.source "MailMessage.java"


# instance fields
.field private lastChar:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .line 479
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 480
    return-void
.end method


# virtual methods
.method rawPrint(Ljava/lang/String;)V
    .registers 6

    .line 510
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-char v3, v1, v0

    .line 511
    invoke-virtual {p0, v3}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    return-void
.end method

.method rawWrite(I)V
    .registers 2

    .line 506
    invoke-super {p0, p1}, Ljava/io/PrintStream;->write(I)V

    .line 507
    return-void
.end method

.method public write(I)V
    .registers 6

    const/16 v3, 0x2e

    const/16 v2, 0xd

    const/16 v1, 0xa

    .line 486
    if-ne p1, v1, :cond_0

    iget v0, p0, Lorg/apache/tools/mail/MailPrintStream;->lastChar:I

    if-eq v0, v2, :cond_0

    .line 487
    invoke-virtual {p0, v2}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    .line 488
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    .line 495
    :goto_0
    iput p1, p0, Lorg/apache/tools/mail/MailPrintStream;->lastChar:I

    .line 496
    return-void

    .line 489
    :cond_0
    if-ne p1, v3, :cond_1

    iget v0, p0, Lorg/apache/tools/mail/MailPrintStream;->lastChar:I

    if-ne v0, v1, :cond_1

    .line 490
    invoke-virtual {p0, v3}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    .line 491
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    goto :goto_0
.end method

.method public write([BII)V
    .registers 6

    .line 500
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 501
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/mail/MailPrintStream;->write(I)V

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    return-void
.end method
