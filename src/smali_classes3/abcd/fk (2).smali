.class Labcd/fk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gk;->run()V
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
.field final FH:Labcd/gk;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xbb50e75b5edbbb3L  # -1.543265553544348E252

    const-wide v2, 0x216e405559cc0a3dL

    const-class v4, Labcd/fk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/gk;)V
    .registers 2

    iput-object p1, p0, Labcd/fk;->FH:Labcd/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x21f4d81f4f7d250L
    .end annotation

    const-wide v0, -0x30279100034fa48L

    :try_start_5
    sget-boolean v2, Labcd/fk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/fk;->FH:Labcd/gk;

    iget-object v2, v2, Labcd/gk;->v5:Labcd/lk;

    invoke-static {v2}, Labcd/lk;->j6(Labcd/lk;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Labcd/fk;->FH:Labcd/gk;

    iget-object v2, v2, Labcd/gk;->FH:Ljava/lang/Runnable;

    :goto_1a
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_23

    :cond_1e
    iget-object v2, p0, Labcd/fk;->FH:Labcd/gk;

    iget-object v2, v2, Labcd/gk;->Hw:Ljava/lang/Runnable;
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_24

    goto :goto_1a

    :goto_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/fk;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v2

    :goto_2e
    goto :goto_2d
.end method
