.class Lgroovyjarjarantlr/CppCharFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/CharFormatter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_3b

    const/16 v1, 0x7e

    if-gt p1, v1, :cond_3b

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " /* \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgroovyjarjarantlr/CppCharFormatter;->j6(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' */ "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3b
    return-object v0
.end method

.method public j6(IZ)Ljava/lang/String;
    .registers 4

    const/16 p2, 0x9

    if-eq p1, p2, :cond_83

    const/16 p2, 0xa

    if-eq p1, p2, :cond_80

    const/16 p2, 0xd

    if-eq p1, p2, :cond_7d

    const/16 p2, 0x22

    if-eq p1, p2, :cond_7a

    const/16 p2, 0x27

    if-eq p1, p2, :cond_77

    const/16 p2, 0x5c

    if-eq p1, p2, :cond_74

    const/16 p2, 0x20

    if-lt p1, p2, :cond_27

    const/16 p2, 0x7e

    if-le p1, p2, :cond_21

    goto :goto_27

    :cond_21
    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    :goto_27
    const/16 p2, 0xff

    if-le p1, p2, :cond_5c

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    :goto_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_4a

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_4a
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "\\u"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5c
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "\\"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_74
    const-string p1, "\\\\"

    return-object p1

    :cond_77
    const-string p1, "\\\'"

    return-object p1

    :cond_7a
    const-string p1, "\\\""

    return-object p1

    :cond_7d
    const-string p1, "\\r"

    return-object p1

    :cond_80
    const-string p1, "\\n"

    return-object p1

    :cond_83
    const-string p1, "\\t"

    return-object p1
.end method
