.class public Lorg/apache/tools/ant/taskdefs/optional/Javah;
.super Lorg/apache/tools/ant/Task;
.source "Javah.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;,
        Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;
    }
.end annotation


# instance fields
.field private bootclasspath:Lorg/apache/tools/ant/types/Path;

.field private classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;",
            ">;"
        }
    .end annotation
.end field

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private cls:Ljava/lang/String;

.field private destDir:Ljava/io/File;

.field private facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

.field private files:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private force:Z

.field private nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

.field private old:Z

.field private outputFile:Ljava/io/File;

.field private stubs:Z

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 73
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classes:Ljava/util/List;

    .line 76
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 77
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->outputFile:Ljava/io/File;

    .line 78
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->verbose:Z

    .line 79
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->force:Z

    .line 80
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->old:Z

    .line 81
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->stubs:Z

    .line 83
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    .line 84
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->files:Ljava/util/Vector;

    .line 85
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    .line 91
    new-instance v0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    .line 92
    return-void
.end method

.method static synthetic lambda$getClasses$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x2e

    .line 154
    const/16 v0, 0x5c

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v1, "\\.class$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    return-object v0
.end method

.method static synthetic lambda$getClasses$2(I)[Ljava/lang/String;
    .registers 2

    .line 163
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;)V
    .registers 4

    .line 409
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    if-nez v0, :cond_7

    .line 412
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    .line 413
    return-void

    .line 410
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can\'t have more than one javah adapter"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFileSet(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->files:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public createArg()Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;
    .registers 3

    .line 376
    new-instance v0, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;-><init>()V

    .line 377
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->addImplementationArgument(Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)V

    .line 378
    return-object v0
.end method

.method public createBootclasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 242
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 243
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 245
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createClass()Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;
    .registers 3

    .line 107
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Javah;)V

    .line 108
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 201
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 202
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 204
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createImplementationClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 399
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementationClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 423
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->cls:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 426
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->cls:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_f
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 429
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->classes:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_1c
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->files:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 432
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->files:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_29
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_ac

    .line 439
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->destDir:Ljava/io/File;

    if-eqz v0, :cond_3e

    .line 440
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->outputFile:Ljava/io/File;

    if-nez v0, :cond_5e

    .line 450
    :cond_3e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_8c

    .line 451
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    const-string v1, "last"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 456
    :goto_53
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    if-eqz v0, :cond_95

    .line 459
    :goto_57
    invoke-interface {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;->compile(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 462
    return-void

    .line 445
    :cond_5e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "destdir and outputFile are mutually exclusive"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 441
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destination directory \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->destDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist or is not a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 453
    :cond_8c
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_53

    .line 457
    :cond_95
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->createImplementationClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 457
    invoke-static {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    move-result-object v0

    goto :goto_57

    .line 460
    :cond_a4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "compilation failed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exactly one of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->values()[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " attributes is required"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public getBootclasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getClasses()[Ljava/lang/String;
    .registers 4

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->files:Ljava/util/Vector;

    .line 151
    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Javah;)V

    .line 152
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda3;

    .line 153
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda1;

    .line 154
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classes:Ljava/util/List;

    .line 156
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda2;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->cls:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 159
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 163
    :cond_43
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getCurrentArgs()[Ljava/lang/String;
    .registers 2

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestdir()Ljava/io/File;
    .registers 2

    .line 181
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->destDir:Ljava/io/File;

    return-object v0
.end method

.method public getForce()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->force:Z

    return v0
.end method

.method public getOld()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->old:Z

    return v0
.end method

.method public getOutputfile()Ljava/io/File;
    .registers 2

    .line 281
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method public getStubs()Z
    .registers 2

    .line 335
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->stubs:Z

    return v0
.end method

.method public getVerbose()Z
    .registers 2

    .line 353
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->verbose:Z

    return v0
.end method

.method public synthetic lambda$getClasses$0$Javah(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;
    .registers 3

    .line 152
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logAndAddFiles(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 2

    .line 470
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 471
    return-void
.end method

.method protected logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 12

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compilation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->describeArguments()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->log(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getClasses()[Ljava/lang/String;

    move-result-object v2

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Class"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    array-length v0, v2

    if-le v0, v8, :cond_2e

    .line 485
    const-string v0, "es"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_2e
    const-string v0, " to be compiled:%n"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    array-length v4, v2

    move v0, v1

    :goto_3b
    if-ge v0, v4, :cond_56

    aget-object v5, v2, v0

    .line 489
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 490
    const-string v6, "    %s%n"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 492
    :cond_56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->log(Ljava/lang/String;I)V

    .line 493
    return-void
.end method

.method public setBootClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 254
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->createBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 255
    return-void
.end method

.method public setBootclasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 231
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 235
    :goto_6
    return-void

    .line 233
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setClass(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->cls:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 190
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 194
    :goto_6
    return-void

    .line 192
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 214
    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->destDir:Ljava/io/File;

    .line 173
    return-void
.end method

.method public setForce(Z)V
    .registers 2

    .line 289
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->force:Z

    .line 290
    return-void
.end method

.method public setImplementation(Ljava/lang/String;)V
    .registers 4

    .line 362
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 363
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 367
    :goto_11
    return-void

    .line 365
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public setOld(Z)V
    .registers 2

    .line 309
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->old:Z

    .line 310
    return-void
.end method

.method public setOutputFile(Ljava/io/File;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->outputFile:Ljava/io/File;

    .line 273
    return-void
.end method

.method public setStubs(Z)V
    .registers 2

    .line 326
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->stubs:Z

    .line 327
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 344
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->verbose:Z

    .line 345
    return-void
.end method
