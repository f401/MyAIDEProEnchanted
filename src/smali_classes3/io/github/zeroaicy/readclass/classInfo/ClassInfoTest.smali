.class public Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;
.super Ljava/lang/Object;
.source "ClassInfoTest.java"


# static fields
.field public static final ProjectPath:Ljava/lang/String; = "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/ReaderClassFile"

.field public static final curBinPath:Ljava/lang/String; = "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/ReaderClassFile/bin/release"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReaderClassZeroAicy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;)Ljava/io/StringReader;

    move-result-object v0

    return-object v0
.end method

.method public static ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;)Ljava/io/StringReader;
    .registers 7

    const/4 v1, 0x0

    .line 191
    :try_start_0
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 194
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->hasClassFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Ljava/io/StringReader;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Not found ClassFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-object v0

    .line 198
    :cond_1
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->loadClassFileData(Ljava/lang/String;)[B

    move-result-object v2

    .line 199
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 200
    if-eqz v2, :cond_3

    .line 201
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 202
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v2, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassFile;)V

    .line 203
    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 204
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 206
    :goto_1
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->close()V

    .line 207
    if-eqz v2, :cond_2

    .line 208
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    move-object v0, v1

    .line 214
    check-cast v0, Ljava/io/StringReader;

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method public static Test2()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    const-string v0, "abcd.po"

    const-string v1, "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/AIDE+/appBase/libs/classes3.2.210316_compileOnly.jar"

    invoke-static {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->method(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->mDefaultMethods:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "\u6709\u65e0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "java.util.function.Consumer<T>.andThen(java.util.function.Consumer<? super T>)"

    invoke-static {v2}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->hasDefaultMethod(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "\u6709\u65e02: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "java.util.Map<K,V>.ofEntries<K,V>(java.util.Map.Entry<?extends K,?extends V>...)"

    invoke-static {v2}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->hasDefaultMethod(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static TestReadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 3

    .line 175
    :try_start_0
    invoke-static {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Reader;

    goto :goto_0
.end method

.method public static TestReadClass(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/Reader;
    .registers 3

    .line 163
    :try_start_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;-><init>(Ljava/util/zip/ZipFile;)V

    invoke-static {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;)Ljava/io/StringReader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Reader;

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    invoke-static {}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->Test2()V

    return-void
.end method

.method public static method(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 131
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 135
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;

    invoke-direct {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 141
    :goto_1
    invoke-interface {v1, v2}, Lio/github/zeroaicy/readclass/classInfo/ClassFile;->loadClassFileData(Ljava/lang/String;)[B

    move-result-object v2

    .line 142
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 143
    if-eqz v2, :cond_0

    .line 144
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 145
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v2, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassFile;)V

    .line 146
    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 147
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    invoke-interface {v1}, Lio/github/zeroaicy/readclass/classInfo/ClassFile;->close()V

    .line 151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\n\n\u6e90\u7801\u4e3a:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    :goto_2
    return-void

    .line 139
    :cond_1
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    invoke-direct {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method public static method2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/net/URISyntaxException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 115
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 119
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u8f93\u51fa\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u8f93\u51fa\u7ed3\u675f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method static out()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method
