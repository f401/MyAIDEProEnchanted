.class Lcom/aide/ui/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/AIDEEditor$a;->Ws(I)V
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
.field final FH:I

.field final Hw:Lcom/aide/ui/AIDEEditor$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1cfb6d6a69ea43fL  # -6.81654732287768E299

    const-wide v2, 0x12b32962fe1589b9L

    const-class v4, Lcom/aide/ui/G;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditor$a;I)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/G;->Hw:Lcom/aide/ui/AIDEEditor$a;

    iput p2, p0, Lcom/aide/ui/G;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x183ea8b0c26fdfe0L
    .end annotation

    const-wide v0, 0x320dd318c8cfd1b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/G;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Ek;->j6(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/aide/ui/G;->Hw:Lcom/aide/ui/AIDEEditor$a;

    iget v3, p0, Lcom/aide/ui/G;->FH:I

    invoke-static {v2, v3}, Lcom/aide/ui/AIDEEditor$a;->j6(Lcom/aide/ui/AIDEEditor$a;I)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    const-string v3, "debug-aide"

    invoke-virtual {v2, v3}, Labcd/Zk;->vy(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/G;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method
