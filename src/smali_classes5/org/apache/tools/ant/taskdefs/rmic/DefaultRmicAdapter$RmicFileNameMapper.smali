.class Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;
.super Ljava/lang/Object;
.source "DefaultRmicAdapter.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RmicFileNameMapper"
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$1;)V
    .registers 3

    .line 386
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;-><init>(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/16 v5, 0x2e

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 403
    if-eqz p1, :cond_67

    .line 404
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 405
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 406
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getSkelClassSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 407
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getTieClassSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 511
    :cond_67
    :goto_67
    return-object v3

    .line 413
    :cond_68
    const-string v0, ".class"

    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/StringUtils;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 415
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 416
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getVerify()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 417
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/taskdefs/Rmic;->isValidRmiRemote(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 429
    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$200()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-array v3, v10, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 431
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIiop()Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIdl()Z

    move-result v0

    if-nez v0, :cond_133

    .line 433
    const-string v0, "1.2"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getStubVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 435
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v10, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    goto/16 :goto_67

    .line 438
    :cond_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 439
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 440
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getSkelClassSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    goto/16 :goto_67

    .line 443
    :cond_133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIdl()Z

    move-result v0

    if-nez v0, :cond_67

    .line 444
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 450
    if-ne v0, v8, :cond_18b

    .line 453
    const-string v2, ""

    move v0, v1

    .line 460
    :goto_14a
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 463
    :try_start_14e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z
    :try_end_15f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14e .. :try_end_15f} :catch_257
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_14e .. :try_end_15f} :catch_234
    .catchall {:try_start_14e .. :try_end_15f} :catchall_20b

    move-result v4

    if-eqz v4, :cond_192

    .line 467
    :try_start_162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 468
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_183
    .catch Ljava/lang/ClassNotFoundException; {:try_start_162 .. :try_end_183} :catch_280
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_162 .. :try_end_183} :catch_282
    .catchall {:try_start_162 .. :try_end_183} :catchall_284

    move-result-object v2

    new-array v0, v10, [Ljava/lang/String;

    aput-object v2, v0, v1

    :goto_188
    move-object v3, v0

    .line 509
    goto/16 :goto_67

    .line 456
    :cond_18b
    add-int/lit8 v0, v0, 0x1

    .line 457
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_14a

    .line 476
    :cond_192
    :try_start_192
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getRemoteInterface(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 480
    const/16 v0, 0x2e

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_1a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_192 .. :try_end_1a5} :catch_257
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_192 .. :try_end_1a5} :catch_234
    .catchall {:try_start_192 .. :try_end_1a5} :catchall_20b

    move-result v0

    .line 481
    if-ne v0, v8, :cond_1fb

    .line 484
    const-string v0, ""

    move v4, v1

    .line 491
    :goto_1ab
    :try_start_1ab
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 492
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getTieClassSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    .line 495
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getStubClassSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1ab .. :try_end_1f2} :catch_27a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1ab .. :try_end_1f2} :catch_27c
    .catchall {:try_start_1ab .. :try_end_1f2} :catchall_27e

    move-result-object v3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    aput-object v3, v0, v10

    goto :goto_188

    .line 486
    :cond_1fb
    add-int/lit8 v4, v0, 0x1

    .line 487
    const/4 v0, 0x0

    :try_start_1fe
    invoke-virtual {v7, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 488
    sget-char v8, Ljava/io/File;->separatorChar:C
    :try_end_204
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1fe .. :try_end_204} :catch_257
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1fe .. :try_end_204} :catch_234
    .catchall {:try_start_1fe .. :try_end_204} :catchall_20b

    const/16 v9, 0x2e

    :try_start_206
    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_209
    .catch Ljava/lang/ClassNotFoundException; {:try_start_206 .. :try_end_209} :catch_27a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_206 .. :try_end_209} :catch_27c
    .catchall {:try_start_206 .. :try_end_209} :catchall_27e

    move-result-object v0

    goto :goto_1ab

    .line 505
    :catchall_20b
    move-exception v0

    .line 506
    :goto_20c
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to verify class "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Loading caused Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {v1, v0, v10}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto/16 :goto_67

    .line 502
    :catch_234
    move-exception v0

    .line 503
    :goto_235
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to verify class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". It is not defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    move-object v0, v3

    goto/16 :goto_188

    .line 498
    :catch_257
    move-exception v0

    .line 499
    :goto_258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;->this$0:Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to verify class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". It could not be found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    move-object v0, v3

    goto/16 :goto_188

    .line 498
    :catch_27a
    move-exception v0

    goto :goto_258

    .line 502
    :catch_27c
    move-exception v0

    goto :goto_235

    .line 505
    :catchall_27e
    move-exception v0

    goto :goto_20c

    .line 498
    :catch_280
    move-exception v0

    goto :goto_258

    .line 502
    :catch_282
    move-exception v0

    goto :goto_235

    .line 505
    :catchall_284
    move-exception v0

    goto :goto_20c
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 393
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 399
    return-void
.end method
