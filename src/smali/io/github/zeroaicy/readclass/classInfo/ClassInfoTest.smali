.class public Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;
.super Ljava/lang/Object;
.source "ClassInfoTest.java"


# static fields
.field private static final EnableCache:Z = true

.field public static final ProjectPath:Ljava/lang/String; = "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/ReaderClassFile"

.field public static final curBinPath:Ljava/lang/String; = "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/ReaderClassFile/bin/release"

.field private static mClassFileByZipFileCache:Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReaderClassZeroAicy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->mClassFileByZipFileCache:Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;

    if-nez v0, :cond_d

    .line 185
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;-><init>(I)V

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->mClassFileByZipFileCache:Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;

    .line 188
    :cond_d
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->mClassFileByZipFileCache:Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;

    invoke-virtual {v0, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->getClassFileByZipFile(Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    move-result-object p0

    .line 189
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;Z)Ljava/io/StringReader;

    move-result-object p0

    return-object p0
.end method

.method public static ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;)Ljava/io/StringReader;
    .registers 3

    .line 198
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;Z)Ljava/io/StringReader;

    move-result-object p0

    return-object p0
.end method

.method public static ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;Z)Ljava/io/StringReader;
    .registers 7

    .line 204
    const-string v0, ".class"

    .line 0
    nop

    .line 204
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_15
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->hasClassFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 210
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v2, "Not found ClassFile "

    invoke-direct {p2, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 213
    :cond_41
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->loadClassFileData(Ljava/lang/String;)[B

    move-result-object p1

    .line 214
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_5d

    .line 216
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v0, p1}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 217
    new-instance p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {p1, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassFile;)V

    .line 218
    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 219
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_5e

    :cond_5d
    move-object p1, v1

    :goto_5e
    if-eqz p2, :cond_63

    .line 222
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->close()V

    :cond_63
    if-eqz p1, :cond_6f

    .line 226
    new-instance p0, Ljava/io/StringReader;

    invoke-direct {p0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_4 .. :try_end_6a} :catchall_6b

    return-object p0

    :catchall_6b
    move-exception p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    :cond_6f
    move-object p0, v1

    check-cast p0, Ljava/io/StringReader;

    return-object v1
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

    .line 130
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->mDefaultMethods:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 131
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 133
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "有无: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "java.util.function.Consumer<T>.andThen(java.util.function.Consumer<? super T>)"

    invoke-static {v2}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->hasDefaultMethod(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "有无2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "java.util.Map<K,V>.ofEntries<K,V>(java.util.Map.Entry<?extends K,?extends V>...)"

    invoke-static {v2}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->hasDefaultMethod(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_4a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static TestReadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 2

    .line 157
    :try_start_0
    invoke-static {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    const/4 p0, 0x0

    move-object p1, p0

    check-cast p1, Ljava/io/Reader;

    return-object p0
.end method

.method public static TestReadClass(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/Reader;
    .registers 3

    .line 148
    :try_start_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;-><init>(Ljava/util/zip/ZipFile;)V

    invoke-static {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;)Ljava/io/StringReader;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    const/4 p0, 0x0

    move-object p1, p0

    check-cast p1, Ljava/io/Reader;

    return-object p0
.end method

.method public static getUserAndroidJar()Ljava/lang/String;
    .registers 3

    .line 168
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "/.aide/android.jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_androidjar"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 88
    invoke-static {}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->Test2()V

    return-void
.end method

.method private static method(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    :try_start_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 53
    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 57
    :cond_1b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 58
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;

    invoke-direct {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;-><init>(Ljava/lang/String;)V

    goto :goto_31

    .line 61
    :cond_2c
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    invoke-direct {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;-><init>(Ljava/lang/String;)V

    .line 64
    :goto_31
    invoke-interface {v0, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFile;->loadClassFileData(Ljava/lang/String;)[B

    move-result-object p0

    .line 66
    const/4 p1, 0x0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    if-eqz p0, :cond_4d

    .line 69
    new-instance p1, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {p1, p0}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 70
    new-instance p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassFile;)V

    .line 71
    const/4 v1, 0x4

    invoke-virtual {p1, p0, v1}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 72
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object p1

    .line 74
    :cond_4d
    invoke-interface {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassFile;->close()V

    .line 76
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\n\n源码为:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_4 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_69
    return-void
.end method

.method private static method2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
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

    .line 36
    const/16 p1, 0x2e

    const/16 v0, 0x2f

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 37
    const-string p1, ".class"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 43
    :cond_20
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "输出结果"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "输出结束"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

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
