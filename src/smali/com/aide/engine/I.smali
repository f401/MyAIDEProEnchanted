.class public Lcom/aide/engine/I;
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
.field public FH:[C

.field public Hw:I

.field public v5:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x5ad598e07bcdb700L

    const-class v0, Lcom/aide/engine/I;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0xf01a3857033bad1L    # -1.9307062226835484E236

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf01a3857033bad1L    # -1.9307062226835484E236

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/I;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
