.class public Labcd/Ak;
.super Ljava/lang/Object;


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
.field private FH:Ljava/util/Stack;
    .annotation runtime Labcd/ru;
        field = -0x11274be5ea93ff59L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Labcd/Tl;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/Stack;
    .annotation runtime Labcd/ru;
        field = 0x310dfd395c35a963L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Labcd/Tl;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = -0x20477bceae48fd9fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ak;

    const-wide v1, -0x23a3d00fce087a71L  # -8.195036501974164E136

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x3d16beba5b5ceef0L

    :try_start_6
    sget-boolean v3, Labcd/Ak;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Labcd/Ak;->Hw:Ljava/util/Stack;

    const/4 v3, 0x1

    iput-boolean v3, p0, Labcd/Ak;->v5:Z
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v3

    sget-boolean v4, Labcd/Ak;->DW:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v3
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, -0x243ceb2ae1847428L  # -1.0835221618850164E134

    :try_start_5
    sget-boolean v2, Labcd/Ak;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_19

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Ak;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, -0x2afe02c863fe07fcL

    :try_start_5
    sget-boolean v2, Labcd/Ak;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ak;->Hw:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_15

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Ak;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x18fc25bbd3b7acc8L

    :try_start_5
    sget-boolean v2, Labcd/Ak;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    iget-object v2, p0, Labcd/Ak;->Hw:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Ak;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, 0x25b5de00705b50fL

    :try_start_5
    sget-boolean v2, Labcd/Ak;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Labcd/Ak;->v5:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ak;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()Labcd/Tl;
    .registers 6

    const-wide v0, 0x5776f87257ce9f0L

    :try_start_5
    sget-boolean v2, Labcd/Ak;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_17

    const/4 v0, 0x0

    return-object v0

    :cond_17
    iget-object v2, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Tl;

    iget-object v3, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Tl;

    iget-object v4, v3, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-static {v4}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Labcd/Ak;->Hw:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    return-object v3

    :catchall_35
    move-exception v2

    sget-boolean v3, Labcd/Ak;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    goto :goto_3f

    :goto_3e
    throw v2

    :goto_3f
    goto :goto_3e
.end method

.method public j6(Labcd/Tl;)V
    .registers 6

    const-wide v0, 0x111899f11bb8b7f8L

    :try_start_5
    sget-boolean v2, Labcd/Ak;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Labcd/Ak;->j6(Labcd/Tl;Z)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Ak;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public j6(Labcd/Tl;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ak;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x9501b91c9a39e43L  # -5.021253591354693E263

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-boolean v0, p0, Labcd/Ak;->v5:Z

    if-eqz v0, :cond_41

    iget-object v0, p1, Labcd/Tl;->FH:Ljava/lang/String;

    if-eqz v0, :cond_41

    if-nez p2, :cond_37

    iget-object v0, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Tl;

    invoke-virtual {v0, p1}, Labcd/Tl;->j6(Labcd/Tl;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_3c

    :cond_37
    iget-object v0, p0, Labcd/Ak;->Hw:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :goto_3c
    iget-object v0, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    :cond_41
    return-void

    :catchall_42
    move-exception v0

    sget-boolean v1, Labcd/Ak;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, -0x9501b91c9a39e43L  # -5.021253591354693E263

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, -0xd4d6d32487aa08L

    :try_start_5
    sget-boolean v2, Labcd/Ak;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Labcd/Ak;->v5:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ak;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public v5()Labcd/Tl;
    .registers 5

    const-wide v0, 0x2306b41e23519ecL

    :try_start_5
    sget-boolean v2, Labcd/Ak;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ak;->Hw:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x0

    return-object v0

    :cond_16
    iget-object v2, p0, Labcd/Ak;->Hw:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Tl;

    iget-object v3, v2, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Labcd/Ak;->FH:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-object v2

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Ak;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    goto :goto_36

    :goto_35
    throw v2

    :goto_36
    goto :goto_35
.end method
