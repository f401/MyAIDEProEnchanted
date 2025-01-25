.class public Lcom/s1243808733/aide/builder/MyPrintStream;
.super Ljava/io/PrintStream;
.source "MyPrintStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    const-string v0, "[okhttp]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 15
    const-string v0, "[OkHttp]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 16
    const-string v0, "[socket]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 17
    const-string v0, "com.mediatek.cta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 18
    invoke-super {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    return-void
.end method
