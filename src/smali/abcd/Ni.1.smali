.class Labcd/Ni;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Oi$a;->DW(Ljava/lang/String;Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/Oi$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Ni;

    const-wide v2, 0x70047fb510f460L

    const-wide v4, -0x26b22ff2ff845eccL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Oi$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/Ni;->v5:Labcd/Oi$a;

    iput-object p2, p0, Labcd/Ni;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/Ni;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x15ad739ee4e2f194L
    .end annotation

    const-wide v4, -0x36fc906e376adf10L    # -5.417915375920378E43

    :try_start_0
    sget-boolean v0, Labcd/Ni;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x36fc906e376adf10L    # -5.417915375920378E43

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ni;->v5:Labcd/Oi$a;

    iget-object v0, v0, Labcd/Oi$a;->v5:Labcd/Oi;

    iget-object v1, p0, Labcd/Ni;->FH:Ljava/lang/String;

    iget-object v2, p0, Labcd/Ni;->Hw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Labcd/Oi;->j6(Labcd/Oi;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ni;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
