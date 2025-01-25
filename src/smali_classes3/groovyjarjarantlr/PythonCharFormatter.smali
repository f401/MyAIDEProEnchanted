.class public Lgroovyjarjarantlr/PythonCharFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/CharFormatter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(IZ)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/PythonCharFormatter;->j6(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lgroovyjarjarantlr/PythonCharFormatter;->DW(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(IZ)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_ae

    const/16 v0, 0xa

    if-eq p1, v0, :cond_ab

    const/16 v0, 0xd

    if-eq p1, v0, :cond_a8

    const/16 v0, 0x22

    if-eq p1, v0, :cond_a0

    const/16 v0, 0x27

    if-eq p1, v0, :cond_98

    const/16 p2, 0x5c

    if-eq p1, p2, :cond_95

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
    const/16 p2, 0x10

    if-ltz p1, :cond_45

    const/16 v0, 0xf

    if-gt p1, v0, :cond_45

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_45
    if-gt p2, p1, :cond_61

    const/16 v0, 0xff

    if-gt p1, v0, :cond_61

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_61
    const/16 v0, 0x100

    if-gt v0, p1, :cond_7f

    const/16 v0, 0xfff

    if-gt p1, v0, :cond_7f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_95
    const-string p1, "\\\\"

    return-object p1

    :cond_98
    if-eqz p2, :cond_9d

    const-string p1, "\\\'"

    goto :goto_9f

    :cond_9d
    const-string p1, "\'"

    :goto_9f
    return-object p1

    :cond_a0
    if-eqz p2, :cond_a5

    const-string p1, "\""

    goto :goto_a7

    :cond_a5
    const-string p1, "\\\""

    :goto_a7
    return-object p1

    :cond_a8
    const-string p1, "\\r"

    return-object p1

    :cond_ab
    const-string p1, "\\n"

    return-object p1

    :cond_ae
    const-string p1, "\\t"

    return-object p1
.end method
