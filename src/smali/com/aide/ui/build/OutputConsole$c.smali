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
            "LSl",
            "<",
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
    .registers 4

    const-wide v2, -0x25d427d8f006e700L    # -2.3560539072003943E126

    const-class v0, Lcom/aide/ui/build/OutputConsole$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/OutputConsole;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xca7f1950b52c8cL
    .end annotation

    const-wide v4, -0xa081517855e2028L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa081517855e2028L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;-><init>()V

    new-instance v0, Labcd/Sl;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Labcd/Sl;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(C)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xa86f1c71853df34L
    .end annotation

    const-wide v4, 0x307857ba6c66f00L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, 0x307857ba6c66f00L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->XL()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private P8()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3421b32e63e5b173L
    .end annotation

    const-wide v2, -0x486aa894f831368bL    # -6.124703501216369E-41

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x486aa894f831368bL    # -6.124703501216369E-41

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, ""

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public EQ(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2ef18d1ba60ce180L
    .end annotation

    const-wide v2, -0x125d1919c690055cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x125d1919c690055cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole$c;->P8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v0, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

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

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public FH(II)C
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x31ad6ceb5cc4999L
    .end annotation

    const-wide v2, -0x4348c7ac69a6909L    # -2.090008333993047E288

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x4348c7ac69a6909L    # -2.090008333993047E288

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-lt p2, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole$c;->P8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v0, p2}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt p1, v4, :cond_3

    monitor-exit v1

    const/16 v0, 0x20

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

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
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public FH(I)Lcom/aide/ui/views/editor/s;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2cda342f48506249L
    .end annotation

    const-wide v4, -0x1d0f3e16be5a4aebL    # -3.9526278115037204E168

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d0f3e16be5a4aebL    # -3.9526278115037204E168

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    :goto_0
    new-instance v1, Lcom/aide/ui/views/editor/s;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/aide/ui/views/editor/s;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    const v0, -0x333334

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
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

    const-wide v2, 0x51410885b93c7551L    # 2.585159649113778E83

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x51410885b93c7551L    # 2.585159649113778E83

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit v1

    const/16 v0, 0x3e8

    return v0

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

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3605b960c52764L
    .end annotation

    const-wide v2, -0xcd4099fdf76c430L    # -6.109715344176067E246

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xcd4099fdf76c430L    # -6.109715344176067E246

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    .registers 9

    :goto_0
    invoke-virtual {p5}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->v5(Lcom/aide/ui/build/OutputConsole;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/aide/ui/build/OutputConsole$c;->DW(C)V

    goto :goto_0
.end method

.method public j6(C)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xc20ee70363b1bc9L
    .end annotation

    const-wide v4, 0x1f1893d09c92edbL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, 0x1f1893d09c92edbL

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/aide/ui/build/OutputConsole$c;->DW(C)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->gn(Lcom/aide/ui/build/OutputConsole;)Lcom/aide/ui/views/editor/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/i;->DW()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I[C)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x11dda5c7e3231d1cL
    .end annotation

    const-wide v2, -0xd2d33728941ec80L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xd2d33728941ec80L

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsole$c;->P8()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    array-length v0, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_3

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aput-char v6, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v0, p1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    goto :goto_0

    :cond_3
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6([BII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x18b9ed5c044ea549L
    .end annotation

    const-wide v8, 0xa4a940d6bddb135L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xa4a940d6bddb135L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/aide/ui/build/OutputConsole$c;->DW(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->lg:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0}, Lcom/aide/ui/build/OutputConsole;->gn(Lcom/aide/ui/build/OutputConsole;)Lcom/aide/ui/views/editor/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/i;->DW()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xccfbed7b56435fL
    .end annotation

    const-wide v2, 0x25e781a42dcf8217L    # 4.340683880790994E-126

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25e781a42dcf8217L    # 4.340683880790994E-126

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x152a1ffdcd683047L
    .end annotation

    const-wide v2, -0x454efd934825506bL    # -5.496056632146575E-26

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x454efd934825506bL    # -5.496056632146575E-26

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x22d5aefdc3410280L
    .end annotation

    const-wide v4, -0x4560308762daaacL    # -4.946537170673797E287

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4560308762daaacL    # -4.946537170673797E287

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v2}, Labcd/Sl;->Hw()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    monitor-exit v1

    return v0

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

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public vy()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x34c3d791c38a4538L
    .end annotation

    const-wide v4, -0x35a25a2d8d3e86a8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$c;->Mr:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35a25a2d8d3e86a8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$c;->a8:Labcd/Sl;

    invoke-virtual {v0}, Labcd/Sl;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->XL()V

    :cond_1
    monitor-exit v1

    return-void

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

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$c;->U2:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
