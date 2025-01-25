.class public final Lorg/apache/tools/ant/util/JavaEnvUtils;
.super Ljava/lang/Object;
.source "JavaEnvUtils.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final IS_AIX:Z

.field private static final IS_DOS:Z

.field private static final IS_NETWARE:Z

.field public static final JAVA_10:Ljava/lang/String; = "10"

.field public static final JAVA_11:Ljava/lang/String; = "11"

.field public static final JAVA_12:Ljava/lang/String; = "12"

.field public static final JAVA_1_0:Ljava/lang/String; = "1.0"

.field public static final JAVA_1_1:Ljava/lang/String; = "1.1"

.field public static final JAVA_1_2:Ljava/lang/String; = "1.2"

.field public static final JAVA_1_3:Ljava/lang/String; = "1.3"

.field public static final JAVA_1_4:Ljava/lang/String; = "1.4"

.field public static final JAVA_1_5:Ljava/lang/String; = "1.5"

.field public static final JAVA_1_6:Ljava/lang/String; = "1.6"

.field public static final JAVA_1_7:Ljava/lang/String; = "1.7"

.field public static final JAVA_1_8:Ljava/lang/String; = "1.8"

.field public static final JAVA_1_9:Ljava/lang/String; = "1.9"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_9:Ljava/lang/String; = "9"

.field private static final JAVA_HOME:Ljava/lang/String;

.field public static final VERSION_10:I = 0x64

.field public static final VERSION_11:I = 0x6e

.field public static final VERSION_12:I = 0x78

.field public static final VERSION_1_0:I = 0xa

.field public static final VERSION_1_1:I = 0xb

.field public static final VERSION_1_2:I = 0xc

.field public static final VERSION_1_3:I = 0xd

.field public static final VERSION_1_4:I = 0xe

.field public static final VERSION_1_5:I = 0xf

.field public static final VERSION_1_6:I = 0x10

.field public static final VERSION_1_7:I = 0x11

.field public static final VERSION_1_8:I = 0x12

.field public static final VERSION_1_9:I = 0x13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION_9:I = 0x5a

.field private static classpathDetected:Z

.field private static gijDetected:Z

.field private static harmonyDetected:Z

.field private static javaVersion:Ljava/lang/String;

.field private static javaVersionNumber:I

.field private static jrePackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static kaffeDetected:Z

.field private static final parsedJavaVersion:Lorg/apache/tools/ant/util/DeweyDecimal;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    const-string v0, "dos"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_DOS:Z

    .line 43
    const-string v0, "netware"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_NETWARE:Z

    .line 45
    const-string v0, "aix"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_AIX:Z

    .line 48
    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    .line 51
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 189
    :try_start_28
    const-string v0, "1.8"

    sput-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    .line 190
    const/16 v0, 0x12

    sput v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    .line 191
    const-string v0, "java.lang.module.ModuleDescriptor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 193
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    .line 196
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->getSize()I

    move-result v0

    if-le v0, v2, :cond_59

    .line 197
    sget v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    sput v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    .line 199
    :cond_59
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_28 .. :try_end_5f} :catchall_99

    .line 204
    :goto_5f
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->parsedJavaVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    .line 205
    sput-boolean v3, Lorg/apache/tools/ant/util/JavaEnvUtils;->kaffeDetected:Z

    .line 207
    :try_start_6a
    const-string v0, "kaffe.util.NotImplemented"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 208
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->kaffeDetected:Z
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_97

    .line 212
    :goto_72
    sput-boolean v3, Lorg/apache/tools/ant/util/JavaEnvUtils;->classpathDetected:Z

    .line 214
    :try_start_74
    const-string v0, "gnu.classpath.Configuration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 215
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->classpathDetected:Z
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_95

    .line 219
    :goto_7c
    sput-boolean v3, Lorg/apache/tools/ant/util/JavaEnvUtils;->gijDetected:Z

    .line 221
    :try_start_7e
    const-string v0, "gnu.gcj.Core"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 222
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->gijDetected:Z
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_93

    .line 226
    :goto_86
    sput-boolean v3, Lorg/apache/tools/ant/util/JavaEnvUtils;->harmonyDetected:Z

    .line 228
    :try_start_88
    const-string v0, "org.apache.harmony.luni.util.Base64"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->harmonyDetected:Z
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_91

    .line 233
    :goto_90
    return-void

    .line 230
    :catchall_91
    move-exception v0

    goto :goto_90

    .line 223
    :catchall_93
    move-exception v0

    goto :goto_86

    .line 216
    :catchall_95
    move-exception v0

    goto :goto_7c

    .line 209
    :catchall_97
    move-exception v0

    goto :goto_72

    .line 200
    :catchall_99
    move-exception v0

    goto :goto_5f
.end method

.method private constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method private static addExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_DOS:Z

    if-eqz v0, :cond_16

    const-string v0, ".exe"

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    const-string v0, ""

    goto :goto_e
.end method

