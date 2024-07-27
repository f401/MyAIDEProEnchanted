.class public Lorg/apache/tools/ant/types/CommandlineJava;
.super Ljava/lang/Object;
.source "CommandlineJava.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;,
        Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;
    }
.end annotation


# instance fields
.field private assertions:Lorg/apache/tools/ant/types/Assertions;

.field private bootclasspath:Lorg/apache/tools/ant/types/Path;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private cloneVm:Z

.field private executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

.field private javaCommand:Lorg/apache/tools/ant/types/Commandline;

.field private maxMemory:Ljava/lang/String;

.field private modulepath:Lorg/apache/tools/ant/types/Path;

.field private sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

.field private upgrademodulepath:Lorg/apache/tools/ant/types/Path;

.field private vmCommand:Lorg/apache/tools/ant/types/Commandline;

.field private vmVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 47
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 51
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    .line 52
    iput-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 53
    iput-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 54
    iput-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 55
    iput-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 57
    iput-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->cloneVm:Z

    .line 228
    const-string v0, "java"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJreExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setVm(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setVmversion(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private addCommandsToList(Ljava/util/ListIterator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getActualVMCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->addCommandToList(Ljava/util/ListIterator;)V

    .line 515
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addDefinitionsToList(Ljava/util/ListIterator;)V

    .line 517
    invoke-direct {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->isCloneVm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;-><init>()V

    .line 519
    new-instance v1, Lorg/apache/tools/ant/types/PropertySet;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/PropertySet;-><init>()V

    .line 520
    new-instance v2, Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;-><init>()V

    .line 521
    const-string v3, "system"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;->setValue(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/PropertySet;->appendBuiltin(Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;)V

    .line 523
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    .line 524
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addDefinitionsToList(Ljava/util/ListIterator;)V

    .line 527
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->calculateBootclasspath(Z)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-Xbootclasspath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 532
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->haveClasspath()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    const-string v0, "-classpath"

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 537
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->haveModulepath()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    const-string v0, "--module-path"

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 539
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 542
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->haveUpgrademodulepath()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 543
    const-string v0, "--upgrade-module-path"

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 547
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 548
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Assertions;->applyAssertions(Ljava/util/ListIterator;)V

    .line 554
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_7

    .line 555
    const-string v0, "-jar"

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 564
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->addCommandToList(Ljava/util/ListIterator;)V

    .line 565
    return-void

    .line 556
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_6

    .line 557
    const-string v0, "-m"

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private calculateBootclasspath(Z)Lorg/apache/tools/ant/types/Path;
    .registers 5

    const/4 v2, 0x0

    .line 832
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmVersion:Ljava/lang/String;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 834
    const-string v1, "Ignoring bootclasspath as the target VM doesn\'t support it."

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->log(Ljava/lang/String;)V

    .line 846
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    :goto_0
    return-object v0

    .line 837
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 838
    if-nez v0, :cond_2

    .line 839
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 844
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->isCloneVm()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "last"

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemBootClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "ignore"

    goto :goto_1
.end method

.method private static createModuleClassPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 867
    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private isCloneVm()Z
    .registers 2

    .line 856
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->cloneVm:Z

    if-nez v0, :cond_0

    const-string v0, "ant.build.clonevm"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseClassFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 891
    if-nez p0, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-object v0

    .line 894
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 895
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private static parseModuleFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 877
    if-nez p0, :cond_0

    .line 878
    const/4 v0, 0x0

    .line 881
    :goto_0
    return-object v0

    .line 880
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 881
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addSysproperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V
    .registers 3

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addSysproperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V

    .line 271
    return-void
.end method

.method public addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .registers 3

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 254
    return-void
.end method

.method public addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 3

    .line 261
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    .line 262
    return-void
.end method

.method public clearJavaArgs()V
    .registers 2

    .line 773
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->clearArgs()V

    .line 774
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 744
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/CommandlineJava;

    .line 745
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Commandline;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 746
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Commandline;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 747
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    .line 748
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    .line 749
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Path;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 751
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_1

    .line 752
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Path;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 754
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_2

    .line 755
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Path;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 757
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_3

    .line 758
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Path;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 760
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;

    if-eqz v1, :cond_4

    .line 761
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Assertions;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Assertions;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_4
    return-object v0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;
    .registers 2

    .line 237
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createBootclasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 453
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 456
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public createModulepath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public createUpgrademodulepath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 479
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;
    .registers 2

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public describeCommand()Ljava/lang/String;
    .registers 2

    .line 592
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeJavaCommand()Ljava/lang/String;
    .registers 2

    .line 604
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJavaCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getActualVMCommand()Lorg/apache/tools/ant/types/Commandline;
    .registers 5

    .line 612
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Commandline;

    .line 613
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmVersion:Ljava/lang/String;

    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-mx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 620
    :cond_0
    :goto_0
    return-object v0

    .line 617
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Xmx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAssertions()Lorg/apache/tools/ant/types/Assertions;
    .registers 2

    .line 305
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;

    return-object v0
.end method

.method public getBootclasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 688
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getClassname()Ljava/lang/String;
    .registers 3

    .line 359
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-eqz v0, :cond_0

    .line 360
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 368
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 364
    :pswitch_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->parseClassFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :pswitch_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 680
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getCommandline()[Ljava/lang/String;
    .registers 3

    .line 499
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 501
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->addCommandsToList(Ljava/util/ListIterator;)V

    .line 503
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getJar()Ljava/lang/String;
    .registers 3

    .line 332
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJavaCommand()Lorg/apache/tools/ant/types/Commandline;
    .registers 2

    .line 664
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .registers 3

    .line 428
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->parseModuleFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModulepath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 697
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 3

    .line 390
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->SOURCE_FILE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemProperties()Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;
    .registers 2

    .line 732
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    return-object v0
.end method

.method public getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 706
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getVmCommand()Lorg/apache/tools/ant/types/Commandline;
    .registers 2

    .line 672
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getActualVMCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    return-object v0
.end method

.method public getVmversion()Ljava/lang/String;
    .registers 2

    .line 490
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected haveBootclasspath(Z)Z
    .registers 3

    .line 798
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->calculateBootclasspath(Z)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveClasspath()Z
    .registers 3

    .line 783
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 784
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 783
    :cond_0
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    goto :goto_0

    .line 784
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public haveModulepath()Z
    .registers 3

    .line 807
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    .line 808
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 809
    :goto_0
    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 809
    :goto_1
    return v0

    .line 808
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 810
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public haveUpgrademodulepath()Z
    .registers 3

    .line 819
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    .line 820
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 821
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 820
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 821
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public restoreSystemProperties()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 725
    return-void
.end method

.method public setAssertions(Lorg/apache/tools/ant/types/Assertions;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;

    .line 314
    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .registers 5

    .line 343
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 345
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->parseModuleFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v1, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->createModuleClassPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    .line 351
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 349
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->CLASS:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    goto :goto_0
.end method

.method public setCloneVm(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->cloneVm:Z

    .line 298
    return-void
.end method

.method public setJar(Ljava/lang/String;)V
    .registers 3

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    .line 323
    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .registers 2

    .line 573
    iput-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 409
    :goto_0
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    .line 418
    return-void

    .line 402
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 407
    :pswitch_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 408
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {p1, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createModuleClassPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 411
    :pswitch_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 412
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->parseClassFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {p1, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createModuleClassPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .registers 3

    .line 379
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->SOURCE_FILE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public setSystemProperties()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->setSystem()V

    .line 716
    return-void
.end method

.method public setVm(Ljava/lang/String;)V
    .registers 3

    .line 278
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public setVmversion(Ljava/lang/String;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmVersion:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public size()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 634
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getActualVMCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    .line 635
    add-int/2addr v0, v1

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 637
    invoke-direct {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->isCloneVm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 641
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->haveClasspath()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    add-int/lit8 v0, v0, 0x2

    .line 645
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->calculateBootclasspath(Z)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 646
    add-int/lit8 v0, v0, 0x1

    .line 649
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v2, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v2, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v1, v2, :cond_4

    .line 650
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 653
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 654
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Assertions;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 656
    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 582
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
