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
    .registers 5

    const-wide v0, 0x70047fb510f460L

    const-wide v2, -0x26b22ff2ff845eccL

    const-class v4, Labcd/Ni;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x15ad739ee4e2f194L
    .end annotation

    const-wide v0, -0x36fc906e376adf10L  # -5.417915375920378E43

    :try_start_5
    sget-boolean v2, Labcd/Ni;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ni;->v5:Labcd/Oi$a;

    iget-object v2, v2, Labcd/Oi$a;->v5:Labcd/Oi;

    iget-object v3, p0, Labcd/Ni;->FH:Ljava/lang/String;

    iget-object v4, p0, Labcd/Ni;->Hw:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Labcd/Oi;->j6(Labcd/Oi;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Labcd/Ni;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
