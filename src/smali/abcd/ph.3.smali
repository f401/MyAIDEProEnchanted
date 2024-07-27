.class Labcd/ph;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/qh;->run()V
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
.field final FH:Z

.field final Hw:Labcd/qh;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/ph;

    const-wide v2, 0x7ec73c7e3cf488bL

    const-wide v4, 0x2c065cb858cd5a43L    # 1.3086565797300927E-96

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/qh;Z)V
    .registers 3

    iput-object p1, p0, Labcd/ph;->Hw:Labcd/qh;

    iput-boolean p2, p0, Labcd/ph;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x3ce7c548c5c74dcL
    .end annotation

    const-wide v4, 0x6e06b7242e2baa18L    # 1.0263775178992842E222

    :try_start_0
    sget-boolean v0, Labcd/ph;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6e06b7242e2baa18L    # 1.0263775178992842E222

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/ph;->Hw:Labcd/qh;

    iget-object v0, v0, Labcd/qh;->QX:Labcd/rh;

    invoke-static {v0}, Labcd/rh;->j6(Labcd/rh;)Labcd/rh$a;

    move-result-object v0

    iget-boolean v1, p0, Labcd/ph;->FH:Z

    iget-object v2, p0, Labcd/ph;->Hw:Labcd/qh;

    iget-object v2, v2, Labcd/qh;->FH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Labcd/rh$a;->j6(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ph;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
