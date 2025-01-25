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
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field bytes:[B

.field dcff:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method static bridge synthetic -$$Nest$mcall(Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->call(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/concurrent/Future<",
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
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V

    return-void
.end method

.method private call(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    .registers 16

    .line 1812
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetargs(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v0

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v0, :cond_104

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

    add-int/lit8 v1, v1, 0x2

    .line 1824
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;

    move-result-object v2

    invoke-interface {v2}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x9

    .line 1826
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetdexRotationLock(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1831
    :try_start_2f
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v3

    monitor-enter v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_101

    .line 1832
    :try_start_36
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v4}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    .line 1833
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v5}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    .line 1834
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_fe

    .line 1837
    :goto_5b
    add-int/2addr v4, v1

    :try_start_5c
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    add-int/2addr v4, v3

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetargs(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v3

    iget v3, v3, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-gt v4, v3, :cond_7f

    add-int/2addr v5, v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetargs(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v3

    iget v3, v3, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-le v5, v3, :cond_aa

    .line 1842
    :cond_7f
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    if-gtz v3, :cond_c2

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    if-lez v3, :cond_90

    goto :goto_c2

    .line 1851
    :cond_90
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getClassDefs()Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_aa

    .line 1854
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$mrotateDexFile(Lcom/s1243808733/android/dx/command/dexer/Main;)V

    goto :goto_cd

    .line 1868
    :cond_aa
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fputmaxMethodIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;I)V

    .line 1869
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fputmaxFieldIdsInProcess(Lcom/s1243808733/android/dx/command/dexer/Main;I)V

    .line 1870
    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_5c .. :try_end_bf} :catchall_101

    move v7, v0

    move v6, v1

    goto :goto_107

    .line 1847
    :cond_c2
    :goto_c2
    :try_start_c2
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetdexRotationLock(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_cb
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_cb} :catch_cc
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_101

    goto :goto_cd

    .line 1880
    :catch_cc
    move-exception v3

    .line 1861
    :goto_cd
    :try_start_cd
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v3

    monitor-enter v3
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_101

    .line 1862
    :try_start_d4
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v4}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    .line 1863
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v5}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetoutputDex(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    .line 1864
    monitor-exit v3

    goto/16 :goto_5b

    :catchall_fb
    move-exception p1

    monitor-exit v3
    :try_end_fd
    .catchall {:try_start_d4 .. :try_end_fd} :catchall_fb

    :try_start_fd
    throw p1
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_101

    :catchall_fe
    move-exception p1

    .line 1834
    :try_start_ff
    monitor-exit v3
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    :try_start_100
    throw p1

    :catchall_101
    move-exception p1

    .line 1870
    monitor-exit v2
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_101

    throw p1

    :cond_104
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1874
    :goto_107
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetclassTranslatorPool(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/Main$ClassTranslatorTask;

    iget-object v9, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    iget-object v10, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    iget-object v11, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->bytes:[B

    const/4 v13, 0x0

    move-object v8, v1

    move-object v12, p1

    invoke-direct/range {v8 .. v13}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassTranslatorTask;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/command/dexer/Main$ClassTranslatorTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 1876
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {p1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetclassDefItemConsumer(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;IILcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer-IA;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 1878
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$fgetaddToDexFutures(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 2
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
    .registers 2
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
