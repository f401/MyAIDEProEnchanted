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
    .registers 5

    const-wide v0, 0x1bd72709e548b1bdL

    const-wide v2, 0x12ffe802afa77f08L

    const-class v4, Lcom/aide/engine/service/i;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/s;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/engine/service/i;->Hw:Lcom/aide/engine/service/l;

    iput-object p2, p0, Lcom/aide/engine/service/i;->FH:Lcom/aide/engine/service/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/aide/engine/FileHighlightings;

    invoke-direct {p1}, Lcom/aide/engine/FileHighlightings;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;IJ[Lcom/aide/engine/m;[I[I[I[II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xb773547ab23a768L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/i;->j6:Z

    if-eqz v0, :cond_3b

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 p3, 0x2

    aput-object v1, v0, p3

    const/4 p3, 0x3

    aput-object p5, v0, p3

    const/4 p3, 0x4

    aput-object p6, v0, p3

    const/4 p3, 0x5

    aput-object p7, v0, p3

    const/4 p3, 0x6

    aput-object p8, v0, p3

    const/4 p3, 0x7

    aput-object p9, v0, p3

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p10}, Ljava/lang/Integer;-><init>(I)V

    const/16 p4, 0x8

    aput-object p3, v0, p4

    const-wide p3, 0x1968fcaf1813c02bL  # 2.871359837936587E-186

    invoke-static {p3, p4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3b
    :try_start_3b
    iget-object p3, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p1, p3, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p5, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p6, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p7, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p8, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p9, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput p10, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput p2, p1, Lcom/aide/engine/FileHighlightings;->tp:I

    iget-object p1, p0, Lcom/aide/engine/service/i;->FH:Lcom/aide/engine/service/s;

    iget-object p2, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    invoke-interface {p1, p2}, Lcom/aide/engine/service/s;->j6(Lcom/aide/engine/FileHighlightings;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p1

    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :goto_67
    return-void
.end method

.method public j6(Ljava/lang/String;IJ[Lcom/aide/engine/m;[I[I[I[II)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x348313a668b95540L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/i;->j6:Z

    if-eqz v0, :cond_3b

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    new-instance p2, Ljava/lang/Long;

    invoke-direct {p2, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 p3, 0x2

    aput-object p2, v0, p3

    const/4 p2, 0x3

    aput-object p5, v0, p2

    const/4 p2, 0x4

    aput-object p6, v0, p2

    const/4 p2, 0x5

    aput-object p7, v0, p2

    const/4 p2, 0x6

    aput-object p8, v0, p2

    const/4 p2, 0x7

    aput-object p9, v0, p2

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p10}, Ljava/lang/Integer;-><init>(I)V

    const/16 p3, 0x8

    aput-object p2, v0, p3

    const-wide p2, -0x29c071981abe77L  # -6.24930567069733E307

    invoke-static {p2, p3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3b
    :try_start_3b
    iget-object p2, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p1, p2, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p5, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p6, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p7, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p8, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput-object p9, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget-object p1, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    iput p10, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    iget-object p1, p0, Lcom/aide/engine/service/i;->FH:Lcom/aide/engine/service/s;

    iget-object p2, p0, Lcom/aide/engine/service/i;->DW:Lcom/aide/engine/FileHighlightings;

    invoke-interface {p1, p2}, Lcom/aide/engine/service/s;->DW(Lcom/aide/engine/FileHighlightings;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p1

    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :goto_63
    return-void
.end method
