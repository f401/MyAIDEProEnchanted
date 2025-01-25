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
            "Ljava/util/Queue<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/build/OutputConsole$a;

    const-wide v1, -0x5568b60441e6aa5fL  # -1.624696688245076E-103

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/build/OutputConsole;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x154070c7b6574f9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xb4d87335c7c9411L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->Zo:Ljava/nio/charset/CharsetEncoder;
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v4, :cond_3a

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/build/OutputConsole;Lcom/aide/ui/build/h;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x6dc49ef93057080L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/build/OutputConsole$a;-><init>(Lcom/aide/ui/build/OutputConsole;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x6dc49ef93057080L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public j6(Ljava/lang/StringBuilder;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x804f26f97adc9fL
    .end annotation

    const-wide v0, -0x19aa427ee12eb4bcL  # -9.237658823565844E184

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_a7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_75

    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->Zo:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Lcom/aide/ui/build/OutputConsole$a;->Hw:Ljava/nio/CharBuffer;

    iget-object v7, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6, v7, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    iget-object v5, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v6, 0x0

    :goto_44
    if-ge v6, v5, :cond_72

    iget-object v7, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v7}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;

    move-result-object v7
    :try_end_4c
    .catchall {:try_start_11 .. :try_end_4c} :catchall_a4

    if-eqz v7, :cond_60

    :try_start_4e
    iget-object v7, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v7}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write(I)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5d} :catch_5e
    .catchall {:try_start_4e .. :try_end_5d} :catchall_a4

    goto :goto_6f

    :catch_5e
    move-exception v7

    goto :goto_6f

    :cond_60
    :try_start_60
    iget-object v7, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    iget-object v8, p0, Lcom/aide/ui/build/OutputConsole$a;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_75
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v3}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_a4

    const/16 v4, 0xa

    if-eqz v3, :cond_94

    :try_start_7f
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v3}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v3}, Lcom/aide/ui/build/OutputConsole;->Hw(Lcom/aide/ui/build/OutputConsole;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_91} :catch_92
    .catchall {:try_start_7f .. :try_end_91} :catchall_a4

    goto :goto_9d

    :catch_92
    move-exception v3

    goto :goto_9d

    :cond_94
    :try_start_94
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_9d
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_a4
    move-exception v3

    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_94 .. :try_end_a6} :catchall_a4

    :try_start_a6
    throw v3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v3, :cond_af

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_af
    goto :goto_b1

    :goto_b0
    throw v2

    :goto_b1
    goto :goto_b0
.end method

.method public read()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x18bbaf54f4c0ceecL
    .end annotation

    const-wide v0, 0x137bca4a8deda9edL  # 8.061479958303772E-215

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/build/OutputConsole$a;->VH:Z

    if-nez v2, :cond_18

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/build/OutputConsole$a;->VH:Z

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v2}, Lcom/aide/ui/build/OutputConsole;->FH(Lcom/aide/ui/build/OutputConsole;)V

    :cond_18
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_3c

    :try_start_1b
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_28} :catch_2b
    .catchall {:try_start_1b .. :try_end_28} :catchall_29

    goto :goto_2c

    :catchall_29
    move-exception v3

    goto :goto_3a

    :catch_2b
    move-exception v3

    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    monitor-exit v2

    return v3

    :goto_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_29

    :try_start_3b
    throw v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method public read([BII)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x76f3bb4b6209221L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$a;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xd350a2db98d594L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-boolean v0, p0, Lcom/aide/ui/build/OutputConsole$a;->VH:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/build/OutputConsole$a;->VH:Z

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->gn:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->FH(Lcom/aide/ui/build/OutputConsole;)V

    :cond_24
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    monitor-enter v0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_5b

    :goto_27
    :try_start_27
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_34} :catch_37
    .catchall {:try_start_27 .. :try_end_34} :catchall_35

    goto :goto_27

    :catchall_35
    move-exception v1

    goto :goto_59

    :catch_37
    move-exception v1

    :cond_38
    const/4 v1, 0x0

    :goto_39
    :try_start_39
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    if-ge v1, p3, :cond_57

    add-int v2, p2, v1

    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$a;->FH:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_57
    monitor-exit v0

    return v1

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_35

    :try_start_5a
    throw v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$a;->DW:Z

    if-eqz v1, :cond_75

    const-wide v2, 0xd350a2db98d594L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method
