.class public Lorg/apache/tools/ant/types/RedirectorElement;
.super Lorg/apache/tools/ant/types/DataType;
.source "RedirectorElement.java"


# instance fields
.field private alwaysLog:Ljava/lang/Boolean;

.field private append:Ljava/lang/Boolean;

.field private createEmptyFiles:Ljava/lang/Boolean;

.field private errorEncoding:Ljava/lang/String;

.field private errorFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private errorMapper:Lorg/apache/tools/ant/types/Mapper;

.field private errorProperty:Ljava/lang/String;

.field private inputEncoding:Ljava/lang/String;

.field private inputFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private inputMapper:Lorg/apache/tools/ant/types/Mapper;

.field private inputString:Ljava/lang/String;

.field private logError:Ljava/lang/Boolean;

.field private logInputString:Ljava/lang/Boolean;

.field private outputEncoding:Ljava/lang/String;

.field private outputFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private outputIsBinary:Z

.field private outputMapper:Lorg/apache/tools/ant/types/Mapper;

.field private outputProperty:Ljava/lang/String;

.field private usingError:Z

.field private usingInput:Z

.field private usingOutput:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 41
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    .line 46
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingOutput:Z

    .line 51
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingError:Z

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    .line 109
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputIsBinary:Z

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/RedirectorElement;
    .registers 2

    .line 627
    const-class v0, Lorg/apache/tools/ant/types/RedirectorElement;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/RedirectorElement;

    return-object v0
.end method


