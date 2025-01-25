.class Lcom/aide/ui/Ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/SplitView$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1b7def450e608340L

    const-wide v2, -0x39771019ee31d26cL  # -6.322307055077442E31

    const-class v4, Lcom/aide/ui/Ba;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Ba;->FH:Lcom/aide/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x12705569451810b7L
    .end annotation

    const-wide v0, 0x14b6a9ba2a453d73L  # 6.893509165072584E-209

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Ba;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Ba;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ef()V

    if-eqz p1, :cond_1c

    iget-object v2, p0, Lcom/aide/ui/Ba;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->Zo()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Ba;->DW:Z

    if-eqz v3, :cond_2a

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method
