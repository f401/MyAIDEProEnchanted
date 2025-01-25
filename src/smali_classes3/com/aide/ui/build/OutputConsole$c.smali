.class Lcom/aide/ui/build/OutputConsole$c;
.super Lcom/aide/ui/views/editor/g;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/OutputConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# static fields
.field private static Mr:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static U2:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private a8:Labcd/Sl;
    .annotation runtime Labcd/ru;
        field = -0x14e1b0c843f016a9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSl<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field final lg:Lcom/aide/ui/build/OutputConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/OutputConsole$c;

    const-wide v1, -0x25d427d8f006e700L  # -2.3560539072003943E126

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/OutputConsole;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xca7f1950b52c8cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xa081517855e2028L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;-><init>()V

    new-instance v3, Labcd/Sl;

    const/16 v4, 0x7d0

    invoke-direct {v3, v4}, Labcd/Sl;-><init>(I)V

    iput-object v3, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v4, :cond_2c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v3
.end method

.method private DW(C)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa86f1c71853df34L
    .end annotation

    const-wide v0, 0x307857ba6c66f00L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v2, 0xa

    if-ne p1, v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1c
    invoke-virtual {v2, v3}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_20
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v2}, Labcd/Sl;->FH()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_3b

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1c

    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->XL()V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_4c

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v2

    :goto_4e
    goto :goto_4d
.end method

.method private P8()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3421b32e63e5b173L
    .end annotation

    const-wide v0, -0x486aa894f831368bL  # -6.124703501216369E-41

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, ""

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method


# virtual methods
.method public EQ(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2ef18d1ba60ce180L
    .end annotation

    const-wide v0, -0x125d1919c690055cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_35

    if-ltz p1, :cond_28

    :try_start_11
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v3}, Labcd/Sl;->Hw()I

    move-result v3

    if-lt p1, v3, :cond_1a

    goto :goto_28

    :cond_1a
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v3, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    monitor-exit v2

    return v3

    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole$c;->P8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    monitor-exit v2

    return v3

    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    :try_start_34
    throw v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method public FH(II)C
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x31ad6ceb5cc4999L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x4348c7ac69a6909L  # -2.090008333993047E288

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_49

    if-ltz p2, :cond_3c

    :try_start_1b
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v1}, Labcd/Sl;->Hw()I

    move-result v1

    if-lt p2, v1, :cond_24

    goto :goto_3c

    :cond_24
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v1, p2}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt p1, v2, :cond_36

    monitor-exit v0

    const/16 p1, 0x20

    return p1

    :cond_36
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    monitor-exit v0

    return v1

    :cond_3c
    :goto_3c
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole$c;->P8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    monitor-exit v0

    return v1

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_46

    :try_start_48
    throw v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_62

    const-wide v2, -0x4348c7ac69a6909L  # -2.090008333993047E288

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v0
.end method

.method public FH(I)Lcom/aide/ui/views/editor/s;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2cda342f48506249L
    .end annotation

    const-wide v0, -0x1d0f3e16be5a4aebL  # -3.9526278115037204E168

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v2

    if-eqz v2, :cond_17

    const/high16 v2, -0x1000000

    goto :goto_1a

    :cond_17
    const v2, -0x333334

    :goto_1a
    new-instance v3, Lcom/aide/ui/views/editor/s;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/aide/ui/views/editor/s;-><init>(II)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v3

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public J1()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public J8()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4c913f787b5bfc63L
    .end annotation

    const-wide v0, 0x51410885b93c7551L  # 2.585159649113778E83

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :try_start_f
    monitor-exit v2

    const/16 v0, 0x3e8

    return v0

    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public VH(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3605b960c52764L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xcd4099fdf76c430L  # -6.109715344176067E246

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_31

    const-wide v2, -0xcd4099fdf76c430L  # -6.109715344176067E246

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    .registers 7

    :goto_0
    invoke-virtual {p5}, Ljava/io/Reader;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_e

    iget-object p1, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-static {p1}, Lcom/aide/ui/build/OutputConsole;->v5(Lcom/aide/ui/build/OutputConsole;)V

    const/4 p1, 0x0

    return-object p1

    :cond_e
    int-to-char p1, p1

    invoke-direct {p0, p1}, Lcom/aide/ui/build/OutputConsole$c;->DW(C)V

    goto :goto_0
.end method

.method public j6(C)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xc20ee70363b1bc9L
    .end annotation

    const-wide v0, 0x1f1893d09c92edbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_25

    :try_start_14
    invoke-direct {p0, p1}, Lcom/aide/ui/build/OutputConsole$c;->DW(C)V

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_22

    :try_start_18
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v2}, Lcom/aide/ui/build/OutputConsole;->gn(Lcom/aide/ui/build/OutputConsole;)Lcom/aide/ui/views/editor/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/i;->DW()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_25

    return-void

    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public j6(I[C)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x11dda5c7e3231d1cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xd2d33728941ec80L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_46

    if-ltz p1, :cond_28

    :try_start_16
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v1}, Labcd/Sl;->Hw()I

    move-result v1

    if-lt p1, v1, :cond_1f

    goto :goto_28

    :cond_1f
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v1, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_2c

    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole$c;->P8()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    array-length v2, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v2, :cond_41

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_43

    :try_start_45
    throw v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_5b

    const-wide v2, -0xd2d33728941ec80L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    goto :goto_5d

    :goto_5c
    throw v0

    :goto_5d
    goto :goto_5c
.end method

.method public j6([BII)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x18b9ed5c044ea549L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xa4a940d6bddb135L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_3f

    :try_start_1b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    const/4 v2, 0x0

    :goto_21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_31

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/aide/ui/build/OutputConsole$c;->DW(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_3c

    :try_start_32
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->gn(Lcom/aide/ui/build/OutputConsole;)Lcom/aide/ui/views/editor/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/i;->DW()V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3f

    return-void

    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_59

    const-wide v2, 0xa4a940d6bddb135L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method

.method public j6(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xccfbed7b56435fL
    .end annotation

    const-wide v0, 0x25e781a42dcf8217L  # 4.340683880790994E-126

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public tp()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x152a1ffdcd683047L
    .end annotation

    const-wide v0, -0x454efd934825506bL  # -5.496056632146575E-26

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public v5()I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x22d5aefdc3410280L
    .end annotation

    const-wide v0, -0x4560308762daaacL  # -4.946537170673797E287

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1f

    :try_start_f
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v3}, Labcd/Sl;->Hw()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    monitor-exit v2

    return v3

    :catchall_1c
    move-exception v3

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public vy()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x34c3d791c38a4538L
    .end annotation

    const-wide v0, -0x35a25a2d8d3e86a8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2e

    :try_start_f
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v3}, Labcd/Sl;->FH()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_29

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->XL()V

    :cond_29
    monitor-exit v2

    return-void

    :catchall_2b
    move-exception v3

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method
