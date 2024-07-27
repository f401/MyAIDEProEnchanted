.class Labcd/Xh;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/rh$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Yh;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
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
.field final FH:Landroid/app/Activity;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/Yh;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Xh;

    const-wide v2, 0x3eb3a5bfd2959f55L    # 1.1710797685696493E-6

    const-wide v4, 0x3d2595206e2b950L    # 2.94194404928468E-290

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Yh;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/Xh;->v5:Labcd/Yh;

    iput-object p2, p0, Labcd/Xh;->FH:Landroid/app/Activity;

    iput-object p3, p0, Labcd/Xh;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(ZLjava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3d6bccb9b3a0a639L
    .end annotation

    const-wide v2, -0x57726f8dd9a92b7bL

    :try_start_0
    sget-boolean v0, Labcd/Xh;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x57726f8dd9a92b7bL

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Labcd/Xh;->FH:Landroid/app/Activity;

    new-instance v1, Labcd/Yh;

    iget-object v4, p0, Labcd/Xh;->v5:Labcd/Yh;

    invoke-static {v4}, Labcd/Yh;->j6(Labcd/Yh;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Labcd/Xh;->Hw:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, p2, v6}, Labcd/Yh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/Rh;)V

    invoke-static {v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/Xh;->FH:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create keystore file "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Create keystore"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Xh;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
