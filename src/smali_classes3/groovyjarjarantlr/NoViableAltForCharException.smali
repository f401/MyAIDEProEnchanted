.class public Lgroovyjarjarantlr/NoViableAltForCharException;
.super Lgroovyjarjarantlr/RecognitionException;


# instance fields
.field public Hw:C


# direct methods
.method public constructor <init>(CLjava/lang/String;II)V
    .registers 6

    const-string v0, "NoViableAlt"

    invoke-direct {p0, v0, p2, p3, p4}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-char p1, p0, Lgroovyjarjarantlr/NoViableAltForCharException;->Hw:C

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 4

    iget-char v0, p0, Lgroovyjarjarantlr/NoViableAltForCharException;->Hw:C

    const/16 v1, 0x20

    const-string v2, "unexpected char: "

    if-lt v0, v1, :cond_3e

    const/16 v1, 0x7e

    if-gt v0, v1, :cond_3e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v0, p0, Lgroovyjarjarantlr/NoViableAltForCharException;->Hw:C

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    :cond_3e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lgroovyjarjarantlr/NoViableAltForCharException;->Hw:C

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5c
    return-object v0
.end method
