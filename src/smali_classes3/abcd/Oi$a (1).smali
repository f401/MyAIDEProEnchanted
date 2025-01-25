.class Labcd/Oi$a;
.super Lcom/aide/licensing/g$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final v5:Labcd/Oi;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Oi$a;

    const-wide v1, 0x70047fb510f460L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Oi;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x11126d7e81fdd3dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1f5fb4e4ae968874L

    :try_start_6
    sget-boolean v3, Labcd/Oi$a;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Oi$a;->v5:Labcd/Oi;

    invoke-direct {p0}, Lcom/aide/licensing/g$a;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/Oi$a;->Hw:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Oi;Labcd/Ki;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Oi$a;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x2a43d8f6dc6d8370L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Oi$a;-><init>(Labcd/Oi;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/Oi$a;->Hw:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x2a43d8f6dc6d8370L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x11b17953b273f51L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Oi$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x25951f0169e4fbe3L  # -3.6389779766779757E127

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Oi$a;->v5:Labcd/Oi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "licenseVerified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Oi;->j6(Labcd/Oi;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_53

    iget-object v0, p0, Labcd/Oi$a;->v5:Labcd/Oi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID mismatch - my uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " calling uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Oi;->DW(Labcd/Oi;Ljava/lang/String;)V

    return-void

    :cond_53
    new-instance v0, Labcd/Ni;

    invoke-direct {v0, p0, p1, p2}, Labcd/Ni;-><init>(Labcd/Oi$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_5b
    .catchall {:try_start_0 .. :try_end_5b} :catchall_5c

    return-void

    :catchall_5c
    move-exception v0

    sget-boolean v1, Labcd/Oi$a;->Hw:Z

    if-eqz v1, :cond_6d

    const-wide v2, -0x25951f0169e4fbe3L  # -3.6389779766779757E127

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    throw v0
.end method

.method public XX()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1f2242b6630d28f0L
    .end annotation

    const-wide v0, -0x3f51e8404aa46e70L  # -3851.874430524367

    :try_start_5
    sget-boolean v2, Labcd/Oi$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Oi$a;->v5:Labcd/Oi;

    const-string v3, "licenseNotVerified"

    invoke-static {v2, v3}, Labcd/Oi;->j6(Labcd/Oi;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v2, v3, :cond_44

    iget-object v2, p0, Labcd/Oi$a;->v5:Labcd/Oi;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID mismatch - my uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " calling uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/Oi;->DW(Labcd/Oi;Ljava/lang/String;)V

    return-void

    :cond_44
    new-instance v2, Labcd/Mi;

    invoke-direct {v2, p0}, Labcd/Mi;-><init>(Labcd/Oi$a;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v2

    sget-boolean v3, Labcd/Oi$a;->Hw:Z

    if-eqz v3, :cond_55

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_55
    throw v2
.end method
