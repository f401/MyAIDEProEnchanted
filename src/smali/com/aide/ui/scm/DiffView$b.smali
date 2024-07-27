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
    .registers 4

    const-wide v2, 0x4c6587504f5c2f8L

    const-class v0, Lcom/aide/ui/scm/DiffView$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2d9bc6faa5788f0L
    .end annotation

    const-wide v4, -0x2652db6432c7cf68L    # -9.632577824096943E123

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2652db6432c7cf68L    # -9.632577824096943E123

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/DiffView$b;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x274339ed1a9030b8L
    .end annotation

    const-wide v2, -0x4ad9eac69fdb98dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4ad9eac69fdb98dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1d962476e9918f3dL
    .end annotation

    const-wide v2, 0x13be643fc5bc7ae4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13be643fc5bc7ae4L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/scm/DiffView$b;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/scm/DiffView$b;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public read()I
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1cce9816dcbc0ccL
    .end annotation

    const-wide v4, 0x107d6d2dbd06f19fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x107d6d2dbd06f19fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    iget v1, p0, Lcom/aide/ui/scm/DiffView$b;->Hw:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/DiffView$b;->FH:Ljava/lang/String;

    iget v1, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    iget v1, p0, Lcom/aide/ui/scm/DiffView$b;->Hw:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$b;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public read([CII)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xec0a594b7eed2b8L
    .end annotation

    const-wide v8, 0x39e500b030732cbfL    # 8.284099905341748E-30

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x39e500b030732cbfL    # 8.284099905341748E-30

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ltz p2, :cond_5

    array-length v0, p1

    if-gt p2, v0, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5

    if-ltz v0, :cond_5

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    iget v1, p0, Lcom/aide/ui/scm/DiffView$b;->Hw:I

    if-le v0, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    iget v1, p0, Lcom/aide/ui/scm/DiffView$b;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    aput-char v0, p1, p2

    :try_start_1
    iget v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/aide/ui/scm/DiffView$b;->Hw:I

    iget v1, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/scm/DiffView$b;->FH:Ljava/lang/String;

    iget v2, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    iget v3, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/aide/ui/scm/DiffView$b;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/DiffView$b;->DW:Z

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

    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method
