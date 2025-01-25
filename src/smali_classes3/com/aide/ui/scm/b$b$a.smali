.class Lcom/aide/ui/scm/b$b$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field public FH:Lcom/aide/ui/scm/b$b$a;
    .annotation runtime Labcd/ru;
        field = -0xaf89d4838cc9bf8L
    .end annotation
.end field

.field public final Hw:I
    .annotation runtime Labcd/ru;
        field = -0x243c8aec0ba4990L
    .end annotation
.end field

.field public final VH:I
    .annotation runtime Labcd/ru;
        field = -0x21449790be9bd791L
    .end annotation
.end field

.field public final Zo:I
    .annotation runtime Labcd/ru;
        field = -0x21443200c581e6e4L
    .end annotation
.end field

.field public final v5:I
    .annotation runtime Labcd/ru;
        field = -0x2facebe7c171bd5fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/scm/b$b$a;

    const-wide v1, -0x2496d3f538deaa00L  # -2.2334000301303133E132

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(IIIILcom/aide/ui/scm/b$b$a;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x3b7dec53b209ba68L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b$a;->j6:Z

    if-eqz v0, :cond_22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x16e5f061e37999a7L

    const/4 v3, 0x0

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/ui/scm/b$b$a;->Zo:I

    iput p2, p0, Lcom/aide/ui/scm/b$b$a;->VH:I

    iput p4, p0, Lcom/aide/ui/scm/b$b$a;->Hw:I

    iput p3, p0, Lcom/aide/ui/scm/b$b$a;->v5:I

    iput-object p5, p0, Lcom/aide/ui/scm/b$b$a;->FH:Lcom/aide/ui/scm/b$b$a;
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b$a;->DW:Z

    if-eqz v1, :cond_54

    const-wide v2, 0x16e5f061e37999a7L

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method
