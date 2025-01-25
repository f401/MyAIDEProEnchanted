.class Lcom/aide/ui/views/editor/va$g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
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
.field public FH:I
    .annotation runtime Labcd/ru;
        field = -0x2ff8465d6e19a2a9L
    .end annotation
.end field

.field public Hw:Lcom/aide/ui/views/editor/va$j;
    .annotation runtime Labcd/ru;
        field = -0x1e655993c40ce500L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/va$g;

    const-wide v1, -0x12726c69de156cfL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(ILcom/aide/ui/views/editor/va$j;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1e949cd2e8fe107L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$g;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x7389541e0d649dcL  # -6.333979528866258E273

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/ui/views/editor/va$g;->FH:I

    iput-object p2, p0, Lcom/aide/ui/views/editor/va$g;->Hw:Lcom/aide/ui/views/editor/va$j;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$g;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x7389541e0d649dcL  # -6.333979528866258E273

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method