.method private static buildJrePackages()V
    .registers 2

    .line 470
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    .line 471
    const-string v1, "sun"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 472
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 473
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "javax"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 474
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.java"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 475
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.image"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 476
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "org.omg"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 477
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.corba"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 478
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.jndi"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 479
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.media"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 480
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.naming"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 481
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.org.omg"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 482
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.rmi"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 483
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "sunw.io"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 484
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "sunw.util"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 485
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "org.ietf.jgss"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 486
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "org.w3c.dom"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 487
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "org.xml.sax"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 488
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.org.apache"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 489
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "jdk"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 490
    return-void
.end method

.method public static createVmsJavaOptionFile([Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 545
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const-string v2, "ANT"

    const-string v3, ".JAVA_OPTS"

    const/4 v6, 0x1

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v0

    .line 546
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 547
    :try_start_18
    array-length v2, p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_2a

    :goto_19
    if-ge v5, v2, :cond_26

    aget-object v3, p0, v5

    .line 548
    :try_start_1d
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_2a

    .line 547
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 551
    :cond_26
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 552
    return-object v0

    .line 546
    :catchall_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    :goto_2e
    throw v0

    :catchall_2f
    move-exception v1

    goto :goto_2e
.end method

.method private static findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    .line 451
    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 454
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->addExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 459
    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v1

    goto :goto_1c
.end method

.method public static getJavaHome()Ljava/lang/String;
    .registers 1

    .line 560
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    return-object v0
.end method

.method public static getJavaVersion()Ljava/lang/String;
    .registers 1

    .line 244
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getJavaVersionNumber()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    sget v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    return v0
.end method

.method public static getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 402
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_NETWARE:Z

    if-eqz v0, :cond_5

    .line 430
    :goto_4
    return-object p0

    .line 410
    :cond_5
    const/4 v0, 0x0

    .line 412
    sget-boolean v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_AIX:Z

    if-eqz v1, :cond_21

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/../sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 418
    :cond_21
    if-nez v0, :cond_3a

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/../bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 422
    :cond_3a
    if-eqz v0, :cond_41

    .line 423
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 430
    :cond_41
    invoke-static {p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJreExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static getJreExecutable(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 361
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_NETWARE:Z

    if-eqz v0, :cond_5

    .line 387
    :goto_4
    return-object p0

    .line 369
    :cond_5
    const/4 v0, 0x0

    .line 371
    sget-boolean v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_AIX:Z

    if-eqz v1, :cond_21

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 377
    :cond_21
    if-nez v0, :cond_3a

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 381
    :cond_3a
    if-eqz v0, :cond_41

    .line 382
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 387
    :cond_41
    invoke-static {p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->addExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static getJrePackageTestCases()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 499
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 500
    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 501
    const-string v1, "sun.reflect.SerializationConstructorAccessorImpl"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 502
    const-string v1, "sun.net.www.http.HttpClient"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 503
    const-string v1, "sun.audio.AudioPlayer"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 504
    const-string v1, "javax.accessibility.Accessible"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 505
    const-string v1, "sun.misc.BASE64Encoder"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 506
    const-string v1, "com.sun.image.codec.jpeg.JPEGCodec"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 507
    const-string v1, "org.omg.CORBA.Any"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 508
    const-string v1, "com.sun.corba.se.internal.corba.AnyImpl"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 509
    const-string v1, "com.sun.jndi.ldap.LdapURL"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 510
    const-string v1, "com.sun.media.sound.Printer"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 511
    const-string v1, "com.sun.naming.internal.VersionHelper"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 512
    const-string v1, "com.sun.org.omg.CORBA.Initializer"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 513
    const-string v1, "sunw.io.Serializable"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 514
    const-string v1, "sunw.util.EventListener"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 515
    const-string v1, "sun.audio.AudioPlayer"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 516
    const-string v1, "org.ietf.jgss.Oid"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 517
    const-string v1, "org.w3c.dom.Attr"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 518
    const-string v1, "org.xml.sax.XMLReader"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 519
    const-string v1, "com.sun.org.apache.xerces.internal.jaxp.datatype.DatatypeFactoryImpl"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 520
    const-string v1, "jdk.net.Sockets"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 521
    return-object v0
.end method

.method public static getJrePackages()Ljava/util/Vector;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 529
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    if-nez v0, :cond_7

    .line 530
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->buildJrePackages()V

    .line 532
    :cond_7
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    return-object v0
.end method

.method public static getParsedJavaVersion()Lorg/apache/tools/ant/util/DeweyDecimal;
    .registers 1

    .line 271
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->parsedJavaVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    return-object v0
.end method

.method public static isApacheHarmony()Z
    .registers 1

    .line 339
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->harmonyDetected:Z

    return v0
.end method

.method public static isAtLeastJavaVersion(Ljava/lang/String;)Z
    .registers 3

    .line 301
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->parsedJavaVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->compareTo(Lorg/apache/tools/ant/util/DeweyDecimal;)I

    move-result v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isClasspathBased()Z
    .registers 1

    .line 320
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->classpathDetected:Z

    return v0
.end method

.method public static isGij()Z
    .registers 1

    .line 330
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->gijDetected:Z

    return v0
.end method

.method public static isJavaVersion(Ljava/lang/String;)Z
    .registers 3

    .line 285
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    .line 286
    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "1.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 285
    :goto_1b
    return v0

    .line 286
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isKaffe()Z
    .registers 1

    .line 311
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->kaffeDetected:Z

    return v0
.end method
