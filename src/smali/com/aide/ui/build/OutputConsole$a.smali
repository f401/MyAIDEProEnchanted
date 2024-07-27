.class Lcom/aide/ui/build/OutputConsole$a;
.super Ljava/io/InputStream;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/OutputConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Ljava/util/Queue;
    .annotation runtime Labcd/ru;
        field = -0x2a91ca94f5c95a70L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/nio/CharBuffer;
    .annotation runtime Labcd/ru;
        field = 0x4685925fbddaa42cL
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = 0x4c0fb6d6c39c0c95L
    .end annotation
.end field

.field private Zo:Ljava/nio/charset/CharsetEncoder;
    .annotation runtime Labcd/ru;
        field = -0x25991b746476b13L
    .end annotation
.end field

.field final gn:Lcom/aide/ui/build/OutputConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:Ljava/nio/ByteBuffer;
    .annotation runtime Labcd/ru;
        field = -0x40b42a463b5a52c0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x5568b60441e6aa5fL    # -1.624696688245076E-103

    const-class v0, Lcom/aide/ui/build/OutputConsole$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/build/OutputConsole;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x154070c7b6574f9L
    .end annotation

    const-wide v4, 0xb4d87335c7c9411L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb4d87335c7c9411L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->Zo:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/build/OutputConsole;Lcom/aide/ui/build/h;)V
    .registers 10

    const-wide v2, -0x6dc49ef93057080L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6dc49ef93057080L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/build/OutputConsole$a;-><init>(Lcom/aide/ui/build/OutputConsole;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public j6(Ljava/lang/StringBuilder;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x804f26f97adc9fL
    .end annotation

    const-wide v8, -0x19aa427ee12eb4bcL    # -9.237658823565844E184

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x19aa427ee12eb4bcL    # -9.237658823565844E184

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->Zo:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v5}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_1

    :try_start_2
    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v5}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    iget-object v6, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_6
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    return-void

    :cond_5
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public read()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x18bbaf54f4c0ceecL
    .end annotation

    const-wide v2, 0x137bca4a8deda9edL    # 8.061479958303772E-215

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x137bca4a8deda9edL    # 8.061479958303772E-215

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/build/OutputConsole$a;->VH:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/build/OutputConsole$a;->VH:Z

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->FH(Lcom/aide/ui/build/OutputConsole;)V

    :cond_1
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public read([BII)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x76f3bb4b6209221L
    .end annotation

    const-wide v8, 0xd350a2db98d594L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xd350a2db98d594L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/build/OutputConsole$a;->VH:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/build/OutputConsole$a;->VH:Z

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->FH(Lcom/aide/ui/build/OutputConsole;)V

    :cond_1
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-ge v1, p3, :cond_3

    add-int v3, p2, v1

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method
