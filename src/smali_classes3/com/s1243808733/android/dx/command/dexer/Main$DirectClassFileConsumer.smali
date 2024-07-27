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

.field private final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/command/dexer/Main;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
            ">;)V"
        }
    .end annotation

    .line 1794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    .line 1795
    iput-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    .line 1796
    iput-object p3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->bytes:[B

    .line 1797
    iput-object p4, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->dcff:Ljava/util/concurrent/Future;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;)Lcom/s1243808733/android/dx/command/dexer/Main;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    return-object v0
.end method

.method static synthetic access$1000072(Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->call(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private call(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    .registers 9

    const/4 v0, 0x0

    .line 1812
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000009(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

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

    add-int/lit8 v4, v1, 0x2

    .line 1824
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;

    move-result-object v1

    invoke-interface {v1}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x9

    .line 1826
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000018(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1828
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000010(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1832
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000010(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1833
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000010(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v3

    .line 1837
    :goto_0
    add-int/2addr v1, v4

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000019(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000009(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v3

    iget v3, v3, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-gt v1, v3, :cond_1

    add-int/2addr v0, v5

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000020(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000009(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v1

    iget v1, v1, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-gt v0, v1, :cond_1

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000019(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$S1000019(Lcom/s1243808733/android/dx/command/dexer/Main;I)V

    .line 1869
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000020(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$S1000020(Lcom/s1243808733/android/dx/command/dexer/Main;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 1874
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000013(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/Main$ClassTranslatorTask;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->bytes:[B

    invoke-direct {v1, v2, v3, v6, p1}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassTranslatorTask;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 1876
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000014(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassDefItemConsumer;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1878
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000015(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0

    .line 1833
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1869
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1842
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000019(Lcom/s1243808733/android/dx/command/dexer/Main;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000020(Lcom/s1243808733/android/dx/command/dexer/Main;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-lez v0, :cond_3

    .line 1847
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000018(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1861
    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000010(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v3

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1862
    :try_start_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000010(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1863
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000010(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v0

    :try_start_8
    monitor-exit v3

    goto/16 :goto_0

    .line 1851
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000010(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getClassDefs()Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$1000035(Lcom/s1243808733/android/dx/command/dexer/Main;)V

    goto :goto_2

    .line 1863
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_4
    move v4, v0

    move v5, v0

    .line 1847
    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
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

.method public bridge call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dexer/Main$DirectClassFileConsumer;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
