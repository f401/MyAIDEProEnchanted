.class public Labcd/Vt;
.super Ljava/lang/RuntimeException;


# instance fields
.field private j6:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/Vt;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p1, :cond_3

    goto :goto_b

    :cond_3
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of p1, p2, Labcd/Vt;

    const/16 v0, 0xc8

    if-eqz p1, :cond_2c

    check-cast p2, Labcd/Vt;

    iget-object p1, p2, Labcd/Vt;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p2, p0, Labcd/Vt;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33

    :cond_2c
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Labcd/Vt;->j6:Ljava/lang/StringBuffer;

    :goto_33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Labcd/Vt;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;
    .registers 3

    instance-of v0, p0, Labcd/Vt;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/Vt;

    goto :goto_d

    :cond_7
    new-instance v0, Labcd/Vt;

    invoke-direct {v0, p0}, Labcd/Vt;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_d
    invoke-virtual {p0, p1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public j6(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_17

    iget-object v0, p0, Labcd/Vt;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Labcd/Vt;->j6:Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_16
    return-void

    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v0, p0, Labcd/Vt;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Labcd/Vt;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
