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
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/q;

    const-wide v1, -0x27b2d1c4fc18b2a0L  # -2.299547418477236E117

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/o;IIIIZLjava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4aacccdefbaa809L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/views/editor/q;->j6:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3e

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/4 v3, 0x6

    aput-object p7, v0, v3

    const-wide v3, 0xcf898603b0c600L

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3e
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iput p2, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iput p3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    iput p5, p0, Lcom/aide/ui/views/editor/q;->VH:I

    iput p4, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    invoke-interface {p1}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result p2

    sub-int/2addr p2, v2

    if-le p5, p2, :cond_5f

    invoke-interface {p1}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result p2

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/aide/ui/views/editor/q;->VH:I

    invoke-interface {p1, p2}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result p2

    iput p2, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    :cond_5f
    iget p2, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    iget p3, p0, Lcom/aide/ui/views/editor/q;->VH:I

    invoke-interface {p1, p3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result p3

    if-le p2, p3, :cond_71

    iget p2, p0, Lcom/aide/ui/views/editor/q;->VH:I

    invoke-interface {p1, p2}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result p1

    iput p1, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    :cond_71
    if-eqz p6, :cond_76

    const/16 p1, 0x20

    goto :goto_78

    :cond_76
    const/16 p1, 0x9

    :goto_78
    iput-char p1, p0, Lcom/aide/ui/views/editor/q;->gn:C

    iput v1, p0, Lcom/aide/ui/views/editor/q;->u7:I

    invoke-virtual {p7}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1e6a822f986c8dbL
    .end annotation

    const-wide v0, -0x1b532f2408c41291L  # -9.122607788735882E176

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/q;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public read()I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x19bb9ee44d63e2adL
    .end annotation

    const-wide v0, -0x2f7f4afe6c05ba1L  # -1.919534620969771E294

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_c0

    :try_start_f
    iget-object v3, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    invoke-interface {v3}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v3

    iget v4, p0, Lcom/aide/ui/views/editor/q;->v5:I

    iget v5, p0, Lcom/aide/ui/views/editor/q;->VH:I

    const/16 v6, 0x9

    const/4 v7, 0x0

    if-ge v4, v5, :cond_62

    if-ge v4, v3, :cond_62

    iget v3, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget-object v5, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    invoke-interface {v5, v4}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-ge v3, v4, :cond_40

    iget-object v3, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iget v4, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v5, p0, Lcom/aide/ui/views/editor/q;->v5:I

    invoke-interface {v3, v4, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v3

    if-eq v3, v6, :cond_3c

    monitor-exit v2

    return v3

    :cond_3c
    iget-char v3, p0, Lcom/aide/ui/views/editor/q;->gn:C

    monitor-exit v2

    return v3

    :cond_40
    iget v3, p0, Lcom/aide/ui/views/editor/q;->u7:I

    iget-object v4, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_51

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/aide/ui/views/editor/q;->u7:I
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_bd

    aget-char v3, v4, v3

    :try_start_4f
    monitor-exit v2

    return v3

    :cond_51
    iput v7, p0, Lcom/aide/ui/views/editor/q;->u7:I

    iput v7, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-char v3, v4, v3

    monitor-exit v2

    return v3

    :cond_62
    const/4 v8, -0x1

    if-ne v4, v5, :cond_bb

    if-ge v4, v3, :cond_bb

    iget v3, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v5, p0, Lcom/aide/ui/views/editor/q;->Zo:I

    if-gt v3, v5, :cond_b9

    iget-object v5, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    invoke-interface {v5, v4}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-gt v3, v4, :cond_b9

    iget v3, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget-object v4, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iget v5, p0, Lcom/aide/ui/views/editor/q;->v5:I

    invoke-interface {v4, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    if-ge v3, v4, :cond_97

    iget-object v3, p0, Lcom/aide/ui/views/editor/q;->FH:Lcom/aide/ui/views/editor/o;

    iget v4, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v5, p0, Lcom/aide/ui/views/editor/q;->v5:I

    invoke-interface {v3, v4, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v3

    if-eq v3, v6, :cond_93

    monitor-exit v2

    return v3

    :cond_93
    iget-char v3, p0, Lcom/aide/ui/views/editor/q;->gn:C

    monitor-exit v2

    return v3

    :cond_97
    iget v3, p0, Lcom/aide/ui/views/editor/q;->u7:I

    iget-object v4, p0, Lcom/aide/ui/views/editor/q;->tp:[C

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_a8

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/aide/ui/views/editor/q;->u7:I
    :try_end_a4
    .catchall {:try_start_4f .. :try_end_a4} :catchall_bd

    aget-char v3, v4, v3

    :try_start_a6
    monitor-exit v2

    return v3

    :cond_a8
    iput v7, p0, Lcom/aide/ui/views/editor/q;->u7:I

    iput v7, p0, Lcom/aide/ui/views/editor/q;->Hw:I

    iget v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/aide/ui/views/editor/q;->v5:I

    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-char v3, v4, v3

    monitor-exit v2

    return v3

    :cond_b9
    monitor-exit v2

    return v8

    :cond_bb
    monitor-exit v2

    return v8

    :catchall_bd
    move-exception v3

    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_a6 .. :try_end_bf} :catchall_bd

    :try_start_bf
    throw v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c0

    :catchall_c0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/q;->DW:Z

    if-eqz v3, :cond_c8

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_c8
    throw v2
.end method

.method public read([CII)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x60803d2f43c6d35L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/q;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x50186141349d0dL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    if-eqz p1, :cond_5a

    if-ltz p3, :cond_54

    if-ltz p2, :cond_4e

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_48

    if-nez p3, :cond_27

    const/4 p1, 0x0

    return p1

    :cond_27
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/q;->read()I

    move-result v0
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_60

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 v2, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    const/4 p2, 0x1

    :goto_35
    if-ge p2, p3, :cond_47

    :try_start_37
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/q;->read()I

    move-result v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_45

    if-eq v0, v1, :cond_47

    int-to-char v0, v0

    aput-char v0, p1, v2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :catchall_45
    move-exception p2

    goto :goto_63

    :cond_47
    return p2

    :cond_48
    :try_start_48
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_54
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_5a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    move v2, p2

    move-object p2, v0

    :goto_63
    sget-boolean v0, Lcom/aide/ui/views/editor/q;->DW:Z

    if-eqz v0, :cond_7d

    const-wide v3, -0x50186141349d0dL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, p2

    move-wide v2, v3

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw p2

    :goto_7f
    goto :goto_7e
.end method
