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
    .registers 5

    const-wide v0, 0x7ec73c7e3cf488bL

    const-wide v2, 0x2c065cb858cd5a43L  # 1.3086565797300927E-96

    const-class v4, Labcd/ph;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3ce7c548c5c74dcL
    .end annotation

    const-wide v0, 0x6e06b7242e2baa18L  # 1.0263775178992842E222

    :try_start_5
    sget-boolean v2, Labcd/ph;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ph;->Hw:Labcd/qh;

    iget-object v2, v2, Labcd/qh;->QX:Labcd/rh;

    invoke-static {v2}, Labcd/rh;->j6(Labcd/rh;)Labcd/rh$a;

    move-result-object v2

    iget-boolean v3, p0, Labcd/ph;->FH:Z

    iget-object v4, p0, Labcd/ph;->Hw:Labcd/qh;

    iget-object v4, v4, Labcd/qh;->FH:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Labcd/rh$a;->j6(ZLjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/ph;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method
