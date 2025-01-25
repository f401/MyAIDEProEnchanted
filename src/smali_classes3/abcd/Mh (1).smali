.class Labcd/Mh;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Ji$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Oh;->Zo(Landroid/app/AlertDialog;)V
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
.field final FH:Landroid/app/AlertDialog;

.field final Hw:Labcd/Oh;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x23b40421389c322fL  # -4.0679517960582325E136

    const-wide v2, 0x1e70cc77bdd01f88L  # 4.667432761772731E-162

    const-class v4, Labcd/Mh;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Oh;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Labcd/Mh;->Hw:Labcd/Oh;

    iput-object p2, p0, Labcd/Mh;->FH:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/Jw;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xc3a1b25d835a100L
    .end annotation

    const-wide v0, -0x1705144c671d53c8L  # -5.030876653365539E197

    :try_start_5
    sget-boolean v2, Labcd/Mh;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Mh;->FH:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_35

    if-nez p1, :cond_24

    const-string v4, ""

    goto :goto_28

    :cond_24
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Dropbox"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Labcd/Mh;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x398d4ca405a07815L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x925692a89c324dfL

    :try_start_5
    sget-boolean v2, Labcd/Mh;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Mh;->Hw:Labcd/Oh;

    iget-object v3, p0, Labcd/Mh;->FH:Landroid/app/AlertDialog;

    invoke-static {v2, v3, p1}, Labcd/Oh;->j6(Labcd/Oh;Landroid/app/AlertDialog;Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Mh;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method
