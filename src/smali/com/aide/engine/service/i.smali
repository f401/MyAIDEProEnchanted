.class Lcom/aide/engine/service/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/n;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/l;->j6(Lcom/aide/engine/service/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private DW:Lcom/aide/engine/FileHighlightings;
    .annotation runtime Labcd/ru;
        field = 0x285e347b05066400L
    .end annotation
.end field

.field final FH:Lcom/aide/engine/service/s;

.field final Hw:Lcom/aide/engine/service/l;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/engine/service/i;

    const-wide v2, 0x1bd72709e548b1bdL

    const-wide v4, 0x12ffe802afa77f08L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/s;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/engine/service/i;->Hw:Lcom/aide/engine/service/l;

    iput-object p2, p0, Lcom/aide/engine/service/i;->FH:Lcom/aide/engine/service/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aide/engine/FileHighlightings;

    invoke-direct {v0}, Lcom/aide/engine/FileHighlightings;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;IJ[Lcom/aide/engine/m;[I[I[I[II)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xb773547ab23a768L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1968fcaf1813c02bL    # 2.871359837936587E-186

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p3, p4}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p1, v0, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p5, v0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p6, v0, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p7, v0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p8, v0, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p9, v0, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput p10, v0, Lcom/aide/engine/FileHighlightings;->u7:I

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput p2, v0, Lcom/aide/engine/FileHighlightings;->tp:I

    iget-object v0, p0, Lcom/aide/engine/service/i;->FH:Lcom/aide/engine/service/s;

    iget-object v1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    invoke-interface {v0, v1}, Lcom/aide/engine/service/s;->j6(Lcom/aide/engine/FileHighlightings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;IJ[Lcom/aide/engine/m;[I[I[I[II)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x348313a668b95540L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29c071981abe77L    # -6.24930567069733E307

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p3, p4}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p1, v0, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p5, v0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p6, v0, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p7, v0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p8, v0, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p9, v0, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget-object v0, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput p10, v0, Lcom/aide/engine/FileHighlightings;->u7:I

    iget-object v0, p0, Lcom/aide/engine/service/i;->FH:Lcom/aide/engine/service/s;

    iget-object v1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    invoke-interface {v0, v1}, Lcom/aide/engine/service/s;->DW(Lcom/aide/engine/FileHighlightings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
