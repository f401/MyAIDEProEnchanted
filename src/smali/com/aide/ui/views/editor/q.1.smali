.class Lcom/aide/ui/views/editor/q;
.super Ljava/io/Reader;


# annotations
.annotation runtime Labcd/xu;
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
.field private FH:Lcom/aide/ui/views/editor/o;
    .annotation runtime Labcd/ru;
        field = -0x76b7a7b95aff0dL
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x15bb832c707d1f6fL
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x17acbfebd908150L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x30facdefcdaeacb0L
    .end annotation
.end field

.field private gn:C
    .annotation runtime Labcd/ru;
        field = -0x1d2846517f122d07L
    .end annotation
.end field

.field private tp:[C
    .annotation runtime Labcd/ru;
        field = 0x161b214960a66103L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x2e7bb80bc840fc0L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0x744b13b154586e9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x27b2d1c4fc18b2a0L    # -2.299547418477236E117

    const-class v0, Lcom/aide/ui/views/editor/q;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/o;IIIIZLjava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x4aacccdefbaa809L
    .end annotation

    const/4 v6, 0x0

    sget-boolean v0, Lcom/aide/ui/views/editor/q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xcf898603b0c600L

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iput p2, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iput p3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    iput p5, p0, Lcom/aide/ui/views/editor/q;->VH:I

    iput p4, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    iget v0, p0, Lcom/aide/ui/views/editor/q;->VH:I

    invoke-interface {p1}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    invoke-interface {p1}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/editor/q;->VH:I

    iget v0, p0, Lcom/aide/ui/views/editor/q;->VH:I

    invoke-interface {p1, v0}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    :cond_1
    iget v0, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    iget v1, p0, Lcom/aide/ui/views/editor/q;->VH:I

    invoke-interface {p1, v1}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v1

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/aide/ui/views/editor/q;->VH:I

    invoke-interface {p1, v0}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    :cond_2
    if-eqz p6, :cond_3

    const/16 v0, 0x20

    :goto_0
    iput-char v0, p0, Lcom/aide/ui/views/editor/q;->gn:C

    iput v6, p0, Lcom/aide/ui/views/editor/q;->u7:I

    invoke-virtual {p7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    return-void

    :cond_3
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1e6a822f986c8dbL
    .end annotation

    const-wide v2, -0x1b532f2408c41291L    # -9.122607788735882E176

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b532f2408c41291L    # -9.122607788735882E176

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/q;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public read()I
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x19bb9ee44d63e2adL
    .end annotation

    const-wide v6, -0x2f7f4afe6c05ba1L    # -1.919534620969771E294

    const/16 v5, 0x9

    const/4 v0, -0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/editor/q;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x2f7f4afe6c05ba1L    # -1.919534620969771E294

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    invoke-interface {v2}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v2

    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    iget v4, p0, Lcom/aide/ui/views/editor/q;->VH:I

    if-ge v3, v4, :cond_5

    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    if-ge v3, v2, :cond_5

    iget v0, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iget v2, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    invoke-interface {v0, v2, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v0

    if-eq v0, v5, :cond_1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    iget-char v0, p0, Lcom/aide/ui/views/editor/q;->gn:C

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/q;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_3
    iget v0, p0, Lcom/aide/ui/views/editor/q;->u7:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    iget v2, p0, Lcom/aide/ui/views/editor/q;->u7:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/aide/ui/views/editor/q;->u7:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    aget-char v0, v0, v2

    :try_start_4
    monitor-exit v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/views/editor/q;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v0, p0, Lcom/aide/ui/views/editor/q;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/ui/views/editor/q;->v5:I

    iget-object v0, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    iget-object v2, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    monitor-exit v1

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    iget v4, p0, Lcom/aide/ui/views/editor/q;->VH:I

    if-ne v3, v4, :cond_a

    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    if-ge v3, v2, :cond_a

    iget v2, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v3, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    if-gt v2, v3, :cond_9

    iget v2, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget-object v3, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iget v4, p0, Lcom/aide/ui/views/editor/q;->v5:I

    invoke-interface {v3, v4}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v3

    if-gt v2, v3, :cond_9

    iget v0, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    invoke-interface {v2, v3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v0, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iget v2, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    invoke-interface {v0, v2, v3}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v0

    if-eq v0, v5, :cond_6

    monitor-exit v1

    goto :goto_0

    :cond_6
    iget-char v0, p0, Lcom/aide/ui/views/editor/q;->gn:C

    monitor-exit v1

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/aide/ui/views/editor/q;->u7:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    iget-object v0, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    iget v2, p0, Lcom/aide/ui/views/editor/q;->u7:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/aide/ui/views/editor/q;->u7:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    aget-char v0, v0, v2

    :try_start_5
    monitor-exit v1

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/views/editor/q;->u7:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v0, p0, Lcom/aide/ui/views/editor/q;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/ui/views/editor/q;->v5:I

    iget-object v0, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    iget-object v2, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    monitor-exit v1

    goto/16 :goto_0

    :cond_9
    monitor-exit v1

    goto/16 :goto_0

    :cond_a
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public read([CII)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x60803d2f43c6d35L
    .end annotation

    const-wide v8, -0x50186141349d0dL

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/q;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x50186141349d0dL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_8

    if-ltz p3, :cond_7

    if-ltz p2, :cond_6

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-nez p3, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/q;->read()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    const/4 v0, 0x1

    move p2, v1

    :goto_1
    if-ge v0, p3, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/q;->read()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eq v1, v6, :cond_1

    int-to-char v1, v1

    aput-char v1, p1, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    :goto_2
    sget-boolean v0, Lcom/aide/ui/views/editor/q;->DW:Z

    if-eqz v0, :cond_5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method
