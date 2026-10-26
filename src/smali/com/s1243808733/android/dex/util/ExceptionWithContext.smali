.class public Lcom/s1243808733/android/dex/util/ExceptionWithContext;
.super Ljava/lang/RuntimeException;
.source "ExceptionWithContext.java"


# instance fields
.field private context:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 77
    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    instance-of v0, p2, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    if-eqz v0, :cond_2

    .line 82
    check-cast p2, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    iget-object v0, p2, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :goto_1
    return-void

    .line 4294967295
    :cond_0
    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;
    .locals 1

    .line 42
    instance-of v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    .line 48
    :goto_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public addContext(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "str == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printContext(Ljava/io/PrintStream;)V
    .locals 1

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
    .locals 1

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
    .locals 1

    .line 93
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
