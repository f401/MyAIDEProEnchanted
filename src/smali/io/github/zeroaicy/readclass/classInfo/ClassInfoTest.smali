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
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReaderClassZeroAicy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->mClassFileByZipFileCache:Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;-><init>(I)V

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->mClassFileByZipFileCache:Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;

    .line 188
    :cond_0
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->mClassFileByZipFileCache:Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;

    invoke-virtual {v0, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->getClassFileByZipFile(Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;Z)Ljava/io/StringReader;

    move-result-object v0

    return-object v0
.end method

.method public static ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;)Ljava/io/StringReader;
    .locals 1

    .line 198
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;Z)Ljava/io/StringReader;

    move-result-object v0

    return-object v0
.end method

.method public static ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;Z)Ljava/io/StringReader;
    .locals 4

    const/4 v1, 0x0

    .line 204
    :try_start_0
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->hasClassFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, "Not found ClassFile "

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/StringReader;

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

    move-object v1, v0

    .line 231
    :goto_0
    return-object v1

    .line 213
    :cond_1
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->loadClassFileData(Ljava/lang/String;)[B

    move-result-object v2

    .line 214
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 216
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 217
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v2, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassFile;)V

    .line 218
    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 219
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->close()V

    :cond_2
    if-eqz v2, :cond_4

    .line 226
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v2, v1

    .line 219
    goto :goto_1

    .line 226
    :catchall_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    move-object v0, v1

    .line 231
    check-cast v0, Ljava/io/StringReader;

    goto :goto_0
.end method

.method public static Test2()V
    .locals 3
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

    move-result-object v1

    .line 131
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\u6709\u65e0: "

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

    const-string v2, "\u6709\u65e02: "

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
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static TestReadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2

    const/4 v1, 0x0

    .line 157
    :try_start_0
    invoke-static {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 157
    :catchall_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 163
    check-cast v0, Ljava/io/Reader;

    goto :goto_0
.end method

.method public static TestReadClass(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2

    const/4 v1, 0x0

    .line 148
    :try_start_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;-><init>(Ljava/util/zip/ZipFile;)V

    invoke-static {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest;->ReaderClassZeroAicy(Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;Ljava/lang/String;)Ljava/io/StringReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 148
    :catchall_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 152
    check-cast v0, Ljava/io/Reader;

    goto :goto_0
.end method

.method public static getUserAndroidJar()Ljava/lang/String;
    .locals 4

    .line 168
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 170
    const-string v2, "user_androidjar"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "/.aide/android.jar"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 52
    const/16 v0, 0x2e

    const/16 v2, 0x2f

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 57
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;

    invoke-direct {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByFileSystem;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 64
    :goto_1
    invoke-interface {v2, v3}, Lio/github/zeroaicy/readclass/classInfo/ClassFile;->loadClassFileData(Ljava/lang/String;)[B

    move-result-object v3

    .line 66
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 69
    new-instance v0, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v0, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 70
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v1, v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassFile;)V

    .line 71
    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 72
    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_2
    invoke-interface {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassFile;->close()V

    .line 76
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "\n\n\u6e90\u7801\u4e3a:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :goto_3
    return-void

    .line 61
    :cond_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    invoke-direct {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method private static method2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 43
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u8f93\u51fa\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u8f93\u51fa\u7ed3\u675f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method static out()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method
