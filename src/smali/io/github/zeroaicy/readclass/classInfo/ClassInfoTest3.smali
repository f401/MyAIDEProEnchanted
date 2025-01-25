.class public Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;
.super Ljava/lang/Object;
.source "ClassInfoTest3.java"


# static fields
.field private static version:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    invoke-static {}, Lio/github/zeroaicy/readclass/classInfo/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->version:Ljava/lang/String;

    .line 23
    const-string v1, "ClassInfoTest3 version: "

    invoke-static {v1, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestReadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 5

    .line 28
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 29
    move-object p0, v0

    check-cast p0, Ljava/io/Reader;

    return-object v0

    .line 31
    :cond_11
    invoke-static {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    move-exception p0

    .line 34
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 36
    move-object p0, v0

    check-cast p0, Ljava/io/Reader;

    return-object v0
.end method

.method public static modifyADRT(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    if-nez p0, :cond_3

    return-object p0

    .line 44
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_17

    .line 46
    :try_start_8
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->modifyADRT([B)[B

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    goto :goto_e

    .line 56
    :catchall_d
    move-exception v1

    .line 49
    :goto_e
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 50
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    return-object v1

    :catchall_17
    move-exception v0

    .line 54
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 56
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_23

    :catchall_22
    move-exception v0

    :cond_23
    :goto_23
    return-object p0
.end method

.method public static modifyADRT([B)[B
    .registers 4

    .line 64
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 65
    new-instance p0, Lzeroaicy/org/objectweb/asm/ClassWriter;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ClassWriter;-><init>(I)V

    .line 66
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;

    const/high16 v2, 0x80000

    invoke-direct {v1, v2, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;-><init>(ILzeroaicy/org/objectweb/asm/ClassVisitor;)V

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 83
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
