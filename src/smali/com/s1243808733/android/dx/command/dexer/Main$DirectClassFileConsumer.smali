.class Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectClassFileConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field bytes:[B

.field dcff:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method static bridge synthetic -$$Nest$mcall(Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->call(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
            ">;)V"
        }
    .end annotation

    .line 1794
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1795
    iput-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    .line 1796
    iput-object p3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->bytes:[B

    .line 1797
    iput-object p4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->dcff:Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V

    return-void
.end method

.method private call(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    .locals 13

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1812
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetargs(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v1

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v1, :cond_4

    .line 1821
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->size()I

    move-result v0

    .line 1822
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v1

    invoke-interface {v1}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v10, v1, 0x2

    .line 1824
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;

    move-result-object v1

    invoke-interface {v1}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v11, v0, 0x9

    .line 1826
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetdexRotationLock(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1831
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1832
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1833
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1834
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1837
    :goto_0
    add-int/2addr v0, v10

    :try_start_2
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetargs(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v3

    iget v3, v3, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-gt v0, v3, :cond_0

    add-int v0, v1, v11

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetargs(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v1

    iget v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-le v0, v1, :cond_3

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-lez v0, :cond_2

    .line 1847
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetdexRotationLock(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1861
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1862
    :try_start_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1863
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1864
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 1834
    :catchall_1
    move-exception v0

    .line 1870
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 1851
    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getClassDefs()Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1854
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$mrotateDexFile(Lcom/s1243808733/android/dx/command/dexer/Main;)V

    goto :goto_1

    .line 1868
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v1

    add-int/2addr v1, v10

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fputmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;I)V

    .line 1869
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v1

    add-int/2addr v1, v11

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fputmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;I)V

    .line 1870
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1874
    :goto_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetclassTranslatorPool(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassTranslatorTask;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->bytes:[B

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassTranslatorTask;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/command/dexer/Main$ClassTranslatorTask-IA;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v9

    .line 1876
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetclassDefItemConsumer(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v6, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;

    iget-object v7, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    iget-object v8, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;IILcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer-IA;)V

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1878
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetaddToDexFutures(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1864
    :catchall_2
    move-exception v0

    .line 1834
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4
    move v10, v0

    move v11, v0

    .line 1870
    goto :goto_2

    .line 1880
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1803
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->dcff:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 1804
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->call(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1787
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
