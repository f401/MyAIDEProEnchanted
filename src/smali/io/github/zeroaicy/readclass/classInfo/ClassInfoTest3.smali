.class public Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;
.super Ljava/lang/Object;
.source "ClassInfoTest3.java"


# static fields
.field private static version:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/github/zeroaicy/readclass/classInfo/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->version:Ljava/lang/String;

    .line 23
    const-string v1, "ClassInfoTest3 version: "

    invoke-static {v1, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestReadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 3

    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Reader;

    .line 36
    :goto_0
    return-object v1

    .line 31
    :cond_0
    invoke-static {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 34
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v0, v1

    .line 36
    check-cast v0, Ljava/io/Reader;

    goto :goto_0
.end method

.method public static modifyADRT(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object p0

    .line 44
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->readStream(Ljava/io/InputStream;Z)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 46
    :try_start_1
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->modifyADRT([B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 49
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p0, v0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 50
    :catchall_1
    move-exception v0

    .line 54
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public static modifyADRT([B)[B
    .locals 4

    .line 64
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 65
    new-instance v1, Lzeroaicy/org/objectweb/asm/ClassWriter;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lzeroaicy/org/objectweb/asm/ClassWriter;-><init>(I)V

    .line 66
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;

    const/high16 v3, 0x80000

    invoke-direct {v2, v3, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;-><init>(ILzeroaicy/org/objectweb/asm/ClassVisitor;)V

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 83
    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
