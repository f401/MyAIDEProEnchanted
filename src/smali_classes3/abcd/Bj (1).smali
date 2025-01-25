.class Labcd/Bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj;->DW(Landroid/app/Activity;Ljava/lang/String;)V
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
.field final FH:Landroid/app/Activity;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x201ef30e74f91a7L

    const-wide v2, -0x12368a777317ed01L  # -7.189689569580242E220

    const-class v4, Labcd/Bj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/Bj;->v5:Labcd/Kj;

    iput-object p2, p0, Labcd/Bj;->FH:Landroid/app/Activity;

    iput-object p3, p0, Labcd/Bj;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xad865eb861679abL
    .end annotation

    const-wide v0, 0x1637f4918ab3fb05L

    :try_start_5
    sget-boolean v2, Labcd/Bj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Bj;->v5:Labcd/Kj;

    iget-object v3, p0, Labcd/Bj;->FH:Landroid/app/Activity;

    iget-object v4, p0, Labcd/Bj;->Hw:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Labcd/Kj;->j6(Labcd/Kj;Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Bj;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
