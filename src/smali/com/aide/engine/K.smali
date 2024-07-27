.class public Lcom/aide/engine/K;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/engine/K$a;
    }
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
.field public EQ:Z

.field public FH:Z

.field public Hw:Z

.field public J0:Z

.field public J8:Z

.field public Mr:Ljava/lang/String;

.field public QX:I

.field public U2:Z

.field public VH:Z

.field public Ws:I

.field public XL:I

.field public Zo:Z

.field public a8:Ljava/util/List;

.field public aM:I

.field public gn:Z

.field public j3:Z

.field public tp:Z

.field public u7:Z

.field public v5:Z

.field public we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x13dbc57e65053f50L    # -8.512389610231587E212

    const-class v0, Lcom/aide/engine/K;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x238b9ce53bcde4d1L    # -2.370904561000311E137

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/K;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x238b9ce53bcde4d1L    # -2.370904561000311E137

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/K;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
