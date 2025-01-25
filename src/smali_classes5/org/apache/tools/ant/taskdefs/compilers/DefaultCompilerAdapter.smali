.class public abstract Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.super Ljava/lang/Object;
.source "DefaultCompilerAdapter.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;
.implements Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterExtension;


# static fields
.field private static final COMMAND_LINE_LIMIT:I

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final JAVAC_ARG_FILE_CHARS_TO_QUOTE:Ljava/util/regex/Pattern;

.field protected static final lSep:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected attributes:Lorg/apache/tools/ant/taskdefs/Javac;

.field protected bootclasspath:Lorg/apache/tools/ant/types/Path;

.field protected compileClasspath:Lorg/apache/tools/ant/types/Path;

.field protected compileList:[Ljava/io/File;

.field protected compileSourcepath:Lorg/apache/tools/ant/types/Path;

.field protected debug:Z

.field protected depend:Z

.field protected deprecation:Z

.field protected destDir:Ljava/io/File;

.field protected encoding:Ljava/lang/String;

.field protected extdirs:Lorg/apache/tools/ant/types/Path;

.field protected includeAntRuntime:Z

.field protected includeJavaRuntime:Z

.field protected location:Lorg/apache/tools/ant/Location;

.field protected memoryInitialSize:Ljava/lang/String;

.field protected memoryMaximumSize:Ljava/lang/String;

.field protected moduleSourcepath:Lorg/apache/tools/ant/types/Path;

.field protected modulepath:Lorg/apache/tools/ant/types/Path;

.field protected optimize:Z

.field protected project:Lorg/apache/tools/ant/Project;

.field protected release:Ljava/lang/String;

.field protected src:Lorg/apache/tools/ant/types/Path;

.field protected target:Ljava/lang/String;

.field protected upgrademodulepath:Lorg/apache/tools/ant/types/Path;

.field protected verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-string v0, "os/2"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 56
    const/16 v0, 0x3e8

    sput v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->COMMAND_LINE_LIMIT:I

    .line 63
    :goto_c
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 68
    sget-object v0, Lorg/apache/tools/ant/util/StringUtils;->LINE_SEP:Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->lSep:Ljava/lang/String;

    .line 71
    const-string v0, "[ #]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->JAVAC_ARG_FILE_CHARS_TO_QUOTE:Ljava/util/regex/Pattern;

    return-void

    .line 58
    :cond_1f
    const/16 v0, 0x1000

    sput v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->COMMAND_LINE_LIMIT:I

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->debug:Z

    .line 77
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->optimize:Z

    .line 78
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->deprecation:Z

    .line 79
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->depend:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->verbose:Z

    return-void
.end method

.method private adjustSourceValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 947
    const-string v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "1.2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const-string p1, "1.3"

    :cond_12
    return-object p1
.end method

.method private assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 843
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 845
    invoke-static {p2}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 846
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isJdkCompilerNickname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    .line 844
    :goto_1f
    return v0

    .line 846
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private getDefaultSource()Ljava/lang/String;
    .registers 2

    .line 901
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 902
    const-string v0, "9 in JDK 9"

    .line 913
    :goto_8
    return-object v0

    .line 904
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 905
    const-string v0, "1.8 in JDK 1.8"

    goto :goto_8

    .line 907
    :cond_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 908
    const-string v0, "1.7 in JDK 1.7"

    goto :goto_8

    .line 910
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 911
    const-string v0, "1.5 in JDK 1.5 and 1.6"

    goto :goto_8

    .line 913
    :cond_24
    const-string v0, ""

    goto :goto_8
.end method

.method static synthetic lambda$logAndAddFilesToCompile$0(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V
    .registers 3

    .line 497
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$logAndAddFilesToCompile$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 498
    const-string v0, "    %s%n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mustSetSourceForTarget(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 926
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 932
    :cond_7
    :goto_7
    return v0

    .line 929
    :cond_8
    const-string v1, "1."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 930
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 932
    :cond_15
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 933
    const-string v1, "5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_45
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v1

    if-nez v1, :cond_75

    .line 934
    :cond_4b
    const-string v1, "7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v1

    if-nez v1, :cond_75

    .line 935
    :cond_59
    const-string v1, "8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v1

    if-nez v1, :cond_75

    .line 936
    :cond_67
    const-string v1, "9"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava10Plus()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_75
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private setImplicitSourceSwitch(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    .line 880
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 881
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "          WARNING"

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 882
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 883
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The -source switch defaults to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getDefaultSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 886
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "If you specify -target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " you now must also specify -source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 889
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ant will implicitly add -source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for you.  Please change your build file."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 892
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-source"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 894
    return-void
.end method


# virtual methods
.method protected addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 3

    .line 620
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCurrentCompilerArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline;->addArguments([Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method protected addExtdirsToClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 612
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Path;->addExtdirs(Lorg/apache/tools/ant/types/Path;)V

    .line 613
    return-void
.end method

.method protected assumeJava10Plus()Z
    .registers 3

    .line 833
    const-string v0, "javac10+"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 834
    const-string v0, "10"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 835
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isJdkCompilerNickname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    .line 833
    :goto_23
    return v0

    .line 835
    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected assumeJava11()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 631
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_1Plus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected assumeJava12()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_3Plus()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected assumeJava13()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_3Plus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_4Plus()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected assumeJava14()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 697
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_4Plus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected assumeJava15()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 718
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_6Plus()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected assumeJava16()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 739
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_6Plus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected assumeJava17()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected assumeJava18()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected assumeJava19()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9()Z

    move-result v0

    return v0
.end method

.method protected assumeJava1_1Plus()Z
    .registers 3

    .line 640
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 641
    const-string v1, "javac1.1"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 642
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 640
    :goto_15
    return v0

    .line 642
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected assumeJava1_2Plus()Z
    .registers 3

    .line 662
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 663
    const-string v1, "javac1.2"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 664
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_3Plus()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 662
    :goto_15
    return v0

    .line 664
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected assumeJava1_3Plus()Z
    .registers 3

    .line 684
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 685
    const-string v1, "javac1.3"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 686
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_4Plus()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 684
    :goto_15
    return v0

    .line 686
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected assumeJava1_4Plus()Z
    .registers 3

    .line 706
    const-string v0, "javac1.4"

    const-string v1, "1.4"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 707
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 706
    :goto_11
    return v0

    .line 707
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected assumeJava1_5Plus()Z
    .registers 3

    .line 727
    const-string v0, "javac1.5"

    const-string v1, "1.5"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 728
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_6Plus()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 727
    :goto_11
    return v0

    .line 728
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected assumeJava1_6Plus()Z
    .registers 3

    .line 748
    const-string v0, "javac1.6"

    const-string v1, "1.6"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 749
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 748
    :goto_11
    return v0

    .line 749
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected assumeJava1_7Plus()Z
    .registers 3

    .line 769
    const-string v0, "javac1.7"

    const-string v1, "1.7"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 770
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 769
    :goto_11
    return v0

    .line 770
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected assumeJava1_8Plus()Z
    .registers 3

    .line 790
    const-string v0, "javac1.8"

    const-string v1, "1.8"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 791
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 790
    :goto_11
    return v0

    .line 791
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected assumeJava9()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava10Plus()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected assumeJava9Plus()Z
    .registers 3

    .line 822
    const-string v0, "javac9"

    const-string v1, "9"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 823
    const-string v0, "javac1.9"

    const-string v1, "9"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 824
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava10Plus()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 822
    :goto_1b
    return v0

    .line 824
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected executeExternalCompile([Ljava/lang/String;I)I
    .registers 4

    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->executeExternalCompile([Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method protected executeExternalCompile([Ljava/lang/String;IZ)I
    .registers 12

    const/4 v7, 0x0

    .line 536
    .line 547
    :try_start_1
    invoke-static {p1}, Lorg/apache/tools/ant/types/Commandline;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->COMMAND_LINE_LIMIT:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_89

    if-le v0, v1, :cond_eb

    if-ltz p2, :cond_eb

    .line 550
    :try_start_f
    sget-object v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 551
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getTempdir()Ljava/io/File;

    move-result-object v4

    .line 550
    const-string v2, "files"

    const-string v3, ""

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_26} :catch_117
    .catchall {:try_start_f .. :try_end_26} :catchall_89

    move-result-object v0

    .line 552
    :try_start_27
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_7d
    .catchall {:try_start_27 .. :try_end_31} :catchall_110

    move v1, p2

    .line 554
    :goto_32
    :try_start_32
    array-length v3, p1

    if-ge v1, v3, :cond_91

    .line 555
    if-eqz p3, :cond_72

    sget-object v3, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->JAVAC_ARG_FILE_CHARS_TO_QUOTE:Ljava/util/regex/Pattern;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_78

    move-result v3

    if-eqz v3, :cond_72

    .line 556
    aget-object v3, p1, v1

    :try_start_47
    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 557
    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 562
    :goto_6c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 560
    :cond_72
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_47 .. :try_end_77} :catchall_78

    goto :goto_6c

    .line 552
    :catchall_78
    move-exception v1

    :try_start_79
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_114

    :goto_7c
    :try_start_7c
    throw v1
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7d} :catch_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_110

    .line 570
    :catch_7d
    move-exception v1

    move-object v7, v0

    .line 571
    :goto_7f
    :try_start_7f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error creating temporary file"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->location:Lorg/apache/tools/ant/Location;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_89
    .catchall {:try_start_7f .. :try_end_89} :catchall_89

    .line 598
    :catchall_89
    move-exception v0

    move-object v1, v0

    :goto_8b
    if-eqz v7, :cond_90

    .line 599
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 601
    :cond_90
    throw v1

    .line 564
    :cond_91
    :try_start_91
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 565
    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 566
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p2
    :try_end_b0
    .catchall {:try_start_91 .. :try_end_b0} :catchall_78

    .line 569
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_7d
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_110

    .line 579
    :goto_b3
    :try_start_b3
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 583
    const-string v3, "openvms"

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 586
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setVMLauncher(Z)V

    .line 588
    :cond_cd
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 589
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v3}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 590
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 591
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    .line 592
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->getExitValue()I
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_e4} :catch_ee
    .catchall {:try_start_b3 .. :try_end_e4} :catchall_110

    move-result v1

    .line 598
    if-eqz v0, :cond_ea

    .line 599
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 592
    :cond_ea
    return v1

    :cond_eb
    move-object v0, v7

    move-object v1, p1

    .line 575
    goto :goto_b3

    .line 593
    :catch_ee
    move-exception v1

    .line 594
    :try_start_ef
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " compiler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->location:Lorg/apache/tools/ant/Location;

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_110
    .catchall {:try_start_ef .. :try_end_110} :catchall_110

    .line 598
    :catchall_110
    move-exception v1

    move-object v7, v0

    goto/16 :goto_8b

    .line 552
    :catchall_114
    move-exception v2

    goto/16 :goto_7c

    .line 570
    :catch_117
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7f
.end method

.method protected getBootClassPath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 857
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 858
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_e

    .line 859
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 861
    :cond_e
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemBootClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getCompileClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 4

    .line 174
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->isIncludeDestClasses()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    .line 186
    :cond_1a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 187
    if-nez v0, :cond_25

    .line 188
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 190
    :cond_25
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->includeAntRuntime:Z

    if-eqz v2, :cond_3a

    .line 191
    const-string v2, "last"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 196
    :goto_32
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->includeJavaRuntime:Z

    if-eqz v0, :cond_39

    .line 197
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    .line 200
    :cond_39
    return-object v1

    .line 193
    :cond_3a
    const-string v2, "ignore"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_32
.end method

.method public getJavac()Lorg/apache/tools/ant/taskdefs/Javac;
    .registers 2

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    return-object v0
.end method

.method protected getModulepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 209
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 210
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_10

    .line 211
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 213
    :cond_10
    return-object v0
.end method

.method protected getModulesourcepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 235
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 236
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_10

    .line 237
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/Path;)V

    .line 239
    :cond_10
    return-object v0
.end method

.method protected getNoDebugArgument()Ljava/lang/String;
    .registers 2

    .line 875
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "-g:none"

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getSupportedFileExtensions()[Ljava/lang/String;
    .registers 4

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "java"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 222
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 223
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_10

    .line 224
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 226
    :cond_10
    return-object v0
.end method

.method protected logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v5, 0x3

    .line 491
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compilation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->describeArguments()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 493
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileList:[Ljava/io/File;

    array-length v0, v0

    if-ne v0, v3, :cond_60

    const-string v0, "File"

    .line 493
    :goto_25
    const-string v2, "%s to be compiled:"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 496
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileList:[Ljava/io/File;

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda2;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/Commandline;)V

    .line 497
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda3;

    .line 498
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 499
    const-string v2, ""

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 496
    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 500
    return-void

    .line 494
    :cond_60
    const-string v0, "Files"

    goto :goto_25
.end method

.method public setJavac(Lorg/apache/tools/ant/taskdefs/Javac;)V
    .registers 4

    .line 110
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 111
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getSrcdir()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->src:Lorg/apache/tools/ant/types/Path;

    .line 112
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDestdir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    .line 113
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->encoding:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->debug:Z

    .line 115
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getOptimize()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->optimize:Z

    .line 116
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDeprecation()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->deprecation:Z

    .line 117
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDepend()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->depend:Z

    .line 118
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getVerbose()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->verbose:Z

    .line 119
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getTarget()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->target:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getRelease()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 122
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getExtdirs()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    .line 123
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getFileList()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileList:[Ljava/io/File;

    .line 124
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 125
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 126
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 127
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getSourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 128
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getModulesourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 129
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    .line 130
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->location:Lorg/apache/tools/ant/Location;

    .line 131
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getIncludeantruntime()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->includeAntRuntime:Z

    .line 132
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getIncludejavaruntime()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->includeJavaRuntime:Z

    .line 133
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getMemoryInitialSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryInitialSize:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getMemoryMaximumSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryMaximumSize:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->src:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_a9

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_a9

    .line 137
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 139
    :cond_a9
    return-void
.end method

.method protected setupJavacCommand()Lorg/apache/tools/ant/types/Commandline;
    .registers 2

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupJavacCommand(Z)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    return-object v0
.end method

.method protected setupJavacCommand(Z)Lorg/apache/tools/ant/types/Commandline;
    .registers 3

    .line 479
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 480
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;

    .line 481
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 482
    return-object v0
.end method

.method protected setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;)Lorg/apache/tools/ant/types/Commandline;
    .registers 3

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    return-object v0
.end method

.method protected setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;
    .registers 10

    const/4 v6, 0x1

    .line 260
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    .line 264
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_11b

    .line 265
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 270
    :goto_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v1

    if-eqz v1, :cond_11f

    const-string v1, "-J-X"

    .line 272
    :goto_13
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryInitialSize:Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 273
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Javac;->isForkedJavac()Z

    move-result v3

    if-nez v3, :cond_123

    .line 274
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v4, "Since fork is false, ignoring memoryInitialSize setting."

    invoke-virtual {v3, v4, v6}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 283
    :cond_26
    :goto_26
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryMaximumSize:Ljava/lang/String;

    if-eqz v3, :cond_39

    .line 284
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Javac;->isForkedJavac()Z

    move-result v3

    if-nez v3, :cond_142

    .line 285
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v3, "Since fork is false, ignoring memoryMaximumSize setting."

    invoke-virtual {v1, v3, v6}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 294
    :cond_39
    :goto_39
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getNowarn()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 295
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-nowarn"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 298
    :cond_4a
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->deprecation:Z

    if-eqz v1, :cond_57

    .line 299
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-deprecation"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 302
    :cond_57
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    if-eqz v1, :cond_6d

    .line 303
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-d"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 307
    :cond_6d
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-classpath"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v1

    if-nez v1, :cond_161

    .line 312
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v1, v3}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/Path;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 315
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-eqz v3, :cond_9d

    .line 316
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Path;->addExtdirs(Lorg/apache/tools/ant/types/Path;)V

    .line 318
    :cond_9d
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 319
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 320
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 348
    :cond_aa
    :goto_aa
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_c0

    .line 349
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-encoding"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 352
    :cond_c0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->debug:Z

    if-eqz v0, :cond_1ec

    .line 353
    if-eqz p2, :cond_1e1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 354
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getDebugLevel()Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1d6

    .line 356
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-g:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 366
    :cond_ec
    :goto_ec
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->optimize:Z

    if-eqz v0, :cond_f9

    .line 367
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-O"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 370
    :cond_f9
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->depend:Z

    if-eqz v0, :cond_10a

    .line 371
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_3Plus()Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 372
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "depend attribute is not supported by the modern compiler"

    invoke-virtual {v0, v1, v6}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 382
    :cond_10a
    :goto_10a
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->verbose:Z

    if-eqz v0, :cond_117

    .line 383
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-verbose"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 386
    :cond_117
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 388
    return-object p1

    .line 267
    :cond_11b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->src:Lorg/apache/tools/ant/types/Path;

    goto/16 :goto_b

    .line 270
    :cond_11f
    const-string v1, "-J-"

    goto/16 :goto_13

    .line 278
    :cond_123
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryInitialSize:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 289
    :cond_142
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mx"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryMaximumSize:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_39

    .line 322
    :cond_161
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 325
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-lez v1, :cond_17e

    .line 326
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-sourcepath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 329
    :cond_17e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    if-eqz v0, :cond_188

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-nez v0, :cond_1b8

    .line 330
    :cond_188
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->target:Ljava/lang/String;

    if-eqz v0, :cond_19e

    .line 331
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-target"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 335
    :cond_19e
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b8

    .line 337
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-bootclasspath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 342
    :cond_1b8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 343
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-extdirs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    goto/16 :goto_aa

    .line 358
    :cond_1d6
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-g"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_ec

    .line 361
    :cond_1e1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-g"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_ec

    .line 363
    :cond_1ec
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getNoDebugArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ec

    .line 364
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getNoDebugArgument()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_ec

    .line 375
    :cond_1ff
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-eqz v0, :cond_210

    .line 376
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-Xdepend"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_10a

    .line 378
    :cond_210
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-depend"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_10a
.end method

.method protected setupModernJavacCommand()Lorg/apache/tools/ant/types/Commandline;
    .registers 2

    .line 457
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 458
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupModernJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;)Lorg/apache/tools/ant/types/Commandline;

    .line 460
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 461
    return-object v0
.end method

.method protected setupModernJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;)Lorg/apache/tools/ant/types/Commandline;
    .registers 6

    const/4 v3, 0x1

    .line 398
    invoke-virtual {p0, p1, v3}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;

    .line 399
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_4Plus()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v2

    if-nez v2, :cond_a5

    .line 403
    :cond_20
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 404
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v3, "Support for javac --release has been added in Java9 ignoring it"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    .line 407
    :cond_2b
    if-eqz v1, :cond_ce

    .line 408
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-source"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->adjustSourceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 424
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getModulesourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 426
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "--module-source-path"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 429
    :cond_5b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    .line 431
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "--module-path"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 434
    :cond_75
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 436
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "--upgrade-module-path"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 439
    :cond_8f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getNativeHeaderDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 440
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-nez v0, :cond_df

    .line 441
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Support for javac -h has been added in Java8, ignoring it"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    .line 448
    :cond_a4
    :goto_a4
    return-object p1

    .line 415
    :cond_a5
    if-nez v0, :cond_b3

    if-nez v1, :cond_b3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v0

    if-lez v0, :cond_ba

    .line 416
    :cond_b3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Ignoring source, target and bootclasspath as release has been set"

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 420
    :cond_ba
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--release"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_41

    .line 411
    :cond_ce
    if-eqz v0, :cond_41

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->mustSetSourceForTarget(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 412
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->adjustSourceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setImplicitSourceSwitch(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41

    .line 444
    :cond_df
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-h"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getNativeHeaderDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    goto :goto_a4
.end method
