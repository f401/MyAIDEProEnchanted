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
    .registers 6

    const-class v0, Labcd/Bj;

    const-wide v2, 0x201ef30e74f91a7L

    const-wide v4, -0x12368a777317ed01L    # -7.189689569580242E220

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xad865eb861679abL
    .end annotation

    const-wide v4, 0x1637f4918ab3fb05L

    :try_start_0
    sget-boolean v0, Labcd/Bj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1637f4918ab3fb05L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Bj;->v5:Labcd/Kj;

    iget-object v1, p0, Labcd/Bj;->FH:Landroid/app/Activity;

    iget-object v2, p0, Labcd/Bj;->Hw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Labcd/Kj;->j6(Labcd/Kj;Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bj;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
