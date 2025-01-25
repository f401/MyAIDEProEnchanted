.class Lcom/aide/ui/views/editor/ua;
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
.field private EQ:[C
    .annotation runtime Labcd/ru;
        field = 0x3fab81cee2e60a33L
    .end annotation
.end field

.field private FH:Lcom/aide/ui/views/editor/o;
    .annotation runtime Labcd/ru;
        field = 0x5b8e6f7cf847c23L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x126fe0afb2c30239L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x24568d3049ff5438L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x2e1f48cf2045e1a8L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x526556fb60c6e8dbL
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x166c41c68ae030L
    .end annotation
.end field

.field private u7:C
    .annotation runtime Labcd/ru;
        field = 0x406f3f3fa1350c1L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x1b42ea0130fc997fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/ua;

    const-wide v1, 0x10dd280165801ecfL  # 1.923070782115833E-227

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/o;IIIIZLjava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x14606efcfa43eabfL
    .end annotation

    sget-boolean v0, Lcom/aide/ui/views/editor/ua;->j6:Z

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

    const-wide v3, -0xb5e6665757ea00L

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3e
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/ua;->FH:Lcom/aide/ui/views/editor/o;

    iput p2, p0, Lcom/aide/ui/views/editor/ua;->Hw:I

    iput p3, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    invoke-interface {p1}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result p2

    if-ge p5, p2, :cond_61

    iput p5, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    invoke-interface {p1, p5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result p2

    if-ge p4, p2, :cond_56

    goto :goto_5e

    :cond_56
    iget p2, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    invoke-interface {p1, p2}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result p2

    add-int/lit8 p4, p2, -0x1

    :goto_5e
    iput p4, p0, Lcom/aide/ui/views/editor/ua;->Zo:I

    goto :goto_6f

    :cond_61
    invoke-interface {p1}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result p2

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    invoke-interface {p1, p2}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result p2

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/aide/ui/views/editor/ua;->Zo:I

    :goto_6f
    iget p2, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    if-ne p3, p2, :cond_77

    iget p1, p0, Lcom/aide/ui/views/editor/ua;->Zo:I

    add-int/2addr p1, v2

    goto :goto_7b

    :cond_77
    invoke-interface {p1, p3}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result p1

    :goto_7b
    iput p1, p0, Lcom/aide/ui/views/editor/ua;->gn:I

    if-eqz p6, :cond_82

    const/16 p1, 0x20

    goto :goto_84

    :cond_82
    const/16 p1, 0x9

    :goto_84
    iput-char p1, p0, Lcom/aide/ui/views/editor/ua;->u7:C

    iput v1, p0, Lcom/aide/ui/views/editor/ua;->tp:I

    invoke-virtual {p7}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/aide/ui/views/editor/ua;->EQ:[C

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x27905d89032eb859L
    .end annotation

    const-wide v0, 0x1c5b0336a35ddbe0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/ua;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public read()I
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xe66d6fdf695e121L
    .end annotation

    const-wide v0, 0x9d85408c63f98b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/ua;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/ua;->Hw:I

    iget v3, p0, Lcom/aide/ui/views/editor/ua;->gn:I

    if-ge v2, v3, :cond_26

    iget-object v3, p0, Lcom/aide/ui/views/editor/ua;->FH:Lcom/aide/ui/views/editor/o;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/aide/ui/views/editor/ua;->Hw:I

    iget v4, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    invoke-interface {v3, v2, v4}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_23

    return v2

    :cond_23
    iget-char v0, p0, Lcom/aide/ui/views/editor/ua;->u7:C

    return v0

    :cond_26
    iget v2, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    iget v3, p0, Lcom/aide/ui/views/editor/ua;->VH:I

    if-ne v2, v3, :cond_2e

    const/4 v0, -0x1

    return v0

    :cond_2e
    iget v4, p0, Lcom/aide/ui/views/editor/ua;->tp:I

    iget-object v5, p0, Lcom/aide/ui/views/editor/ua;->EQ:[C

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_3e

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lcom/aide/ui/views/editor/ua;->tp:I
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_5e

    aget-char v0, v5, v4

    return v0

    :cond_3e
    const/4 v4, 0x0

    :try_start_3f
    iput v4, p0, Lcom/aide/ui/views/editor/ua;->tp:I

    iput v4, p0, Lcom/aide/ui/views/editor/ua;->Hw:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/aide/ui/views/editor/ua;->v5:I

    if-ne v2, v3, :cond_4e

    iget v2, p0, Lcom/aide/ui/views/editor/ua;->Zo:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_4e
    iget-object v3, p0, Lcom/aide/ui/views/editor/ua;->FH:Lcom/aide/ui/views/editor/o;

    invoke-interface {v3, v2}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    :goto_54
    iput v2, p0, Lcom/aide/ui/views/editor/ua;->gn:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/ua;->EQ:[C

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-char v0, v2, v3
    :try_end_5d
    .catchall {:try_start_3f .. :try_end_5d} :catchall_5e

    return v0

    :catchall_5e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/ua;->DW:Z

    if-eqz v3, :cond_66

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_66
    throw v2
.end method

.method public read([CII)I
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xa25e7504468e5b5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ua;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x35475798e76813bcL  # 4.874073954570388E-52

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
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/ua;->read()I

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
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/ua;->read()I

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
    sget-boolean v0, Lcom/aide/ui/views/editor/ua;->DW:Z

    if-eqz v0, :cond_7d

    const-wide v3, 0x35475798e76813bcL  # 4.874073954570388E-52

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
