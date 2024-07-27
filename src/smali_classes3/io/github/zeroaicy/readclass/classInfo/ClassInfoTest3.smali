.class public Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;
.super Ljava/lang/Object;
.source "ClassInfoTest3.java"


# static fields
.field private static version:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    const-string v0, "1.3.2.1.5"

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->version:Ljava/lang/String;

    .line 20
    const-string v0, "ClassInfoTest3 version: "

    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestReadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 5

    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Reader;

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-static {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v0, v1

    .line 32
    check-cast v0, Ljava/io/Reader;

    goto :goto_0
.end method

.method public static modifyADRT(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    .line 36
    if-nez p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object p0

    .line 40
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->readStream(Ljava/io/InputStream;Z)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 42
    :try_start_1
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->modifyADRT([B)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 44
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 45
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object p0, v0

    .line 46
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 46
    :catch_1
    move-exception v0

    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static modifyADRT([B)[B
    .registers 5

    .line 57
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 58
    new-instance v1, Lzeroaicy/org/objectweb/asm/ClassWriter;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lzeroaicy/org/objectweb/asm/ClassWriter;-><init>(I)V

    .line 59
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;

    const/high16 v3, 0x80000

    invoke-direct {v2, v3, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;-><init>(ILzeroaicy/org/objectweb/asm/ClassVisitor;)V

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 76
    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