# virtual methods
.method public addConfiguredErrorMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .registers 4

    .line 156
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_25

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_1e

    .line 160
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingError:Z

    if-eqz v0, :cond_16

    .line 161
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "attribute \"error\" cannot coexist with a nested <errormapper>"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_16
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot have > 1 <errormapper>"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    .line 168
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    .line 169
    return-void

    .line 157
    :cond_25
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addConfiguredInputMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .registers 4

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_25

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_1e

    .line 120
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    if-eqz v0, :cond_16

    .line 121
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "attribute \"input\" cannot coexist with a nested <inputmapper>"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_16
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot have > 1 <inputmapper>"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    .line 129
    return-void

    .line 117
    :cond_25
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addConfiguredOutputMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .registers 4

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_25

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_1e

    .line 140
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingOutput:Z

    if-eqz v0, :cond_16

    .line 141
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "attribute \"output\" cannot coexist with a nested <outputmapper>"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_16
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot have > 1 <outputmapper>"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    .line 148
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    .line 149
    return-void

    .line 137
    :cond_25
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public configure(Lorg/apache/tools/ant/taskdefs/Redirector;)V
    .registers 3

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    .line 461
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 462
    invoke-direct {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getRef()Lorg/apache/tools/ant/types/RedirectorElement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 551
    :goto_e
    return-void

    .line 465
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->dieOnCircularReference()V

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->alwaysLog:Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    .line 467
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAlwaysLog(Z)V

    .line 469
    :cond_1d
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logError:Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    .line 470
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setLogError(Z)V

    .line 472
    :cond_28
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->append:Ljava/lang/Boolean;

    if-eqz v0, :cond_33

    .line 473
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppend(Z)V

    .line 475
    :cond_33
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->createEmptyFiles:Ljava/lang/Boolean;

    if-eqz v0, :cond_3e

    .line 476
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setCreateEmptyFiles(Z)V

    .line 478
    :cond_3e
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputProperty:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 479
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputProperty(Ljava/lang/String;)V

    .line 481
    :cond_45
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorProperty:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 482
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorProperty(Ljava/lang/String;)V

    .line 484
    :cond_4c
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputString:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 485
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputString(Ljava/lang/String;)V

    .line 487
    :cond_53
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logInputString:Ljava/lang/Boolean;

    if-eqz v0, :cond_5e

    .line 488
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setLogInputString(Z)V

    .line 490
    :cond_5e
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_76

    .line 493
    :try_start_62
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/NullPointerException; {:try_start_62 .. :try_end_69} :catch_e9

    move-result-object v0

    .line 500
    :goto_6a
    if-eqz v0, :cond_76

    array-length v2, v0

    if-lez v2, :cond_76

    .line 501
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->toFileArray([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInput([Ljava/io/File;)V

    .line 504
    :cond_76
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_8e

    .line 507
    :try_start_7a
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/NullPointerException; {:try_start_7a .. :try_end_81} :catch_f0

    move-result-object v0

    .line 514
    :goto_82
    if-eqz v0, :cond_8e

    array-length v2, v0

    if-lez v2, :cond_8e

    .line 515
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->toFileArray([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutput([Ljava/io/File;)V

    .line 518
    :cond_8e
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_a6

    .line 521
    :try_start_92
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_99
    .catch Ljava/lang/NullPointerException; {:try_start_92 .. :try_end_99} :catch_f6

    move-result-object v0

    .line 528
    :goto_9a
    if-eqz v0, :cond_a6

    array-length v1, v0

    if-lez v1, :cond_a6

    .line 529
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->toFileArray([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setError([Ljava/io/File;)V

    .line 532
    :cond_a6
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 533
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputFilterChains(Ljava/util/Vector;)V

    .line 535
    :cond_b3
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 536
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputFilterChains(Ljava/util/Vector;)V

    .line 538
    :cond_c0
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 539
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorFilterChains(Ljava/util/Vector;)V

    .line 541
    :cond_cd
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputEncoding:Ljava/lang/String;

    if-eqz v0, :cond_d4

    .line 542
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputEncoding(Ljava/lang/String;)V

    .line 544
    :cond_d4
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputEncoding:Ljava/lang/String;

    if-eqz v0, :cond_db

    .line 545
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputEncoding(Ljava/lang/String;)V

    .line 547
    :cond_db
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorEncoding:Ljava/lang/String;

    if-eqz v0, :cond_e2

    .line 548
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorEncoding(Ljava/lang/String;)V

    .line 550
    :cond_e2
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputIsBinary:Z

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setBinaryOutput(Z)V

    goto/16 :goto_e

    .line 495
    :catch_e9
    move-exception v0

    .line 496
    if-nez p2, :cond_ef

    move-object v0, v1

    goto/16 :goto_6a

    .line 497
    :cond_ef
    throw v0

    .line 509
    :catch_f0
    move-exception v0

    .line 510
    if-nez p2, :cond_f5

    move-object v0, v1

    goto :goto_82

    .line 511
    :cond_f5
    throw v0

    .line 523
    :catch_f6
    move-exception v0

    .line 524
    if-nez p2, :cond_fb

    move-object v0, v1

    goto :goto_9a

    .line 525
    :cond_fb
    throw v0
.end method

.method public createErrorFilterChain()Lorg/apache/tools/ant/types/FilterChain;
    .registers 3

    .line 423
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 426
    new-instance v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 427
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterChain;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 428
    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 429
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    .line 430
    return-object v0

    .line 424
    :cond_1c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createInputFilterChain()Lorg/apache/tools/ant/types/FilterChain;
    .registers 3

    .line 393
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 396
    new-instance v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 397
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterChain;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 398
    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 399
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    .line 400
    return-object v0

    .line 394
    :cond_1c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected createMergeMapper(Ljava/io/File;)Lorg/apache/tools/ant/types/Mapper;
    .registers 4

    .line 559
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 560
    const-class v1, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Mapper;->setClassname(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Mapper;->setTo(Ljava/lang/String;)V

    .line 562
    return-object v0
.end method

.method public createOutputFilterChain()Lorg/apache/tools/ant/types/FilterChain;
    .registers 3

    .line 408
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 411
    new-instance v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 412
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterChain;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 413
    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 414
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    .line 415
    return-object v0

    .line 409
    :cond_1c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 594
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 619
    :goto_a
    return-void

    .line 597
    :cond_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 598
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_a

    .line 600
    :cond_15
    new-array v0, v3, [Lorg/apache/tools/ant/types/Mapper;

    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    aput-object v1, v0, v5

    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Mapper;

    .line 601
    if-eqz v0, :cond_2b

    .line 602
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/Mapper;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 604
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2b

    .line 607
    :cond_43
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    .line 608
    new-array v3, v3, [Ljava/util/List;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    aput-object v2, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 610
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 611
    if-eqz v0, :cond_59

    .line 612
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FilterChain;

    .line 613
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/RedirectorElement;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_6b

    .line 617
    :cond_7b
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    goto :goto_a
.end method

.method public setAlwaysLog(Z)V
    .registers 3

    .line 356
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_10

    .line 359
    if-eqz p1, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->alwaysLog:Ljava/lang/Boolean;

    .line 360
    return-void

    .line 359
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 357
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setAppend(Z)V
    .registers 3

    .line 342
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_10

    .line 345
    if-eqz p1, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->append:Ljava/lang/Boolean;

    .line 346
    return-void

    .line 345
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 343
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setBinaryOutput(Z)V
    .registers 2

    .line 443
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputIsBinary:Z

    .line 444
    return-void
.end method

.method public setCreateEmptyFiles(Z)V
    .registers 3

    .line 368
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_10

    .line 371
    if-eqz p1, :cond_d

    .line 372
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->createEmptyFiles:Ljava/lang/Boolean;

    .line 373
    return-void

    .line 372
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 369
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setError(Ljava/io/File;)V
    .registers 4

    .line 312
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 315
    if-eqz p1, :cond_12

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingError:Z

    .line 319
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/RedirectorElement;->createMergeMapper(Ljava/io/File;)Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    .line 320
    return-void

    .line 316
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error file specified as null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1a
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setErrorEncoding(Ljava/lang/String;)V
    .registers 3

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_9

    .line 279
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorEncoding:Ljava/lang/String;

    .line 280
    return-void

    .line 277
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .registers 3

    .line 382
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_9

    .line 385
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorProperty:Ljava/lang/String;

    .line 386
    return-void

    .line 383
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setInput(Ljava/io/File;)V
    .registers 4

    .line 203
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputString:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/RedirectorElement;->createMergeMapper(Ljava/io/File;)Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    .line 212
    return-void

    .line 207
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .registers 3

    .line 287
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_9

    .line 290
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputEncoding:Ljava/lang/String;

    .line 291
    return-void

    .line 288
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setInputString(Ljava/lang/String;)V
    .registers 4

    .line 219
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_15

    .line 222
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    if-nez v0, :cond_d

    .line 226
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputString:Ljava/lang/String;

    .line 227
    return-void

    .line 223
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setLogError(Z)V
    .registers 3

    .line 301
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_10

    .line 304
    if-eqz p1, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logError:Ljava/lang/Boolean;

    .line 305
    return-void

    .line 304
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 302
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setLogInputString(Z)V
    .registers 3

    .line 236
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_10

    .line 239
    if-eqz p1, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logInputString:Ljava/lang/Boolean;

    .line 240
    return-void

    .line 239
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 237
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setOutput(Ljava/io/File;)V
    .registers 4

    .line 249
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 252
    if-eqz p1, :cond_12

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingOutput:Z

    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/RedirectorElement;->createMergeMapper(Ljava/io/File;)Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    .line 257
    return-void

    .line 253
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output file specified as null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1a
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .registers 3

    .line 264
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_9

    .line 267
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputEncoding:Ljava/lang/String;

    .line 268
    return-void

    .line 265
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setOutputProperty(Ljava/lang/String;)V
    .registers 3

    .line 329
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_9

    .line 332
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputProperty:Ljava/lang/String;

    .line 333
    return-void

    .line 330
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingOutput:Z

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingError:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputString:Ljava/lang/String;

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logError:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->append:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->createEmptyFiles:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputEncoding:Ljava/lang/String;

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputEncoding:Ljava/lang/String;

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorEncoding:Ljava/lang/String;

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputProperty:Ljava/lang/String;

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorProperty:Ljava/lang/String;

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logInputString:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    .line 195
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 196
    return-void

    .line 193
    :cond_38
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected toFileArray([Ljava/lang/String;)[Ljava/io/File;
    .registers 8

    const/4 v1, 0x0

    .line 571
    if-nez p1, :cond_5

    .line 572
    const/4 v0, 0x0

    .line 581
    :goto_4
    return-object v0

    .line 575
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 576
    array-length v3, p1

    move v0, v1

    :goto_d
    if-ge v0, v3, :cond_21

    aget-object v4, p1, v0

    .line 577
    if-eqz v4, :cond_1e

    .line 578
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 581
    :cond_21
    new-array v0, v1, [Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    goto :goto_4
.end method
