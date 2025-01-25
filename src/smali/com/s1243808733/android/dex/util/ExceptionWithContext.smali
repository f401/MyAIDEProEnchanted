.class public Lcom/s1243808733/android/dex/util/ExceptionWithContext;
.super Ljava/lang/RuntimeException;
.source "ExceptionWithContext.java"


# instance fields
.field private context:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p1, :cond_3

    goto :goto_b

    :cond_3
    if-eqz p2, :cond_a

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 77
    :goto_b
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    instance-of p1, p2, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    const/16 v0, 0xc8

    if-eqz p1, :cond_2c

    .line 82
    check-cast p2, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    iget-object p1, p2, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p2, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 86
    :cond_2c
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    :goto_33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;
    .registers 3

    .line 42
    instance-of v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    if-eqz v0, :cond_7

    .line 43
    check-cast p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    goto :goto_d

    .line 45
    :cond_7
    new-instance v0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    .line 48
    :goto_d
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public addContext(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_17

    .line 114
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 116
    iget-object p1, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_16
    return-void

    .line 111
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getContext()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printContext(Ljava/io/PrintStream;)V
    .registers 3

    .line 135
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public printContext(Ljava/io/PrintWriter;)V
    .registers 3

    .line 145
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    .line 93
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    .line 100
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
