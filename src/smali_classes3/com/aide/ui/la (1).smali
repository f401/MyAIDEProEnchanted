.class Lcom/aide/ui/la;
.super Ljava/lang/Thread;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/MainActivity;->kQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1b7def450e608340L

    const-wide v2, 0xf9cedc7a7c3bc4fL  # 1.819676594322307E-233

    const-class v4, Lcom/aide/ui/la;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/la;->FH:Lcom/aide/ui/MainActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xbe7a5a442f5240L
    .end annotation

    const-wide v0, -0x45806e0210d6df90L  # -6.375567470324107E-27

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/build/android/Q;->DW()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/la;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method
