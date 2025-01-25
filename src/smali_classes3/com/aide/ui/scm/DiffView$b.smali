.class Lcom/aide/ui/scm/DiffView$b;
.super Ljava/io/Reader;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/DiffView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field private FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1b3171795f72d910L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x1127b672b85096e3L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x27e353cd57ba0a0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/scm/DiffView$b;

    const-wide v1, 0x4c6587504f5c2f8L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2d9bc6faa5788f0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2652db6432c7cf68L  # -9.632577824096943E123

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/DiffView$b;->j6(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/DiffView$b;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x274339ed1a9030b8L
    .end annotation

    const-wide v0, -0x4ad9eac69fdb98dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView$b;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1d962476e9918f3dL
    .end annotation

    const-wide v0, 0x13be643fc5bc7ae4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/scm/DiffView$b;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/aide/ui/scm/DiffView$b;->Hw:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView$b;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public read()I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1cce9816dcbc0ccL
    .end annotation

    const-wide v0, 0x107d6d2dbd06f19fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    iget v3, p0, Lcom/aide/ui/scm/DiffView$b;->Hw:I

    if-ge v2, v3, :cond_1d

    iget-object v3, p0, Lcom/aide/ui/scm/DiffView$b;->FH:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_1d
    if-ne v2, v3, :cond_26

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_28

    const/16 v0, 0xa

    return v0

    :cond_26
    const/4 v0, -0x1

    return v0

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/DiffView$b;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public read([CII)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xec0a594b7eed2b8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x39e500b030732cbfL  # 8.284099905341748E-30

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    if-ltz p2, :cond_51

    array-length v0, p1

    if-gt p2, v0, :cond_51

    if-ltz p3, :cond_51

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_51

    if-ltz v0, :cond_51

    if-nez p3, :cond_2a

    const/4 p1, 0x0

    return p1

    :cond_2a
    iget v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    iget v1, p0, Lcom/aide/ui/scm/DiffView$b;->Hw:I
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_57

    if-le v0, v1, :cond_32

    const/4 p1, -0x1

    return p1

    :cond_32
    if-ne v0, v1, :cond_3d

    const/16 v1, 0xa

    aput-char v1, p1, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :try_start_3a
    iput v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    return v1

    :cond_3d
    sub-int/2addr v1, v0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$b;->FH:Ljava/lang/String;

    iget v2, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    add-int v3, v2, v0

    invoke-virtual {v1, v2, v3, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    return v0

    :cond_51
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_57
    .catchall {:try_start_3a .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$b;->DW:Z

    if-eqz v1, :cond_71

    const-wide v2, 0x39e500b030732cbfL  # 8.284099905341748E-30

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_71
    throw v0
.end method
