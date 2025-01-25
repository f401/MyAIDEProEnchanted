.class Lcom/aide/ui/browsers/SearchBrowser$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/browsers/SearchBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field public FH:Z
    .annotation runtime Labcd/ru;
        field = -0xb3a051909285bc4L
    .end annotation
.end field

.field public Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xed12bf73974d623L
    .end annotation
.end field

.field final VH:Lcom/aide/ui/browsers/SearchBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public Zo:Labcd/Tl;
    .annotation runtime Labcd/ru;
        field = 0xef85612a2b22408L
    .end annotation
.end field

.field public v5:Lcom/aide/engine/FindResult;
    .annotation runtime Labcd/ru;
        field = -0x90d1f597d1ad35cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/SearchBrowser$b;

    const-wide v1, -0x1d71b7af93bfe2ebL  # -5.580318892325373E166

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/browsers/SearchBrowser;Lcom/aide/engine/FindResult;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x440e13835b9d233dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xe01aac7791fbbd4L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/browsers/SearchBrowser$b;->VH:Lcom/aide/ui/browsers/SearchBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/browsers/SearchBrowser$b;->v5:Lcom/aide/engine/FindResult;

    new-instance v0, Labcd/Tl;

    iget-object v2, p2, Lcom/aide/engine/FindResult;->FH:Ljava/lang/String;

    iget v3, p2, Lcom/aide/engine/FindResult;->Hw:I

    iget v4, p2, Lcom/aide/engine/FindResult;->v5:I

    iget v5, p2, Lcom/aide/engine/FindResult;->Hw:I

    iget v6, p2, Lcom/aide/engine/FindResult;->Zo:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/aide/ui/browsers/SearchBrowser$b;->Zo:Labcd/Tl;
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser$b;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, -0xe01aac7791fbbd4L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public constructor <init>(Lcom/aide/ui/browsers/SearchBrowser;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x14e931744f34879L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x49ba3910423e9bacL  # 1.4970631885616763E47

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/browsers/SearchBrowser$b;->VH:Lcom/aide/ui/browsers/SearchBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/browsers/SearchBrowser$b;->FH:Z

    invoke-static {p2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/browsers/SearchBrowser$b;->Hw:Ljava/lang/String;

    new-instance v0, Labcd/Tl;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/aide/ui/browsers/SearchBrowser$b;->Zo:Labcd/Tl;
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser$b;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x49ba3910423e9bacL  # 1.4970631885616763E47

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method
